/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3620187407;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3760500995_3212880686_init();
    work_a_1055111993_3212880686_init();
    work_a_2097532438_3212880686_init();
    work_a_2664950572_2537394971_init();
    unisim_a_2536841925_1281047780_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_1717296735_4086321779_init();
    work_a_0192979022_0310287201_init();
    work_a_1628123915_3212880686_init();
    work_a_0405934261_3212880686_init();
    work_a_0424464058_3212880686_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_2661327437_0605893366_init();
    unisim_a_1801614988_1818890047_init();
    work_a_3140499500_3212880686_init();
    work_a_0711211128_3212880686_init();
    work_a_2293611118_3212880686_init();
    work_a_3289437869_3212880686_init();
    work_a_0038911295_3212880686_init();
    unisim_a_0054875107_3333617569_init();
    work_a_0832606739_3212880686_init();
    work_a_2387207229_3212880686_init();


    xsi_register_tops("work_a_2387207229_3212880686");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
