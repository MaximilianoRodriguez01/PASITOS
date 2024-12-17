/*
 * Copyright (c) 2023 Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * @file   : task_system_attribute.h
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

#ifndef TASK_INC_TASK_SYSTEM_ATTRIBUTE_H_
#define TASK_INC_TASK_SYSTEM_ATTRIBUTE_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/

/* System Statechart - State Transition Table */
/*  ------------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------
 *  | Current State         | Current Composed State     | Event                    | [Guard]                                               | Next State            | Next Composed State        | Actions                               |
 *  |=======================+============================+==========================+=======================================================+=======================+============================+=======================================|
 *  | ST_SYST_IDLE          |                            | EV_SYST_SETUP_ON         |                                                       | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | qty_packs = 0; speed = 10; 			 |
 *  |                       |                            |                          |                                                       |                       |                            | pack_rate = 2; waiting_time = 5; 	 |
 *  |                       |                            |                          |                                                       |                       |                            | tick = 0; option = 1                  |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_IDLE          |                            | EV_SYST_CTRL_ON          |                                                       | ST_SYST_CTRL          |                            | qty_packs = 0; speed = 10; 			 |
 *  |                       |                            |                          |                                                       |                       |                            | pack_rate = 2; waiting_time = 5; 	 |
 *  |                       |                            |                          |                                                       |                       |                            | tick = 0                              |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_CTRL_OFF         |                                                       | ST_SYST_IDLE          |                            | qty_packs = 0; speed = 0;  			 |
 *  |                       |                            |                          |                                                       |                       |                            | pack_rate = 0; waiting_time = 0;		 |
 *  |                       |                            |                          |                                                       |                       |                            | tick = 0                              |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_SETUP_ON         |                                                       | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | option = 1                            |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_PACK_OUT         | qty_packs > 0                                         | ST_SYST_CTRL          |                            | qty_packs--                           |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_PACK_OUT         | qty_packs % pack_rate == 0 && 						|						|					         |										 |
 *  |                       |                            |                          | speed < DEL_MAX_SPEED && qty_packs > 0                | ST_SYST_CTRL          |                            | speed++; qty_packs--                  |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_PACK_IN          | qty_packs < DEL_MAX_PACKS                             | ST_SYST_CTRL          |                            | qty_packs++                           |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_PACK_IN          | qty_packs % pack_rate == 0 && 						|						|					         |										 |
 *  |                       |                            |                          | speed > 0 && qty_packs < DEL_MAX_PACKS                | ST_SYST_CTRL 		    |                            | speed--; qty_packs++                  |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_NO_PACKS         | tick == waiting_time && 								|						|                            |										 |
 *  |                       |                            |                          | qty_packs == 0                                        | ST_SYST_CTRL          |                            | raise EV_NORMAL_SYST_CTRL_OFF         |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_CTRL          |                            | EV_SYST_NO_PACKS         | qty_packs == 0                                        | ST_SYST_CTRL          |                            | tick++                                |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         |                            | EV_SYST_SETUP_OFF        |                                                       | ST_SYST_CTRL          |                            | option = 0                            |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | EV_SETUP_NEXT            | option == 1                                           | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | option = 2                            |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | EV_SETUP_NEXT            | option == 2                                           | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | option = 1                            |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | EV_SETUP_ENTER           | option == 1                                           | ST_SYST_SETUP         | ST_SETUP_MENU_PACKS_LIM    | -                                     |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_INIT_MENU         | EV_SETUP_ENTER           | option == 2                                           | ST_SYST_SETUP         | ST_SETUP_MENU_WAITING_TIME | -                                 	 |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_MENU_PACKS_LIM    | EV_SETUP_ESCAPE          |                                                       | ST_SYST_SETUP         | ST_SETUP_SYST_INIT_MENU    | option = 1                            |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_MENU_PACKS_LIM    | EV_SETUP_NEXT            | pack_rate < DEL_MAX_PACKS                             | ST_SYST_SETUP         | ST_SETUP_MENU_PACKS_LIM    | pack_rate++                           |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_MENU_PACKS_LIM    | EV_SETUP_NEXT            | pack_rate >= DEL_MAX_PACKS                            | ST_SYST_SETUP         | ST_SETUP_MENU_PACKS_LIM    | pack_rate = 1                         |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_MENU_WAITING_TIME | EV_SETUP_NEXT            |                                                       | ST_SYST_SETUP         | ST_SETUP_MENU_WAITING_TIME | waiting_time++                        |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_MENU_WAITING_TIME | EV_SETUP_NEXT            | waiting_time >= DEL_MAX_WAITING_TIME                  | ST_SYST_SETUP         | ST_SETUP_MENU_WAITING_TIME | waiting_time = 1                      |
 *  |-----------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------|
 *  | ST_SYST_SETUP         | ST_SETUP_MENU_WAITING_TIME | EV_SETUP_ESCAPE          |                                                       | ST_SYST_SETUP         |ST_SETUP_SYST_INIT_MENU     | option = 1                            |
 *  ------------------------+----------------------------+--------------------------+-------------------------------------------------------+-----------------------+----------------------------+---------------------------------------*/




/* Events to excite Task System */
typedef enum task_system_ev {EV_SYST_IDLE,
							 EV_SYST_CTRL_ON,
							 EV_SYST_CTRL_OFF,
							 EV_SYST_PACK_IN,
							 EV_SYST_PACK_OUT,
							 EV_SYST_NO_PACKS,
							 EV_SYST_SETUP_ON,
							 EV_SYST_SETUP_OFF,
							 EV_SETUP_ENTER,
							 EV_SETUP_ESCAPE,
							 EV_SETUP_NEXT} task_system_ev_t;


/* State of Task System */
typedef enum task_system_st {ST_SYST_IDLE,
							 ST_SYST_CTRL,
							 ST_SYST_SETUP} task_system_st_t;

/* Composed State of Task System */
typedef enum task_system_composed_st {ST_SETUP_INIT_MENU,
	 	 	 	 	 	 	 	 	  ST_SETUP_MENU_PACKS_LIM,
									  ST_SETUP_MENU_WAITING_TIME} task_system_composed_st_t;

typedef struct
{
	uint32_t			tick;
	uint32_t			speed;
	uint32_t			qty_packs;
	uint32_t			pack_rate;
	uint32_t			waiting_time;
	uint32_t			option;
	task_system_st_t	state;
	task_system_composed_st_t	composed_state;
	task_system_ev_t	event;
	bool				flag;
	bool				apagado_por_waiting_time;
	bool				cambio_de_estado;
} task_system_dta_t;

/********************** external data declaration ****************************/
extern task_system_dta_t task_system_dta;

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* TASK_INC_TASK_SYSTEM_ATTRIBUTE_H_ */

/********************** end of file ******************************************/
