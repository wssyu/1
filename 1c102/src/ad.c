#include "ls1x.h"
#include "Config.h"
#include "oled96.h"
#include "ls1c102_i2c.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"
#include "ad.h"
#include "ls1c102_adc.h"


int PH_Value_Conversion()  //采集电压后根据手册提供函数关系计算PH值
{
         Adc_powerOn();//adc电源开启
         Adc_open(ADC_CHANNEL_I1);//打开通道0
         long ph_value_raw=0;
        int ph_value=0;
        #define SCALE_FACTOR 10000
		int adc_value_mV=Adc_getVoltage(ADC_CHANNEL_I1);
        ph_value_raw= -57541L*adc_value_mV+166540000L;
	    ph_value = ph_value_raw/10000;

		if(ph_value<=0){ph_value=0;}
		if(ph_value>=14000){ph_value=14;}
		return ph_value;
	
}

int zd_value()
{
        Adc_powerOn();//adc电源开启
        Adc_open(ADC_CHANNEL_I7);//打开通道0
        int TU=0;
        int K_Value=0;
        int TU_calibration=4332;
        TU=Adc_getVoltage(ADC_CHANNEL_I7);
       // OLED_ShowNum(40,4,TU,6,16);
    int a = -1120400; // -1120.4 放大 1000 倍
    int b = 5742300;  // 5742.3 放大 1000 倍
    int c = -4352900; // -4352.9 放大 1000 倍
      // int TU_calibration_mV = (-192 * (temp_data - 250)) / 1000 + TU;
     /// int TU_value = (-86568 * TU) / 100 + K_Value;
    //    long  TU_value_long = (long)a * TU * TU / 1000000 // 计算 a*x^2
    //                           + (long)b * TU / 1000                 // 计算 b*x
    //                           + c;   
int TU_value=(-213*TU)/100+K_Value;
   // OLED_ShowNum(40,4,TU_value,3,16);                                    
    //     if (TU_value <= 0) {
    //     TU_value = 0;
    // }
    // if (TU_value >= 3000000) {
    //     TU_value = 3000000;
    // } 
    return TU_value;
}
