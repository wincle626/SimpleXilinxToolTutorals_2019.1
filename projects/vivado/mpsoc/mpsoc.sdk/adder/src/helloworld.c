/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */


/***************************** Include Files *********************************/
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include <stdio.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define NUMBER_OF_TRANSFERS	10

#define TX_BUFFER_BASE		(0xFF000000)
#define RX_BUFFER_BASE		(0xFF800000)

#define MAX_PKT_LEN		64

int main()
{
    printf("Hello World\n");

    XAxiDma *AxiDma;
	XAxiDma_Config *CfgPtr;
	int Status;
	int Tries = NUMBER_OF_TRANSFERS;
	int Index;
	u64 *TxBufferPtr;
	u32 *RxBufferPtr;

//	TxBufferPtr = (u64 *)TX_BUFFER_BASE;
//	RxBufferPtr = (u32 *)RX_BUFFER_BASE;
	int fd_mem = open("/dev/mem", O_RDWR);
	TxBufferPtr = (u64 *)mmap(NULL, MAX_PKT_LEN, PROT_READ | PROT_WRITE,
			MAP_SHARED, fd_mem, TX_BUFFER_BASE);
	RxBufferPtr = (u32 *)mmap(NULL, MAX_PKT_LEN, PROT_READ | PROT_WRITE,
			MAP_SHARED, fd_mem, RX_BUFFER_BASE);

	/* Initialize the XAxiDma device.
	 */
	CfgPtr = XAxiDma_LookupConfig(0);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", 0);
		return XST_FAILURE;
	}
	Status = XAxiDma_CfgInitialize(AxiDma, CfgPtr);
	AxiDma->RegBase   = (UINTPTR)mmap(NULL, MAX_PKT_LEN, PROT_READ|PROT_WRITE,
			MAP_SHARED, fd_mem, AxiDma->RegBase);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}


	/* Initialize the data.
	 */
	for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
			unsigned long a = Index;
			unsigned int b = Index +1;
			TxBufferPtr[Index] = ((a & 0x00000000FFFFFFFF) << 32) + b;
	}


	/* Transfer the data.
	 */
	for(Index = 0; Index < Tries; Index ++) {


		Status = XAxiDma_SimpleTransfer(AxiDma,(UINTPTR) RxBufferPtr,
					MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		Status = XAxiDma_SimpleTransfer(AxiDma,(UINTPTR) TxBufferPtr,
					MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		while ((XAxiDma_Busy(AxiDma,XAXIDMA_DEVICE_TO_DMA)) ||
			(XAxiDma_Busy(AxiDma,XAXIDMA_DMA_TO_DEVICE))) {
				/* Wait */
		}
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

	}


	/* Check the data.
	 */
	for(Index = 0; Index < MAX_PKT_LEN; Index++) {
		if (RxBufferPtr[Index] != Index*2+1) {
			printf("Data error %d: %x/%x\r\n",
			Index, (unsigned int)RxBufferPtr[Index],
				(unsigned int)Index*2+1);

			return XST_FAILURE;
		}
	}

	return XST_SUCCESS;
}
