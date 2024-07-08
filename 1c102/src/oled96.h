#ifndef __OLED96_H
#define __OLED96_H

#ifdef __cplusplus
extern "C" {
#endif

#include "ls1x.h"

//  VCC     接 3.3v 电源
//  GND     电源地
//  SCL     GPIO4 （时钟）
//  SDA     GPIO5 （数据）

// OLED 参数定义
#define  OLED_CMD  0    // 写命令
#define  OLED_DATA 1    // 写数据
#define  SIZE 16
#define  XLevelL        0x02
#define  XLevelH        0x10
#define  Max_Column     128
#define  Max_Row        64
#define  Brightness     0xFF
#define  X_WIDTH        128
#define  Y_WIDTH        64

#define OLED_I2C_ADR    (0x78)// OLED 从机地址

// 通过 IIC 向 OLED 发送数据函数
void Write_IIC_Command(uint8_t IIC_Command);
void Write_IIC_Data(uint8_t IIC_Data);
void OLED_WR_Byte(uint8_t dat,uint8_t cmd);

// OLED 初始化函数
void OLED_Init(void);

// OLED 显示函数
void OLED_Clear(void);
void OLED_Full(void);
void OLED_Display_On(void);
void OLED_Display_Off(void);
void OLED_Set_Pos(uint8_t x, uint8_t y);
void OLED_ShowChar(uint8_t x, uint8_t y, uint8_t chr);
uint32_t oled_pow(uint8_t m,uint8_t n);
void OLED_ShowNum(uint8_t x, uint8_t y, uint32_t num, uint8_t len, uint8_t size);
void OLED_ShowString(uint8_t x, uint8_t y, char *chr);
void OLED_ShowCHinese(uint8_t x, uint8_t y, uint8_t num);

#ifdef __cplusplus
}
#endif

#endif // __OLED96_H
