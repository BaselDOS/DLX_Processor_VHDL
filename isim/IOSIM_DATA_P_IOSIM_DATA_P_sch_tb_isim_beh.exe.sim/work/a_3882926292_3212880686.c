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
static const char *ng0 = "F:/semesterB2021/computer artitichture Lab/exp7/B6/Home_S251/SHIFTER.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3882926292_3212880686_p_0(char *t0)
{
    char t14[16];
    char t16[16];
    char t39[16];
    char t41[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    char *t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    char *t31;
    unsigned char t32;
    unsigned char t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t40;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    unsigned char t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;

LAB0:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t30 = (t29 == (unsigned char)2);
    if (t30 == 1)
        goto LAB12;

LAB13:    t26 = (unsigned char)0;

LAB14:    if (t26 != 0)
        goto LAB10;

LAB11:
LAB17:    t51 = (t0 + 1032U);
    t52 = *((char **)t51);
    t51 = (t0 + 3072);
    t53 = (t51 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t52, 32U);
    xsi_driver_first_trans_fast_port(t51);

LAB2:    t57 = (t0 + 2992);
    *((int *)t57) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 1032U);
    t9 = *((char **)t2);
    t10 = (31 - 31);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t9 + t12);
    t15 = ((IEEE_P_2592010699) + 4024);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 31;
    t18 = (t17 + 4U);
    *((int *)t18) = 1;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (1 - 31);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t13 = xsi_base_array_concat(t13, t14, t15, (char)99, (unsigned char)2, (char)97, t2, t16, (char)101);
    t20 = (1U + 31U);
    t21 = (32U != t20);
    if (t21 == 1)
        goto LAB8;

LAB9:    t18 = (t0 + 3072);
    t22 = (t18 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t13, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB5:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t20, 0);
    goto LAB9;

LAB10:    t27 = (t0 + 1032U);
    t34 = *((char **)t27);
    t35 = (31 - 30);
    t36 = (t35 * 1U);
    t37 = (0 + t36);
    t27 = (t34 + t37);
    t40 = ((IEEE_P_2592010699) + 4024);
    t42 = (t41 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = 30;
    t43 = (t42 + 4U);
    *((int *)t43) = 0;
    t43 = (t42 + 8U);
    *((int *)t43) = -1;
    t44 = (0 - 30);
    t45 = (t44 * -1);
    t45 = (t45 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t45;
    t38 = xsi_base_array_concat(t38, t39, t40, (char)97, t27, t41, (char)99, (unsigned char)2, (char)101);
    t45 = (31U + 1U);
    t46 = (32U != t45);
    if (t46 == 1)
        goto LAB15;

LAB16:    t43 = (t0 + 3072);
    t47 = (t43 + 56U);
    t48 = *((char **)t47);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    memcpy(t50, t38, 32U);
    xsi_driver_first_trans_fast_port(t43);
    goto LAB2;

LAB12:    t27 = (t0 + 1192U);
    t31 = *((char **)t27);
    t32 = *((unsigned char *)t31);
    t33 = (t32 == (unsigned char)3);
    t26 = t33;
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t45, 0);
    goto LAB16;

LAB18:    goto LAB2;

}


extern void work_a_3882926292_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3882926292_3212880686_p_0};
	xsi_register_didat("work_a_3882926292_3212880686", "isim/IOSIM_DATA_P_IOSIM_DATA_P_sch_tb_isim_beh.exe.sim/work/a_3882926292_3212880686.didat");
	xsi_register_executes(pe);
}
