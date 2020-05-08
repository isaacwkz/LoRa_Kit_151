#include "DataProcessing.h"

extern SX1278_hw_t SX1278_hw;
extern SX1278_t SX1278;

void idleProcess(void)
{
	GPS_Process();
	HAL_IWDG_Refresh(&hiwdg);
}

void rfTxMessages(void)
{
	static uint16_t message_length;
	static uint8_t message;
	char msg1[50];
	char msg2[50];
	char msg3[50];
	char buffer[150];

	//if(GPS.GPGGA.PositionFixIndicator == 1)
	{
		printf("\r\nGPS Coordinates: %lf,%lf", GPS.GPGGA.LatitudeDecimal, GPS.GPGGA.LongitudeDecimal);
		sprintf(msg1, "Message ID:%8d\r\n", message);
		sprintf(msg2, "Time (UTC): %2dh:%2dm:%2ds\r\n", GPS.GPGGA.UTC_Hour, GPS.GPGGA.UTC_Min, GPS.GPGGA.UTC_Sec);
		sprintf(msg3, "GPS Coordinates: %lf,%lf\r\n", GPS.GPGGA.LatitudeDecimal, GPS.GPGGA.LongitudeDecimal);
		message_length = snprintf(buffer, 150, "%s%s%s", msg1, msg2, msg3);

		while(SX1278_LoRaEntryTx(&SX1278, message_length, 2000) == 0)
		{
			printf("Tx mode failed. Retrying..\r\n");
			HAL_Delay(10);
		}
		printf("\r\nTransmitting  message\r\n");
		while(SX1278_LoRaTxPacket(&SX1278, (uint8_t *) buffer, message_length, 2000) == 0)
		{
			printf("Transmit failed. Retrying...\r\n");
			HAL_Delay(10);
		}
		printf("Packet sent!\r\n");
		message += 1;
	}
}

void initialiseDevices(void)
{
	uint8_t error;
	printf("\r\nInitialising SX1278...\r\n");
	SX1278_device_init();
	printf("SX1278 Init Complete!\r\n");
	error = SX1278_LoRaEntryTx(&SX1278, 16, 2000);
	if(error == 0)
	{
	  printf("SX1278 set TX failed!\r\n");
	  printf("Stopping...\r\n");
	  while(1)
		  HAL_Delay(10);
	}
	printf("Initialising GPS...\r\n");
	GPS_Init();
	printf("Initialise GPS Done!\r\n");
}
