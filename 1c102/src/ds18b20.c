#include "ls1x.h"
#include "Config.h"
#include "oled96.h"
#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"
#include "ds18b20.h"




//复位DS18B20
void DS18B20_Rst(void)	   
{                 
    gpio_write_pin(15,0); 	//拉低DQ
    delay_us(750);    	//拉低750us
    gpio_write_pin(15,1); 	//DQ=1 
	delay_us(15);     	//15US
}
//等待DS18B20的回应
//返回1:未检测到DS18B20的存在
//返回0:存在
uint8_t DS18B20_Check(void) 	   
{   
	uint8_t retry=0; 
    while (gpio_get_pin(15)&&retry<100)
	{
		retry++;
		delay_us(1);
	};	 
	if(retry>=100)return 1;
	else retry=0;
    while (!gpio_get_pin(15)&&retry<200)
	{
		retry++;
		delay_us(1);
	};
	if(retry>=200)return 1;	    
	return 0;
}
//从DS18B20读取一个位
//返回值：1/0
uint8_t DS18B20_Read_Bit(void) 	 
{
    uint8_t data;
    gpio_write_pin(15,0);
     delay_us(2);
    gpio_write_pin(15,1);
	if(gpio_get_pin(15)==1)data=1;
    else data=0;	 
    delay_us(39);           
    return data;
}
//从DS18B20读取一个字节
//返回值：读到的数据
uint8_t DS18B20_Read_Byte(void)     
{        
    uint8_t i,j,dat;
    dat=0;
	for (i=1;i<=8;i++) 
	{
        j=DS18B20_Read_Bit();
        dat=(j<<7)|(dat>>1);
    }						    
    return dat;
   
}
//写一个字节到DS18B20
//dat：要写入的字节
void DS18B20_Write_Byte(uint8_t dat)     
 {             
    uint8_t j;
    uint8_t testb;
    for (j=1;j<=8;j++) 
	{
        testb=dat&0x01;
        dat=dat>>1;
        if (testb) 
        {
             gpio_write_pin(15,0);	// Write 1
               delay_us(2);                            
            gpio_write_pin(15,1);
            delay_us(60);             
        }
        else 
        {
             gpio_write_pin(15,0);	// Write 0
             delay_us(60);             
            gpio_write_pin(15,1);
              delay_us(2);                          
        }
    }
}
//开始温度转换
void DS18B20_Start(void) 
{   						               
    DS18B20_Rst();	   
	DS18B20_Check(); 
    DS18B20_Write_Byte(0xCC);	// skip rom
    DS18B20_Write_Byte(0x44);	// convert
} 

//初始化DS18B20的IO口 DQ 同时检测DS的存在
//返回1:不存在
//返回0:存在    	 
uint8_t DS18B20_Init(void)
{
    gpio_write_pin(15,1);
	DS18B20_Rst();
	return DS18B20_Check();
}  
//从ds18b20得到温度值
//精度：0.1C
//返回值：温度值 （-550~1250） 
int DS18B20_Get_Temp(void)
{
    uint16_t temp;
    uint8_t TL,TH;
	int tem;
    DS18B20_Start ();  			// ds1820 start convert
    DS18B20_Rst();	
    DS18B20_Check();
    DS18B20_Write_Byte(0xCC);	// skip rom
    DS18B20_Write_Byte(0xBE);	// convert	    
    TL=DS18B20_Read_Byte(); 	// LSB  
    TH=DS18B20_Read_Byte(); 	// MSB  
	temp=(TH<<8)|TL;
	if((temp&0xf800)==0xf800)
	{
		temp=(~temp)+1;
		tem=(temp*(-625));
	}
	else
	{
		tem=temp*625;	
	}
	return tem;
    // if(TH>7)
    // {
    //     TH=~TH;
    //     TL=~TL; 
    //     temp=0;					//温度为负  
    // }else temp=1;				//温度为正	  	  
    // tem=TH; 					//获得高八位
    // tem<<=8;    
    // tem+=TL;					//获得底八位
    // tem=tem*625/1000;		//转换     
	// if(temp)return tem; 		//返回温度值
	// else return -tem;    
}


