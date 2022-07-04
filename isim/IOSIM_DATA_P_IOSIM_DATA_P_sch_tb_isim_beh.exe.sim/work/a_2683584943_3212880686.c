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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/Mux_IR.vhd";



static void work_a_2683584943_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    if (t18 == 1)
        goto LAB10;

LAB11:    t14 = (unsigned char)0;

LAB12:    if (t14 != 0)
        goto LAB8;

LAB9:
LAB13:    t27 = (t0 + 6041);
    t29 = (t0 + 3816);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t27, 5U);
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t34 = (t0 + 3720);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t2 = (t0 + 3816);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 5U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    t15 = (t0 + 1032U);
    t22 = *((char **)t15);
    t15 = (t0 + 3816);
    t23 = (t15 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t22, 5U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB10:    t15 = (t0 + 1512U);
    t19 = *((char **)t15);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)2);
    t14 = t21;
    goto LAB12;

LAB14:    goto LAB2;

}

static void work_a_2683584943_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 6062);
    t13 = (t0 + 3880);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 16U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 3736);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 6046);
    t6 = (t0 + 3880);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_2683584943_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2683584943_3212880686_p_0,(void *)work_a_2683584943_3212880686_p_1};
	xsi_register_didat("work_a_2683584943_3212880686", "isim/IOSIM_DATA_P_IOSIM_DATA_P_sch_tb_isim_beh.exe.sim/work/a_2683584943_3212880686.didat");
	xsi_register_executes(pe);
}
