#include "oled96.h"
#include "oled_font.h"
#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x.h"
#include "ls1x_gpio.h"
#include "ls1x_wdg.h"

//  VCC     接 3.3v 电源
//  GND     电源地
//  SCL     GPIO4 （时钟）
//  SDA     GPIO5 （数据）

// ==========================================================================
// OLED的显存存放格式如下
// [0]0 1 2 3 ... 127
// [1]0 1 2 3 ... 127
// [2]0 1 2 3 ... 127
// [3]0 1 2 3 ... 127
// [4]0 1 2 3 ... 127
// [5]0 1 2 3 ... 127
// [6]0 1 2 3 ... 127
// [7]0 1 2 3 ... 127

/*
    向 OLED 写入一个字节的数据0xFF，得到纵向排列的8个亮点。
    向 OLED 写入一个字节的数据0xF0，得到上面4位低的暗点，下面4位高的亮点。
    说明 OLED 显示是纵向排列的，上低下高。

    使用硬件 I2C 发送一个字节，默认是先发送高位，再发送低位。
    OLED 接收一个字节后按照“列行式”显示。“列行式”即从左到右，从上到下，每个字节纵向8位，低位在上。
    比如接收到0xF0 0x0F，那么对应的 OLED 显示为
    0 1
    0 1
    0 1
    0 1
    1 0
    1 0
    1 0
    1 0
*/

/*

*/
void I2C_delay(void)
{
    for(volatile int j = 200; j; j--){
        ;
    }
}

// ==========================================================================
//向I2C设备发送命令
void Write_IIC_Command(uint8_t IIC_Command)
{
    I2C_GenerateSTART(I2C,ENABLE);  // 函数产生起始信号，表示开始传输数据。

    I2C_SendData(I2C,OLED_I2C_ADR); // 发送I2C设备的地址，表示要发送数据给该设备
    I2C_wait(I2C);                 //函数等待操作完成

    I2C_SendData(I2C,0x00);         // 发送命令类型，一般是0x00表示写入命令。
    I2C_wait(I2C);
    
    I2C_SendData(I2C,IIC_Command);  //发送具体的命令值。
    I2C_wait(I2C);
    
    I2C_GenerateSTOP(I2C,ENABLE);  //产生停止信号，表示传输结束
}


// ==========================================================================
//I2C设备发送数据
void Write_IIC_Data(uint8_t IIC_Data)
{
    I2C_GenerateSTART(I2C,ENABLE);  //产生起始信号，表示开始传输数据
    
    I2C_SendData(I2C,OLED_I2C_ADR); // 发送I2C设备的地址，表示要发送数据给该设备
    I2C_wait(I2C);                  //函数等待操作完成
    
    I2C_SendData(I2C,0x40);
    I2C_wait(I2C);
    
    I2C_SendData(I2C,IIC_Data);
    I2C_wait(I2C);
    
    I2C_GenerateSTOP(I2C,ENABLE);
    I2C_wait(I2C);
}

// ==========================================================================
//向OLED显示屏写入字节数据
//参数dat表示要写入的字节数据
void OLED_WR_Byte(uint8_t dat, uint8_t cmd)
{
    if(cmd)
    {
        Write_IIC_Data(dat);   //cmd为1，即写入数据类型，调用Write_IIC_Data函数，
    }
    else
    {
        Write_IIC_Command(dat); //cmd为0，即写入命令类型，调用Write_IIC_Command函数
    }
}

