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
static const char *ng0 = "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/Mac.vhd";



static void work_a_0295612575_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t15;
    char *t16;
    int t17;
    unsigned char t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5872);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t2 = (t0 + 6032);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 2U);
    xsi_driver_first_trans_fast(t2);

LAB9:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 6096);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 2632U);
    t11 = *((char **)t4);
    t4 = (t0 + 3088U);
    t12 = *((char **)t4);
    t13 = xsi_mem_cmp(t12, t11, 2U);
    if (t13 == 1)
        goto LAB12;

LAB16:    t4 = (t0 + 3208U);
    t14 = *((char **)t4);
    t15 = xsi_mem_cmp(t14, t11, 2U);
    if (t15 == 1)
        goto LAB13;

LAB17:    t4 = (t0 + 3328U);
    t16 = *((char **)t4);
    t17 = xsi_mem_cmp(t16, t11, 2U);
    if (t17 == 1)
        goto LAB14;

LAB18:
LAB15:    xsi_set_current_line(70, ng0);

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 1512U);
    t19 = *((char **)t4);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)3);
    if (t21 == 1)
        goto LAB23;

LAB24:    t4 = (t0 + 1672U);
    t22 = *((char **)t4);
    t23 = *((unsigned char *)t22);
    t24 = (t23 == (unsigned char)3);
    t18 = t24;

LAB25:    if (t18 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t2 = (t0 + 6032);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 2U);
    xsi_driver_first_trans_fast(t2);

LAB21:    goto LAB11;

LAB13:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB26;

LAB28:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3328U);
    t4 = *((char **)t2);
    t2 = (t0 + 6032);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 2U);
    xsi_driver_first_trans_fast(t2);

LAB27:    goto LAB11;

LAB14:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t2 = (t0 + 6032);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB19:;
LAB20:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 3208U);
    t25 = *((char **)t4);
    t4 = (t0 + 6032);
    t26 = (t4 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 2U);
    xsi_driver_first_trans_fast(t4);
    goto LAB21;

LAB23:    t18 = (unsigned char)1;
    goto LAB25;

LAB26:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3208U);
    t5 = *((char **)t2);
    t2 = (t0 + 6032);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 2U);
    xsi_driver_first_trans_fast(t2);
    goto LAB27;

}

static void work_a_0295612575_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 3208U);
    t3 = *((char **)t1);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    t7 = (!(t4));
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB11:    t13 = (t0 + 6160);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 5888);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 6160);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}

static void work_a_0295612575_3212880686_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB23:    t23 = (t0 + 6224);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t28 = (t0 + 5904);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t18 = (t0 + 6224);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB5:    t12 = (t0 + 2792U);
    t13 = *((char **)t12);
    t12 = (t0 + 3208U);
    t14 = *((char **)t12);
    t15 = 1;
    if (2U == 2U)
        goto LAB17;

LAB18:    t15 = 0;

LAB19:    t1 = t15;
    goto LAB7;

LAB8:    t3 = (t0 + 2632U);
    t7 = *((char **)t3);
    t3 = (t0 + 3208U);
    t8 = *((char **)t3);
    t9 = 1;
    if (2U == 2U)
        goto LAB11;

LAB12:    t9 = 0;

LAB13:    t2 = t9;
    goto LAB10;

LAB11:    t10 = 0;

LAB14:    if (t10 < 2U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t3 = (t7 + t10);
    t11 = (t8 + t10);
    if (*((unsigned char *)t3) != *((unsigned char *)t11))
        goto LAB12;

LAB16:    t10 = (t10 + 1);
    goto LAB14;

LAB17:    t16 = 0;

LAB20:    if (t16 < 2U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t12 = (t13 + t16);
    t17 = (t14 + t16);
    if (*((unsigned char *)t12) != *((unsigned char *)t17))
        goto LAB18;

LAB22:    t16 = (t16 + 1);
    goto LAB20;

LAB24:    goto LAB2;

}

static void work_a_0295612575_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t17 = (t0 + 6288);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 5920);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 6288);
    t13 = (t2 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB8;

LAB9:    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t6 = t12;

LAB10:    t1 = t6;
    goto LAB7;

LAB8:    t6 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_0295612575_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 6352);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 5936);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 6352);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0295612575_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(82, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 6416);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5952);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0295612575_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0295612575_3212880686_p_0,(void *)work_a_0295612575_3212880686_p_1,(void *)work_a_0295612575_3212880686_p_2,(void *)work_a_0295612575_3212880686_p_3,(void *)work_a_0295612575_3212880686_p_4,(void *)work_a_0295612575_3212880686_p_5};
	xsi_register_didat("work_a_0295612575_3212880686", "isim/IOSIM_DATA_P_IOSIM_DATA_P_sch_tb_isim_beh.exe.sim/work/a_0295612575_3212880686.didat");
	xsi_register_executes(pe);
}
