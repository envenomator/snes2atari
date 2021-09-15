/* Snes controller to Atari adapter
 * Copyright (C) 2013 Raphël Assénat
 * Adapted specifically for atari only with a single map
 *
 */
#include <stdint.h>
#include <string.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "snes.h"

#define OPT_AUTOFIRE			1		// This button is autofire
#define OPT_AUTOFIRE_SEL_SPEED	2		// This button cycles through autofire speeds
#define DB9_NULL				0x00
#define ATARI_BTN_DPAD_UP		0x20	// PC5
#define ATARI_BTN_DPAD_DOWN		0x10	// PC4
#define ATARI_BTN_DPAD_LEFT		0x08	// PC3
#define ATARI_BTN_DPAD_RIGHT	0x04	// PC2
#define ATARI_BTN_FIRE			0x02	// PC1
#define ATARI_BTN_FIRE2			0x01	// PC0
#define AUTOFIRE_SPEED_30		0 		// 60 / 2
#define AUTOFIRE_SPEED_25		1 		// 50 / 2
#define AUTOFIRE_SPEED_20		2 		// 60 / 3
#define AUTOFIRE_SPEED_16		3 		// 50 / 3
#define AUTOFIRE_SPEED_15		4 		// 60 / 4
#define AUTOFIRE_SPEED_12_5		5		// 50 / 4

struct snes_md_map {
	uint16_t snes_btn;
	uint8_t s; 
	char opts;
};

struct snes_md_map atari_style1_map[] = {
	{ SNES_BTN_DPAD_UP | SNES_BTN_A,		ATARI_BTN_DPAD_UP },
	{ SNES_BTN_DPAD_DOWN,					ATARI_BTN_DPAD_DOWN },
	{ SNES_BTN_DPAD_LEFT,					ATARI_BTN_DPAD_LEFT },
	{ SNES_BTN_DPAD_RIGHT,					ATARI_BTN_DPAD_RIGHT },
	{ SNES_BTN_B,							ATARI_BTN_FIRE },
	
	{ SNES_BTN_Y | SNES_BTN_R,				ATARI_BTN_FIRE,		OPT_AUTOFIRE },
	{ SNES_BTN_X | SNES_BTN_L,				ATARI_BTN_FIRE2, },
	{ SNES_BTN_SELECT,						DB9_NULL,			OPT_AUTOFIRE_SEL_SPEED },
	{ 0, }, /* SNES btns == 0 termination. */
};
// B is fire
// A is jump up, together with DPAD_UP
// Y/R provide rapidfire
// X/L provide fire2 for amiga
// START starts and stops autofire locking
// Menu cycles through autofire speeds

static uint8_t autofire_speed = AUTOFIRE_SPEED_25;
static uint8_t autofire_lock_on = 0;
static uint8_t autofire_state=0;

EMPTY_INTERRUPT(INT0_vect);

static void hwinit(void)
{
	/* PORTB
	 *
	 * Bit	Function	Dir		Level/pu
	 * 0	JP COM		out		0
	 * 1	JP1			in		1
	 * 2	JP2			in		1
	 * 3	SNES LATCH	out		0
	 * 4	SNES DAT	In		1
	 * 5	SNES CLK	out		1
	 * 6	XTAL1
	 * 7	XTAL2
	 */
	DDRB = 0x29;
	PORTB = 0x36;

	/* PORTC
	 *
	 * Bit	Function	Dir		Level/pull-up
	 * 0	START/C		In		1
	 * 1	A/B			In		1
	 * 2	0/RT/MODE	In		1
	 * 3	0/LF/X		In		1
	 * 4	DN/DN/Y		In		1
	 * 5	UP/UP/Z		In		1
	 */
	DDRC = 0x00;
	PORTC = 0xFF;

	/* PORTD
	 *
	 * Bit	Function	Dir		Level/pull-up
	 * 0	-			Out		0  \___ tied together on multiuse PCB2
	 * 1	-			Out		0  /
	 * 2	SELECT		In		1
	 * 3	-			Out		0
	 * 4	VCC			In		0  <---- Shorted to GND on multiuse PCB2
	 * 5	-			Out		0
	 * 6	-			Out		0
	 * 7	-			Out		0
	 */
	DDRD = 0xEB;
	PORTD = 0x04;

}