// ==========================================================================
// 初始化液晶模块
void OLED_Init(void)
{
    OLED_WR_Byte(0xAE, OLED_CMD);    // --turn off oled panel
    delay_ms(10);
    OLED_WR_Byte(0x00, OLED_CMD);    // --set low column address
    delay_ms(10);
    OLED_WR_Byte(0x10, OLED_CMD);    // ---set high column address
    delay_ms(10);
    OLED_WR_Byte(0x40, OLED_CMD);    // --set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
    delay_ms(10);
    OLED_WR_Byte(0x81, OLED_CMD);    // --set contrast control register
    delay_ms(10);
    OLED_WR_Byte(0xCF, OLED_CMD);    // Set SEG Output Current Brightness
    delay_ms(10);
    OLED_WR_Byte(0xA1, OLED_CMD);    // --Set SEG/Column Mapping     0xa0左右反置 0xa1正常
    delay_ms(10);
    OLED_WR_Byte(0xC8, OLED_CMD);    // Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
    delay_ms(10);
    OLED_WR_Byte(0xA6, OLED_CMD);    // --set normal display
    delay_ms(10);
    OLED_WR_Byte(0xA8, OLED_CMD);    // --set multiplex ratio(1 to 64)
    delay_ms(10);
    OLED_WR_Byte(0x3f, OLED_CMD);    // --1/64 duty
    delay_ms(10);
    OLED_WR_Byte(0xD3, OLED_CMD);    // -set display offset    Shift Mapping RAM Counter (0x00~0x3F)
    delay_ms(10);
    OLED_WR_Byte(0x00, OLED_CMD);    // -not offset
    delay_ms(10);
    OLED_WR_Byte(0xd5, OLED_CMD);    // --set display clock divide ratio/oscillator frequency
    delay_ms(10);
    OLED_WR_Byte(0x80, OLED_CMD);    // --set divide ratio, Set Clock as 100 Frames/Sec
    delay_ms(10);
    OLED_WR_Byte(0xD9, OLED_CMD);    // --set pre-charge period
    delay_ms(10);
    OLED_WR_Byte(0xF1, OLED_CMD);    // Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
    delay_ms(10);
    OLED_WR_Byte(0xDA, OLED_CMD);    // --set com pins hardware configuration
    delay_ms(10);
    OLED_WR_Byte(0x12, OLED_CMD);
    delay_ms(10);
    OLED_WR_Byte(0xDB, OLED_CMD);    // --set vcomh
    delay_ms(10);
    OLED_WR_Byte(0x40, OLED_CMD);    // Set VCOM Deselect Level
    delay_ms(10);
    OLED_WR_Byte(0x20, OLED_CMD);    // -Set Page Addressing Mode (0x00/0x01/0x02)
    delay_ms(10);
    OLED_WR_Byte(0x02, OLED_CMD);    //
    delay_ms(10);
    OLED_WR_Byte(0x8D, OLED_CMD);    // --set Charge Pump enable/disable
    delay_ms(10);
    OLED_WR_Byte(0x14, OLED_CMD);    // --set(0x10) disable
    delay_ms(10);
    OLED_WR_Byte(0xA4, OLED_CMD);    //  Disable Entire Display On (0xa4/0xa5)
    delay_ms(10);
    OLED_WR_Byte(0xA6, OLED_CMD);    //  Disable Inverse Display On (0xa6/a7)
    delay_ms(10);
    OLED_WR_Byte(0xAF, OLED_CMD);    // --turn on oled panel
    delay_ms(10);
}

// ==========================================================================
void OLED_Clear(void)
{
    uint8_t i, n;
    for(i = 0; i < 8; i++)// 8行，每行16个字节，每个字节纵向排列
    {
        OLED_WR_Byte(0xb0 + i, OLED_CMD);  //设置页地址（0~7）
        OLED_WR_Byte(0x00, OLED_CMD);      //设置显示位置—列低地址
        OLED_WR_Byte(0x10, OLED_CMD);      //设置显示位置—列高地址
        for(n = 0; n < 128; n++)
        {
            OLED_WR_Byte(0, OLED_DATA);// 平均0.075s 。
        }
    }
}

// ==========================================================================
void OLED_Full(void)
{
    uint8_t i, n;
    for(i = 0; i < 8; i++)// 8行，每行16个字节，每个字节纵向排列
    {
        OLED_WR_Byte(0xb0 + i, OLED_CMD);  //设置页地址（0~7）
        OLED_WR_Byte(0x00, OLED_CMD);      //设置显示位置—列低地址
        OLED_WR_Byte(0x10, OLED_CMD);      //设置显示位置—列高地址
        for(n = 0; n < 128; n++)
        {
            OLED_WR_Byte(0xff, OLED_DATA);
        }
    }
}

// ==========================================================================
// 开启OLED显示
void OLED_Display_On(void)
{
    OLED_WR_Byte(0X8D, OLED_CMD);  // SET DCDC 命令
    OLED_WR_Byte(0X14, OLED_CMD);  // DCDC ON
    OLED_WR_Byte(0XAF, OLED_CMD);  // DISPLAY ON
}

