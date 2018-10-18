/*
 * mic.h
 *
 *  Created on: Apr 21, 2018
 *      Author: drp1
 */

#ifndef SRC_MIC_H_
#define SRC_MIC_H_

#include "xparameters.h"
#include "xspi.h"
#include "xspi_l.h"

/************************** Constant Definitions *****************************/

#define NUM_MICS 4
//#define MICBUFFSIZE 512
#define MICBUFFSIZE 1024
#define SAMPLERATE 41667

u16 MicData[NUM_MICS][MICBUFFSIZE];
float MicSignal[NUM_MICS][MICBUFFSIZE];

typedef struct MicData_t {

} MicData_t;


/************************** Function Prototypes ******************************/
int mic_setup();
void read_all_mics();
void send_data_chunks();
void normalize_signal();



#endif /* SRC_MIC_H_ */