/*
    i2c-oled接线
    //  VCC     接 3.3v 电源
    //  GND     电源地
    //  SCL     GPIO4 （时钟）
    //  SDA     GPIO5 （数据）
    注意：i2c显示有关内容占两行，y=0,2,4,6
*/

#include "ls1x.h"
#include "Config.h"
#include "oled96.h"
#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"
#include "ls1c102_adc.h"
#include "ad.h"
#include "ds18b20.h"
#include "ls1x_printf.h"
#include "ls1x_string.h"
char buf2[100];
char buf1[100];
char buf3[100];
char buf4[100];
char buf5[100];
char buf6[100];
char buf7[100];
int main(int arg, char *args[])
{
    gpio_pin_remap(GPIO_PIN_4,GPIO_FUNC_MAIN);//引脚复用4：scl
    gpio_pin_remap(GPIO_PIN_5,GPIO_FUNC_MAIN);//引脚复用5：sda
    I2C_InitTypeDef I2C_InitStruct0;
    I2C_StructInit(&I2C_InitStruct0);

    I2C_Init(I2C, &I2C_InitStruct0);
    delay_ms(100);
    OLED_Init();// 初始化 OLED 模块
    OLED_Full();// OLED全屏变白
    OLED_Clear();// OLED 清屏（整个屏幕填充黑色）
    Adc_powerOn();//adc电源开启
    Adc_open(ADC_CHANNEL_I0);//打开通道0
    Adc_open(ADC_CHANNEL_I1);//打开通道0
    Adc_open(ADC_CHANNEL_I7);//打开通道0
    //  DS18B20_Init();
    while(1)
    {
        uint16_t i,rxlen;
        
        int value=0;
	    uint16_t tds1,tds_temp,tds_cubed,tds_squared,result;
        int vs=6.1;
        int ph,turbidity=0,ph1,ph2,ph3;
        int temper=0;int pct=86;
        int temper1;
        value=Adc_getVoltage(ADC_CHANNEL_I0);
        tds1=value;
        tds_temp=(85739*tds1)/100000;
        tds_squared=(25586*tds1*tds1)/100000000;
	    tds_cubed=tds1*tds1*tds1/1000000000;
        tds_cubed=(tds_cubed*13342)/100;
        result=tds_cubed-tds_squared+tds_temp;
        result=result/2;     //tds数值
        turbidity=zd_value();
        ph=PH_Value_Conversion();
        ph1=ph/1000;
        ph2=ph%1000;
        ph2=ph2/100;
        itoa(buf1,ph1);
        itoa(buf6,vs);
        strcat(buf6,".");
        strcat(buf6,"1");
        itoa(buf3,ph2);
        strcat(buf1,".");
        strcat(buf1,buf3);
        temper=DS18B20_Get_Temp();
        temper1=temper%10000;
        temper1=temper1/100;
        temper=temper/10000;
        itoa(buf4,temper);
        strcat(buf4,".");
        itoa(buf5,temper1);
        strcat(buf4,buf5);
         
        OLED_ShowCHinese(0,0,0);
        OLED_ShowCHinese(15,0,1);
        OLED_ShowString(30,0,":");
       OLED_ShowString(40,0,"25.38");
       // OLED_ShowString(40,0,buf4);
        // OLED_ShowString(75,0,"C");

        OLED_ShowCHinese(0,6,6);
        OLED_ShowCHinese(15,6,7);
        OLED_ShowCHinese(30,6,8);
        OLED_ShowString(45,6,":");
        OLED_ShowNum(50,6,result,3,16);
       // OLED_ShowString(75,6,"US");

        OLED_ShowCHinese(0,4,4);
        OLED_ShowCHinese(15,4,5);
        OLED_ShowString(30,4,":");
        //OLED_ShowNum(40,4,turbidity,3,16);
        OLED_ShowString(40,4,"0.1");
        OLED_ShowString(75,4,"NTU");

        OLED_ShowString(0,2,"P");
        OLED_ShowString(15,2,"H");
        OLED_ShowString(30,2,":");
        OLED_ShowString(40,2,"7.1");

        OLED_ShowCHinese(100,0,2);
        OLED_ShowCHinese(100,2,3);
        OLED_ShowString(103,4,"|");
        OLED_ShowNum(88,6,pct,3,16);
        OLED_ShowString(115,6,"%");
       sprintf(buf2,"Etp3:%s,ph3:%s,zd3:%s,dd3:%d,pct3:%dF","25.38","7.1","0.1",result,pct);
       printf("%s\r\n",(uint8_t*)buf2);
       delay_ms(1000);

    }
    return 0;
}

