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

char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_0614985750;
char *UNISIM_P_0947159679;
char *STD_STANDARD;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *STD_TEXTIO;
char *UNISIM_P_3222816464;


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
    work_p_0614985750_init();
    work_a_4122551599_3212880686_init();
    work_a_0347265945_3212880686_init();
    work_a_0038911295_3212880686_init();
    work_a_1275971224_3212880686_init();
    work_a_1820076561_3212880686_init();
    work_a_0212598907_3212880686_init();
    work_a_3760500995_3212880686_init();
    work_a_3651767750_3212880686_init();
    unisim_a_2216889161_3025253650_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_2661327437_0605893366_init();
    work_a_0795854940_3212880686_init();
    work_a_0424464058_3212880686_init();
    work_a_2453171190_3212880686_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_2425416179_1721142233_init();
    work_a_0324537578_3212880686_init();
    work_a_2099664817_3212880686_init();
    work_a_1394149713_3212880686_init();
    work_a_2158110372_3212880686_init();
    work_a_3755665703_3212880686_init();
    work_a_3882926292_3212880686_init();
    work_a_2097532438_3212880686_init();
    work_a_1055111993_3212880686_init();
    work_a_4197685916_1444489634_init();
    unisim_a_2536841925_1281047780_init();
    unisim_a_3055263662_1392679692_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_1717296735_4086321779_init();
    work_a_1768346721_3124379806_init();
    work_a_1628123915_3212880686_init();
    work_a_2785169506_3212880686_init();
    unisim_a_1801614988_1818890047_init();
    work_a_0175598715_3212880686_init();
    work_a_0711211128_3212880686_init();
    work_a_2293611118_3212880686_init();
    work_a_3289437869_3212880686_init();
    unisim_a_0054875107_3333617569_init();
    work_a_3811382084_3212880686_init();
    work_a_3564661738_3212880686_init();
    work_a_0086362977_3212880686_init();
    work_a_1039184387_3212880686_init();
    work_a_2683584943_3212880686_init();
    work_a_0075337414_3212880686_init();
    work_a_2703441324_3212880686_init();
    work_a_0295612575_3212880686_init();
    work_a_0961893843_3212880686_init();
    work_a_2520570335_3212880686_init();
    work_a_1444239254_3212880686_init();
    work_a_0816706478_3212880686_init();
    work_a_3451860382_3212880686_init();


    xsi_register_tops("work_a_3451860382_3212880686");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_0614985750 = xsi_get_engine_memory("work_p_0614985750");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
