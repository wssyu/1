#ifndef _DS18B20_H
#define _DS18B20_H

#ifdef __cplusplus
extern "C" {
#endif

void DS18B20_Rst(void);
uint8_t DS18B20_Check(void) ;
uint8_t DS18B20_Read_Bit(void) ;
uint8_t DS18B20_Read_Byte(void);
void DS18B20_Write_Byte(uint8_t dat);
void DS18B20_Start(void);
uint8_t DS18B20_Init(void);
int DS18B20_Get_Temp(void);
#ifdef __cplusplus
}
#endif

#endif // _DS18B20_H