/*
 * controller.h
 *
 *  Created on: Jan 27, 2018
 *      Author: drp1
 */
#include <stdio.h>

#ifndef SRC_CONTROLLER_H_
#define SRC_CONTROLLER_H_

#define BUTTON_BASEADDR XPAR_AXI_GPIO_0_BASEADDR
#define SWITCH_BASEADDR XPAR_AXI_GPIO_1_BASEADDR
#define LED_BASEADDR 	XPAR_AXI_GPIO_2_BASEADDR

#define BUTTON_MASK_UP 0x10
#define BUTTON_MASK_LEFT 0x4
#define BUTTON_MASK_CENTER 0x1
#define BUTTON_MASK_RIGHT 0x8
#define BUTTON_MASK_DOWN 0x2
#define SW0_MASK 0x1
#define SW1_MASK 0x2
#define SW2_MASK 0X4
#define SW3_MASK 0X8
#define SW4_MASK 0X10
#define SW5_MASK 0X20
#define SW6_MASK 0X40
#define SW7_MASK 0X80
uint8_t read_sw0();
uint8_t read_sw1();
uint8_t read_sw2();
uint8_t read_sw3();
uint8_t read_sw4();
uint8_t read_sw5();
uint8_t read_sw6();
uint8_t read_sw7();

uint8_t read_button8();
uint8_t read_button9();
uint8_t read_buttons();
uint8_t read_switches();
uint8_t read_button_up();
uint8_t read_button_down();
uint8_t read_button_right();
uint8_t read_button_left();
uint8_t read_button_center();
#endif /* SRC_CONTROLLER_H_ */