static void autofireCycleSpeed(uint8_t btn_state)
{
	static uint8_t last_state;

	if (btn_state && !last_state) {
		autofire_speed++;
		if (autofire_speed > AUTOFIRE_SPEED_12_5) {
			autofire_speed = AUTOFIRE_SPEED_30;
		}
	}

	last_state = btn_state;
}

static void autofireToggleLockOn(uint8_t btn_state)
{
	static uint8_t last_state;

	if (btn_state && !last_state) {
		autofire_lock_on = !autofire_lock_on;
	}

	last_state = btn_state;
}

static uint8_t autofireGetTop(void)
{
	switch (autofire_speed)
	{
			// divide by 2
		default:
		case AUTOFIRE_SPEED_30:
		case AUTOFIRE_SPEED_25:
			return 2;

			// divide by 3
		case AUTOFIRE_SPEED_20:
		case AUTOFIRE_SPEED_16:
			return 3;

			// divide by 4
		case AUTOFIRE_SPEED_15:
		case AUTOFIRE_SPEED_12_5:
			return 4;
	}
}

static void autofireSleep(void)
{
	switch (autofire_speed)
	{
			// 120Hz base
		default:
		case AUTOFIRE_SPEED_30:
		case AUTOFIRE_SPEED_20:
		case AUTOFIRE_SPEED_15:
//			_delay_us(8333);
			// This delay is trimmed to account for overhead and obtain 29.97Hz.
			_delay_us(8208);
			break;
	
			// 100Hz base
		case AUTOFIRE_SPEED_25:
		case AUTOFIRE_SPEED_16:
		case AUTOFIRE_SPEED_12_5:
			//_delay_us(10000); // 24.66
			_delay_us(9860); // 25 Hz
			break;
	}
}

static char autofirePoll(void)
{
	static uint8_t c=0;

	c = !c;

	return c;
}

static void autofireDo(void)
{
	static char autofire_count = 0;

	if (autofire_count <= 0) {
		autofire_count = autofireGetTop();
		autofire_state = !autofire_state;
	}
	autofire_count--;
}

int main(void)
{
	struct snes_md_map *map;
	gamepad_data last_data;
	uint8_t next_data = 0;
	Gamepad *snespad;

	hwinit();

	_delay_ms(20);

	snespad = snesGetGamepad();
	snespad->init(); 
	snespad->update();
	snespad->getReport(&last_data);


	while(1)
	{
		map = atari_style1_map;
		// Simulated open-collector/switch drive for Atari
		PORTC = 0x00;
		DDRC = next_data;

		autofireSleep();

		// make sure the controller is polled at
		// 50/60 hz regardless of the loop
		// timing for autofire which is higher.
		if (autofirePoll()) {
			snespad->update();
			snespad->getReport(&last_data);
		}

		autofireToggleLockOn(last_data.snes.buttons & SNES_BTN_START);
		autofireDo();

		next_data = 0;

		// walk through each button in the map structure
		while (map->snes_btn) {

			if (map->opts&OPT_AUTOFIRE) {
				if (autofire_lock_on) {
					if (autofire_state) {
						next_data |= map->s;
					}
				}
			}

			// any of the pressed buttons matches the mapping structure?
			if ((last_data.snes.buttons & map->snes_btn))
			{
				// set to commit, unless autofire
				if (!(map->opts&OPT_AUTOFIRE) || autofire_state) {
					next_data |= map->s;
				}
			}

			if ((map->opts&OPT_AUTOFIRE_SEL_SPEED)) {
				autofireCycleSpeed(last_data.snes.buttons & map->snes_btn);
			}

			map++;
		}
	
	}

	return 0;
}
