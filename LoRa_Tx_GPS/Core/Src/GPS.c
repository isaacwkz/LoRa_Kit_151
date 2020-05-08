#include "GPSConfig.h"
#include "GPS.h"
#include "usart.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

GPS_t GPS;
extern unsigned long ticks;
extern DMA_HandleTypeDef hdma_memtomem_dma1_channel1;

//##################################################################################################################
double convertDegMinToDecDeg (float degMin)
{
  double min = 0.0;
  double decDeg = 0.0;
 
  //get the minutes, fmod() requires double
  min = fmod((double)degMin, 100.0);
 
  //rebuild coordinates in decimal degrees
  degMin = (int) ( degMin / 100 );
  decDeg = degMin + ( min / 60 );
  return decDeg;
}
//##################################################################################################################
void	GPS_Init(void)
{
	GPS.rxIndex=0;
	HAL_UART_Receive_DMA(&_GPS_USART,&GPS.rxTmp,1);
}
//##################################################################################################################
void	GPS_CallBack(void)
{
	static uint8_t previousRead;
	GPS.LastTime=HAL_GetTick();
	previousRead++;
	if( (GPS.rxIndex < sizeof(GPS.rxBuffer)-2) && (previousRead == 1) )
	{
		GPS.rxBuffer[GPS.rxIndex] = GPS.rxTmp;
		//HAL_DMA_Start(&hdma_memtomem_dma1_channel1, (uint32_t) GPS.rxTmp, (uint32_t) (GPS.rxBuffer + GPS.rxIndex), 1);
		GPS.rxIndex++;
	}
	else
		previousRead = 0;
	HAL_UART_Receive_DMA(&_GPS_USART,&GPS.rxTmp,1);
}
//##################################################################################################################
void	GPS_Process(void)
{
	if((HAL_GetTick()-GPS.LastTime>50) && (GPS.rxIndex>0))
	{
		char *str;
		#if (_GPS_DEBUG==1)
		printf("DATA:\r\n%s\r\nEND DATA\r\n",GPS.rxBuffer);
		#endif
		str=strstr((char*)GPS.rxBuffer,"$GPGGA,");
		if(str!=NULL)
		{
			ticks++;
			memset(&GPS.GPGGA,0,sizeof(GPS.GPGGA));
			sscanf(str,"$GPGGA,%2hhd%2hhd%2hhd.%3hd,%f,%c,%f,%c,%hhd,%hhd,%f,%f,%c,%hd,%s,*%2s\r\n",&GPS.GPGGA.UTC_Hour,&GPS.GPGGA.UTC_Min,&GPS.GPGGA.UTC_Sec,&GPS.GPGGA.UTC_MicroSec,&GPS.GPGGA.Latitude,&GPS.GPGGA.NS_Indicator,&GPS.GPGGA.Longitude,&GPS.GPGGA.EW_Indicator,&GPS.GPGGA.PositionFixIndicator,&GPS.GPGGA.SatellitesUsed,&GPS.GPGGA.HDOP,&GPS.GPGGA.MSL_Altitude,&GPS.GPGGA.MSL_Units,&GPS.GPGGA.AgeofDiffCorr,GPS.GPGGA.DiffRefStationID,GPS.GPGGA.CheckSum);
			if(GPS.GPGGA.NS_Indicator==0)
				GPS.GPGGA.NS_Indicator='-';
			if(GPS.GPGGA.EW_Indicator==0)
				GPS.GPGGA.EW_Indicator='-';
			if(GPS.GPGGA.Geoid_Units==0)
				GPS.GPGGA.Geoid_Units='-';
			if(GPS.GPGGA.MSL_Units==0)
				GPS.GPGGA.MSL_Units='-';
			GPS.GPGGA.LatitudeDecimal=convertDegMinToDecDeg(GPS.GPGGA.Latitude);
			GPS.GPGGA.LongitudeDecimal=convertDegMinToDecDeg(GPS.GPGGA.Longitude);
		}		
		memset(GPS.rxBuffer,0,sizeof(GPS.rxBuffer));
		GPS.rxIndex=0;
	}
	HAL_UART_Receive_DMA(&_GPS_USART,&GPS.rxTmp,1);
}
//##################################################################################################################