// ==========================================================================
// 关闭OLED显示
void OLED_Display_Off(void)
{
    OLED_WR_Byte(0X8D, OLED_CMD);  // SET DCDC 命令
    OLED_WR_Byte(0X10, OLED_CMD);  // DCDC OFF
    OLED_WR_Byte(0XAE, OLED_CMD);  // DISPLAY OFF
}

// ==========================================================================
void OLED_Set_Pos(uint8_t x, uint8_t y)
{
	//OLED_WR_Byte(0xb0 + y / 8, OLED_CMD);// 纵坐标以比特为单位，0~112
	OLED_WR_Byte(0xb0 + y, OLED_CMD);// 纵坐标以字节为单位，0~7
	OLED_WR_Byte((((x) & 0xf0)>>4) | 0x10, OLED_CMD);
	OLED_WR_Byte(((x) & 0x0f), OLED_CMD);
}

// ==========================================================================
// 在指定位置显示一个字符，包括部分字符
// x: 0~127
// y: 0~63
void OLED_ShowChar(uint8_t x, uint8_t y, uint8_t chr)
{
    uint8_t c = 0, i = 0;
    c = chr - ' ';// 得到偏移后的值
    if(x > 120)
    {
        x = 0;
        y = y + 2;
    }
    if(y > 6)
    {
        y = 0;
    }
    if(SIZE == 16)// 因为是16*8，所以推荐 x = {0 8 16 ... 112 120}, y = {0 16 32 48}
    {
        OLED_Set_Pos(x, y);
        for(i = 0; i < 8; i++)
            OLED_WR_Byte(Char_Font_16x8[c][i], OLED_DATA);
        //OLED_Set_Pos(x, y + 8);
        OLED_Set_Pos(x, y + 1);
        for(i = 0; i < 8; i++)
            OLED_WR_Byte(Char_Font_16x8[c][i + 8], OLED_DATA);
    }
}

// m^n函数
uint32_t oled_pow(uint8_t m, uint8_t n)
{
    uint32_t result = 1;
    while(n--)
        result *= m;
    return result;
}

// ==========================================================================
// 显示数字
// x, y : 起点坐标
// num : 数值(0~4294967295);
// len : 数字的位数
// size: 字体大小
void OLED_ShowNum(uint8_t x, uint8_t y, uint32_t num, uint8_t len, uint8_t size)
{
    uint8_t t, temp;
    uint8_t enshow = 0;
    for(t = 0; t < len; t++)
    {
        if(x > 120)
        {
            x = 0;y = y + 2;
        }
        if(y > 6)
        {
            y = 0;
        }
        temp = (num / oled_pow(10, len - t - 1)) % 10;
        if(enshow == 0 && t < (len - 1))
        {
            if(temp == 0)
            {
                OLED_ShowChar(x, y, ' ');
                x += (size / 2);
                continue;
            }
            else
                enshow = 1;
        }
        OLED_ShowChar(x, y, temp + '0');
        x += (size / 2);
    }
}

// ==========================================================================
// 显示字符串
void OLED_ShowString(uint8_t x, uint8_t y, char *chr)
{


    uint8_t j = 0;
    while (chr[j] != '\0')
    {
        if(x > 120)
        {
            x = 0;y += 2;
        }
        if(y > 6)
        {
            y = 0;
        }
        OLED_ShowChar(x, y, chr[j]);
        j++;
        x += 8;
    }
}

// ==========================================================================
// 显示一个 16*16 点阵的字符（汉字）
void OLED_ShowCHinese(uint8_t x, uint8_t y, uint8_t num)
{
    //OLED_WR_Byte(0x02, OLED_DATA);
    if(x > 120)
    {
        x = 0;y += 2;
    }
    if(y > 6)
    {
        y = 0;
    }
    OLED_Set_Pos(x, y);
    for(int t = 0;t < 16; t++)
    {
        OLED_WR_Byte(Chi_Cha_Font_16x16[2 * num][t], OLED_DATA);
    }
    OLED_Set_Pos(x, y + 1);
    for(int t = 0; t < 16; t++)
    {
        OLED_WR_Byte(Chi_Cha_Font_16x16[2 * num + 1][t], OLED_DATA);
    }
    //delay_ms(10);
}
