#include "controller.h"
#include "xparameters.h"
#include "xil_io.h"

uint8_t read_sw0(){
	return Xil_In32(SWITCH_BASEADDR) & SW0_MASK;
}

uint8_t read_sw1(){
	return Xil_In32(SWITCH_BASEADDR) & SW1_MASK;
}

uint8_t read_sw2(){
	return Xil_In32(SWITCH_BASEADDR) & SW2_MASK;
}

uint8_t read_sw3(){
	return Xil_In32(SWITCH_BASEADDR) & SW3_MASK;
}

uint8_t read_sw4(){
	return Xil_In32(SWITCH_BASEADDR) & SW4_MASK;
}

uint8_t read_sw5(){
	return Xil_In32(SWITCH_BASEADDR) & SW5_MASK;
}

uint8_t read_sw6(){
	return Xil_In32(SWITCH_BASEADDR) & SW6_MASK;
}

uint8_t read_sw7(){
	return Xil_In32(SWITCH_BASEADDR) & SW7_MASK;
}


uint8_t read_switches(){
	UINTPTR addr = SWITCH_BASEADDR;
	uint32_t readIn = Xil_In32(addr);
	return readIn & 0xFF;
}

uint8_t read_buttons(){
	UINTPTR addr = BUTTON_BASEADDR;
	uint32_t readIn = Xil_In32(addr);
	return readIn & 0xFF;
}

uint8_t read_button8(){
	uint32_t readIn = Xil_In32(0xE000A044);
	return ((readIn & (1 << 18)) >> 18);
}

uint8_t read_button9(){
	uint32_t readIn = Xil_In32(0xE000A044);
	return ((readIn & (1 << 19))>> 18);
}

uint8_t read_button_up(){
	UINTPTR addr = BUTTON_BASEADDR;
	uint32_t readIn = Xil_In32(addr);
	return readIn & BUTTON_MASK_UP;
}

uint8_t read_button_down(){
	UINTPTR addr = BUTTON_BASEADDR;
	uint32_t readIn = Xil_In32(addr);
	return readIn & BUTTON_MASK_DOWN;
}

uint8_t read_button_right(){
	UINTPTR addr = BUTTON_BASEADDR;
	uint32_t readIn = Xil_In32(addr);
	return readIn & BUTTON_MASK_RIGHT;
}

uint8_t read_button_left(){
	UINTPTR addr = BUTTON_BASEADDR;
	uint32_t readIn = Xil_In32(addr);
	return readIn & BUTTON_MASK_LEFT;
}

uint8_t read_button_center(){
	UINTPTR addr = BUTTON_BASEADDR;
	uint32_t readIn = Xil_In32(addr);
	return readIn & BUTTON_MASK_CENTER;
}
