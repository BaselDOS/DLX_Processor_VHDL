<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset" />
        <signal name="ACK_N" />
        <signal name="STEP_EN" />
        <signal name="FUNCTIONR(5:0)" />
        <signal name="D(31:0)" />
        <signal name="MW" />
        <signal name="MR" />
        <signal name="BUSY" />
        <signal name="IR_CE" />
        <signal name="GPR_WE" />
        <signal name="A_EN" />
        <signal name="B_EN" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="Mac_State(1:0)" />
        <signal name="PC_STEP" />
        <signal name="C_EN" />
        <signal name="IN_INIT" />
        <signal name="A_sel" />
        <signal name="JLINK" />
        <signal name="MDR_EN" />
        <signal name="DINT_sel" />
        <signal name="TEST" />
        <signal name="MAR_EN" />
        <signal name="MDR_sel" />
        <signal name="IS_ITYPE" />
        <signal name="ADD" />
        <signal name="S2_sel(1:0)" />
        <signal name="S1_sel(1:0)" />
        <signal name="DLX_state(4:0)" />
        <signal name="stop_n" />
        <signal name="DINT(31:0)" />
        <signal name="C(31:0)" />
        <signal name="A_GPR(31:0)" />
        <signal name="B_GPR(31:0)" />
        <signal name="AEQZ" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="DO(31:0)" />
        <signal name="S1_O(31:0)" />
        <signal name="PC_OUT(31:0)" />
        <signal name="DI(31:0)" />
        <signal name="RS2(4:0)" />
        <signal name="RS1(4:0)" />
        <signal name="OPCODE(5:0)" />
        <signal name="RD(4:0)" />
        <signal name="Zero31_one(31:0)" />
        <signal name="ALU_OUT(31:0)" />
        <signal name="XLXN_208" />
        <signal name="FUNCTIONR(1)" />
        <signal name="SHIFT_Out(31:0)" />
        <signal name="Zero32(31:0)" />
        <signal name="OP_OR_FUNC(2:0)" />
        <signal name="Zero31_one(31:1)" />
        <signal name="Zero31_one(0)" />
        <signal name="FUNCTIONR(2:0)" />
        <signal name="OPCODE(2:0)" />
        <signal name="MAR_O(31:0)" />
        <signal name="AO(31:0)" />
        <signal name="AMUX_Out(31:0)" />
        <signal name="S2_O(31:0)" />
        <signal name="DD(4:0)" />
        <signal name="Immediate(15:0)" />
        <signal name="Immediate(31:0)" />
        <signal name="Immediate(31:16)" />
        <signal name="MDR_In(31:0)" />
        <signal name="SHIFT_EN" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Output" name="FUNCTIONR(5:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="BUSY" />
        <port polarity="Output" name="IR_CE" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="A_EN" />
        <port polarity="Output" name="B_EN" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="Mac_State(1:0)" />
        <port polarity="Output" name="PC_STEP" />
        <port polarity="Output" name="C_EN" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="A_sel" />
        <port polarity="Output" name="JLINK" />
        <port polarity="Output" name="MDR_EN" />
        <port polarity="Output" name="DINT_sel" />
        <port polarity="Output" name="TEST" />
        <port polarity="Output" name="MAR_EN" />
        <port polarity="Output" name="MDR_sel" />
        <port polarity="Output" name="IS_ITYPE" />
        <port polarity="Output" name="ADD" />
        <port polarity="Output" name="S2_sel(1:0)" />
        <port polarity="Output" name="S1_sel(1:0)" />
        <port polarity="Output" name="DLX_state(4:0)" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Input" name="DD(4:0)" />
        <port polarity="Output" name="SHIFT_EN" />
        <blockdef name="REG_ZERO_31">
            <timestamp>2022-5-30T17:29:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="REG_ZERO_32">
            <timestamp>2022-5-30T17:34:12</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Full_DLX_GPR">
            <timestamp>2022-5-31T8:2:13</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-348" height="24" />
            <line x2="384" y1="-336" y2="-336" x1="320" />
            <rect width="64" x="320" y="-204" height="24" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="REG_PC">
            <timestamp>2022-6-2T10:14:58</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="SHIFTER">
            <timestamp>2022-5-30T18:1:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX32bit">
            <timestamp>2015-7-12T12:4:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX3BIT">
            <timestamp>2021-2-28T12:43:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX4_32bit">
            <timestamp>2015-7-12T12:4:22</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2022-6-9T15:51:56</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="MMU">
            <timestamp>2022-5-30T17:43:41</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2015-7-12T8:30:6</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="Full_IR_Inv">
            <timestamp>2022-6-1T13:27:29</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="REG_A_B_C">
            <timestamp>2022-6-2T10:20:7</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="DLX_Full_Control">
            <timestamp>2022-6-8T18:48:33</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="480" y1="32" y2="32" x1="416" />
            <line x2="0" y1="-1696" y2="-1696" x1="64" />
            <line x2="0" y1="-1424" y2="-1424" x1="64" />
            <line x2="0" y1="-1152" y2="-1152" x1="64" />
            <line x2="0" y1="-880" y2="-880" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-348" height="24" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <line x2="480" y1="-1696" y2="-1696" x1="416" />
            <line x2="480" y1="-1632" y2="-1632" x1="416" />
            <line x2="480" y1="-1568" y2="-1568" x1="416" />
            <line x2="480" y1="-1504" y2="-1504" x1="416" />
            <rect width="64" x="416" y="-1452" height="24" />
            <line x2="480" y1="-1440" y2="-1440" x1="416" />
            <line x2="480" y1="-1376" y2="-1376" x1="416" />
            <line x2="480" y1="-1312" y2="-1312" x1="416" />
            <line x2="480" y1="-1248" y2="-1248" x1="416" />
            <line x2="480" y1="-1184" y2="-1184" x1="416" />
            <line x2="480" y1="-1120" y2="-1120" x1="416" />
            <line x2="480" y1="-1056" y2="-1056" x1="416" />
            <line x2="480" y1="-992" y2="-992" x1="416" />
            <line x2="480" y1="-928" y2="-928" x1="416" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="352" x="64" y="-1728" height="1792" />
        </blockdef>
        <block symbolname="Full_DLX_GPR" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="C(31:0)" name="C(31:0)" />
            <blockpin signalname="RS1(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="RS2(4:0)" name="Badr(4:0)" />
            <blockpin signalname="RD(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="DD(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="JLINK" name="JLINK" />
            <blockpin signalname="A_GPR(31:0)" name="A(31:0)" />
            <blockpin signalname="B_GPR(31:0)" name="B(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZero" />
        </block>
        <block symbolname="MUX4_32bit" name="S1_MUX">
            <blockpin signalname="PC_OUT(31:0)" name="A0(31:0)" />
            <blockpin signalname="A(31:0)" name="A1(31:0)" />
            <blockpin signalname="B(31:0)" name="A2(31:0)" />
            <blockpin signalname="DO(31:0)" name="A3(31:0)" />
            <blockpin signalname="S1_sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="S1_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="REG32CE" name="MDR">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="MDR_EN" name="CE" />
            <blockpin signalname="MDR_In(31:0)" name="DIN(31:0)" />
            <blockpin signalname="DO(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="Full_IR_Inv" name="XLXI_118">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="IR_CE" name="CE" />
            <blockpin signalname="DI(31:0)" name="DIn(31:0)" />
            <blockpin signalname="JLINK" name="JLINK" />
            <blockpin signalname="IS_ITYPE" name="IS_ITYPE" />
            <blockpin signalname="RS2(4:0)" name="RS2(4:0)" />
            <blockpin signalname="RS1(4:0)" name="RS1(4:0)" />
            <blockpin signalname="FUNCTIONR(5:0)" name="FunctionR(5:0)" />
            <blockpin signalname="Immediate(15:0)" name="Imm(15:0)" />
            <blockpin signalname="OPCODE(5:0)" name="Opcode(5:0)" />
            <blockpin signalname="Immediate(31:16)" name="CO(15:0)" />
            <blockpin signalname="RD(4:0)" name="RD(4:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="S2_MUX">
            <blockpin signalname="B(31:0)" name="A0(31:0)" />
            <blockpin signalname="Immediate(31:0)" name="A1(31:0)" />
            <blockpin signalname="Zero32(31:0)" name="A2(31:0)" />
            <blockpin signalname="Zero31_one(31:0)" name="A3(31:0)" />
            <blockpin signalname="S2_sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="S2_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_15">
            <blockpin signalname="S1_O(31:0)" name="A(31:0)" />
            <blockpin signalname="S2_O(31:0)" name="B(31:0)" />
            <blockpin signalname="TEST" name="TEST" />
            <blockpin signalname="OP_OR_FUNC(2:0)" name="ALU_F(2:0)" />
            <blockpin signalname="ADD" name="ADD" />
            <blockpin signalname="ALU_OUT(31:0)" name="ALU_Out(31:0)" />
            <blockpin signalname="XLXN_208" name="NE_G" />
        </block>
        <block symbolname="SHIFTER" name="XLXI_8">
            <blockpin signalname="SHIFT_EN" name="shift" />
            <blockpin signalname="FUNCTIONR(1)" name="right" />
            <blockpin signalname="S1_O(31:0)" name="DIN(31:0)" />
            <blockpin signalname="SHIFT_Out(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_9">
            <blockpin signalname="MDR_sel" name="sel" />
            <blockpin signalname="DINT(31:0)" name="A(31:0)" />
            <blockpin signalname="DI(31:0)" name="B(31:0)" />
            <blockpin signalname="MDR_In(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="REG_ZERO_31" name="XLXI_1">
            <blockpin signalname="Zero31_one(31:1)" name="REG_Out(30:0)" />
        </block>
        <block symbolname="REG_ZERO_32" name="XLXI_2">
            <blockpin signalname="Zero32(31:0)" name="REG_ZERO_Out(31:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_115">
            <blockpin signalname="Zero31_one(0)" name="P" />
        </block>
        <block symbolname="MUX3BIT" name="XLXI_10">
            <blockpin signalname="IS_ITYPE" name="sel" />
            <blockpin signalname="FUNCTIONR(2:0)" name="A0(2:0)" />
            <blockpin signalname="OPCODE(2:0)" name="A1(2:0)" />
            <blockpin signalname="OP_OR_FUNC(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="MUX32bit" name="DINT_MUX">
            <blockpin signalname="DINT_sel" name="sel" />
            <blockpin signalname="ALU_OUT(31:0)" name="A(31:0)" />
            <blockpin signalname="SHIFT_Out(31:0)" name="B(31:0)" />
            <blockpin signalname="DINT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="REG32CE" name="MAR">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="MAR_EN" name="CE" />
            <blockpin signalname="DINT(31:0)" name="DIN(31:0)" />
            <blockpin signalname="MAR_O(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MMU" name="XLXI_16">
            <blockpin signalname="AMUX_Out(31:0)" name="MMU_In(31:0)" />
            <blockpin signalname="AO(31:0)" name="MMU_Out(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="AMUX">
            <blockpin signalname="A_sel" name="sel" />
            <blockpin signalname="PC_OUT(31:0)" name="A(31:0)" />
            <blockpin signalname="MAR_O(31:0)" name="B(31:0)" />
            <blockpin signalname="AMUX_Out(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_152">
            <blockpin signalname="XLXN_208" name="G" />
        </block>
        <block symbolname="REG_PC" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_STEP" name="ce" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="DINT(31:0)" name="PC_IN(31:0)" />
            <blockpin signalname="PC_OUT(31:0)" name="PC_Out(31:0)" />
        </block>
        <block symbolname="REG_A_B_C" name="Register_C">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="C_EN" name="ce" />
            <blockpin signalname="DINT(31:0)" name="REG_ABC_In(31:0)" />
            <blockpin signalname="C(31:0)" name="REG_ABC_Out(31:0)" />
        </block>
        <block symbolname="REG_A_B_C" name="Register_B">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="B_EN" name="ce" />
            <blockpin signalname="B_GPR(31:0)" name="REG_ABC_In(31:0)" />
            <blockpin signalname="B(31:0)" name="REG_ABC_Out(31:0)" />
        </block>
        <block symbolname="REG_A_B_C" name="Register_A">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="A_EN" name="ce" />
            <blockpin signalname="A_GPR(31:0)" name="REG_ABC_In(31:0)" />
            <blockpin signalname="A(31:0)" name="REG_ABC_Out(31:0)" />
        </block>
        <block symbolname="DLX_Full_Control" name="XLXI_162">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="OPCODE(5:0)" name="OPCODE(5:0)" />
            <blockpin signalname="Immediate(15:0)" name="imm(15:0)" />
            <blockpin signalname="BUSY" name="BUSY" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="Mac_State(1:0)" name="Mac_State(1:0)" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="IR_CE" name="IR_CE" />
            <blockpin signalname="PC_STEP" name="PC_STEP" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="A_EN" name="A_EN" />
            <blockpin signalname="B_EN" name="B_EN" />
            <blockpin signalname="C_EN" name="C_EN" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="MDR_EN" name="MDR_EN" />
            <blockpin signalname="A_sel" name="A_sel" />
            <blockpin signalname="DINT_sel" name="DINT_sel" />
            <blockpin signalname="JLINK" name="JLINK" />
            <blockpin signalname="TEST" name="TEST" />
            <blockpin signalname="MAR_EN" name="MAR_EN" />
            <blockpin signalname="MDR_sel" name="MDR_sel" />
            <blockpin signalname="SHIFT_EN" name="SHIFT" />
            <blockpin signalname="S1_sel(1:0)" name="S1_sel(1:0)" />
            <blockpin signalname="ADD" name="ADD" />
            <blockpin signalname="S2_sel(1:0)" name="S2_sel(1:0)" />
            <blockpin signalname="DLX_state(4:0)" name="DLX_State(4:0)" />
            <blockpin signalname="IS_ITYPE" name="ITYPE" />
            <blockpin signalname="stop_n" name="stop_n" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <instance x="3232" y="1104" name="XLXI_4" orien="R0">
        </instance>
        <instance x="3040" y="2000" name="S1_MUX" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk">
            <wire x2="368" y1="464" y2="464" x1="224" />
        </branch>
        <branch name="reset">
            <wire x2="368" y1="560" y2="560" x1="224" />
        </branch>
        <branch name="ACK_N">
            <wire x2="368" y1="656" y2="656" x1="224" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="368" y1="752" y2="752" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="464" name="clk" orien="R180" />
        <iomarker fontsize="28" x="224" y="560" name="reset" orien="R180" />
        <iomarker fontsize="28" x="224" y="656" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="224" y="752" name="STEP_EN" orien="R180" />
        <branch name="FUNCTIONR(5:0)">
            <wire x2="720" y1="288" y2="288" x1="480" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="672" y1="560" y2="560" x1="496" />
        </branch>
        <branch name="MW">
            <wire x2="688" y1="656" y2="656" x1="496" />
        </branch>
        <branch name="MR">
            <wire x2="672" y1="752" y2="752" x1="496" />
        </branch>
        <iomarker fontsize="28" x="720" y="288" name="FUNCTIONR(5:0)" orien="R0" />
        <iomarker fontsize="28" x="672" y="560" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="688" y="656" name="MW" orien="R0" />
        <iomarker fontsize="28" x="672" y="752" name="MR" orien="R0" />
        <branch name="BUSY">
            <wire x2="272" y1="976" y2="976" x1="112" />
        </branch>
        <branch name="IR_CE">
            <wire x2="272" y1="1072" y2="1072" x1="112" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="256" y1="1168" y2="1168" x1="112" />
        </branch>
        <branch name="A_EN">
            <wire x2="272" y1="1264" y2="1264" x1="112" />
        </branch>
        <branch name="B_EN">
            <wire x2="256" y1="1360" y2="1360" x1="112" />
        </branch>
        <iomarker fontsize="28" x="272" y="976" name="BUSY" orien="R0" />
        <iomarker fontsize="28" x="272" y="1072" name="IR_CE" orien="R0" />
        <iomarker fontsize="28" x="256" y="1168" name="GPR_WE" orien="R0" />
        <iomarker fontsize="28" x="272" y="1264" name="A_EN" orien="R0" />
        <iomarker fontsize="28" x="256" y="1360" name="B_EN" orien="R0" />
        <branch name="AS_N">
            <wire x2="704" y1="896" y2="896" x1="560" />
        </branch>
        <branch name="WR_N">
            <wire x2="704" y1="976" y2="976" x1="576" />
        </branch>
        <branch name="Mac_State(1:0)">
            <wire x2="704" y1="1072" y2="1072" x1="576" />
        </branch>
        <branch name="PC_STEP">
            <wire x2="704" y1="1168" y2="1168" x1="576" />
        </branch>
        <branch name="C_EN">
            <wire x2="720" y1="1264" y2="1264" x1="576" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="720" y1="1360" y2="1360" x1="576" />
        </branch>
        <branch name="A_sel">
            <wire x2="720" y1="1472" y2="1472" x1="560" />
        </branch>
        <branch name="JLINK">
            <wire x2="720" y1="1552" y2="1552" x1="576" />
        </branch>
        <iomarker fontsize="28" x="704" y="896" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="704" y="976" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="704" y="1072" name="Mac_State(1:0)" orien="R0" />
        <iomarker fontsize="28" x="704" y="1168" name="PC_STEP" orien="R0" />
        <iomarker fontsize="28" x="720" y="1264" name="C_EN" orien="R0" />
        <iomarker fontsize="28" x="720" y="1360" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="720" y="1472" name="A_sel" orien="R0" />
        <iomarker fontsize="28" x="720" y="1552" name="JLINK" orien="R0" />
        <branch name="MDR_EN">
            <wire x2="304" y1="1488" y2="1488" x1="112" />
        </branch>
        <branch name="DINT_sel">
            <wire x2="288" y1="1584" y2="1584" x1="112" />
        </branch>
        <branch name="TEST">
            <wire x2="304" y1="1680" y2="1680" x1="112" />
        </branch>
        <branch name="MAR_EN">
            <wire x2="288" y1="1776" y2="1776" x1="128" />
        </branch>
        <iomarker fontsize="28" x="304" y="1488" name="MDR_EN" orien="R0" />
        <iomarker fontsize="28" x="288" y="1584" name="DINT_sel" orien="R0" />
        <iomarker fontsize="28" x="304" y="1680" name="TEST" orien="R0" />
        <iomarker fontsize="28" x="288" y="1776" name="MAR_EN" orien="R0" />
        <branch name="MDR_sel">
            <wire x2="704" y1="1648" y2="1648" x1="576" />
        </branch>
        <branch name="IS_ITYPE">
            <wire x2="704" y1="1712" y2="1712" x1="576" />
        </branch>
        <branch name="ADD">
            <wire x2="720" y1="1776" y2="1776" x1="576" />
        </branch>
        <branch name="S2_sel(1:0)">
            <wire x2="256" y1="1936" y2="1936" x1="128" />
        </branch>
        <branch name="S1_sel(1:0)">
            <wire x2="720" y1="1856" y2="1856" x1="576" />
        </branch>
        <branch name="DLX_state(4:0)">
            <wire x2="704" y1="1936" y2="1936" x1="576" />
        </branch>
        <iomarker fontsize="28" x="256" y="1936" name="S2_sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="704" y="1648" name="MDR_sel" orien="R0" />
        <iomarker fontsize="28" x="704" y="1712" name="IS_ITYPE" orien="R0" />
        <iomarker fontsize="28" x="720" y="1776" name="ADD" orien="R0" />
        <iomarker fontsize="28" x="720" y="1856" name="S1_sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="704" y="1936" name="DLX_state(4:0)" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="624" type="branch" />
            <wire x2="3232" y1="624" y2="624" x1="3152" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="688" type="branch" />
            <wire x2="3232" y1="688" y2="688" x1="3152" />
        </branch>
        <branch name="RS1(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="752" type="branch" />
            <wire x2="3232" y1="752" y2="752" x1="3136" />
        </branch>
        <branch name="RS2(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="816" type="branch" />
            <wire x2="3232" y1="816" y2="816" x1="3136" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="880" type="branch" />
            <wire x2="3232" y1="880" y2="880" x1="3120" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="1008" type="branch" />
            <wire x2="3232" y1="1008" y2="1008" x1="3120" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="1072" type="branch" />
            <wire x2="3232" y1="1072" y2="1072" x1="3120" />
        </branch>
        <branch name="A_GPR(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3712" y="624" type="branch" />
            <wire x2="3712" y1="624" y2="624" x1="3616" />
        </branch>
        <branch name="B_GPR(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3712" y="768" type="branch" />
            <wire x2="3712" y1="768" y2="768" x1="3616" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3712" y="912" type="branch" />
            <wire x2="3712" y1="912" y2="912" x1="3616" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3712" y="1056" type="branch" />
            <wire x2="3712" y1="1056" y2="1056" x1="3616" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4016" y="1328" type="branch" />
            <wire x2="4128" y1="1328" y2="1328" x1="4016" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="1392" type="branch" />
            <wire x2="4128" y1="1392" y2="1392" x1="4032" />
        </branch>
        <instance x="4992" y="1488" name="MDR" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4880" y="1328" type="branch" />
            <wire x2="4992" y1="1328" y2="1328" x1="4880" />
        </branch>
        <branch name="MDR_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4912" y="1392" type="branch" />
            <wire x2="4992" y1="1392" y2="1392" x1="4912" />
        </branch>
        <branch name="PC_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1712" type="branch" />
            <wire x2="3040" y1="1712" y2="1712" x1="2896" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1776" type="branch" />
            <wire x2="3040" y1="1776" y2="1776" x1="2912" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1840" type="branch" />
            <wire x2="3040" y1="1840" y2="1840" x1="2928" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1904" type="branch" />
            <wire x2="3040" y1="1904" y2="1904" x1="2928" />
        </branch>
        <branch name="S1_sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1968" type="branch" />
            <wire x2="3040" y1="1968" y2="1968" x1="2928" />
        </branch>
        <branch name="S1_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3520" y="1712" type="branch" />
            <wire x2="3520" y1="1712" y2="1712" x1="3424" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5856" y="1168" type="branch" />
            <wire x2="5936" y1="1168" y2="1168" x1="5856" />
        </branch>
        <branch name="IR_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5856" y="1264" type="branch" />
            <wire x2="5936" y1="1264" y2="1264" x1="5856" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5856" y="1360" type="branch" />
            <wire x2="5936" y1="1360" y2="1360" x1="5856" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5888" y="1456" type="branch" />
            <wire x2="5936" y1="1456" y2="1456" x1="5888" />
        </branch>
        <branch name="IS_ITYPE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5888" y="1552" type="branch" />
            <wire x2="5936" y1="1552" y2="1552" x1="5888" />
        </branch>
        <instance x="5936" y="1584" name="XLXI_118" orien="R0">
        </instance>
        <branch name="RS2(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6416" y="1168" type="branch" />
            <wire x2="6416" y1="1168" y2="1168" x1="6320" />
        </branch>
        <branch name="RS1(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6400" y="1232" type="branch" />
            <wire x2="6400" y1="1232" y2="1232" x1="6320" />
        </branch>
        <branch name="FUNCTIONR(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6400" y="1296" type="branch" />
            <wire x2="6400" y1="1296" y2="1296" x1="6320" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6416" y="1424" type="branch" />
            <wire x2="6416" y1="1424" y2="1424" x1="6320" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6400" y="1552" type="branch" />
            <wire x2="6400" y1="1552" y2="1552" x1="6320" />
        </branch>
        <instance x="4944" y="2000" name="S2_MUX" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4832" y="1712" type="branch" />
            <wire x2="4944" y1="1712" y2="1712" x1="4832" />
        </branch>
        <branch name="Zero32(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="1840" type="branch" />
            <wire x2="4944" y1="1840" y2="1840" x1="4848" />
        </branch>
        <branch name="Zero31_one(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="1904" type="branch" />
            <wire x2="4944" y1="1904" y2="1904" x1="4848" />
        </branch>
        <branch name="S2_sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4848" y="1968" type="branch" />
            <wire x2="4944" y1="1968" y2="1968" x1="4848" />
        </branch>
        <instance x="4160" y="2464" name="XLXI_15" orien="R0">
        </instance>
        <branch name="TEST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="2304" type="branch" />
            <wire x2="4160" y1="2304" y2="2304" x1="4080" />
        </branch>
        <branch name="OP_OR_FUNC(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4096" y="2368" type="branch" />
            <wire x2="4160" y1="2368" y2="2368" x1="4096" />
        </branch>
        <branch name="ADD">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="2432" type="branch" />
            <wire x2="4160" y1="2432" y2="2432" x1="4080" />
        </branch>
        <branch name="ALU_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4688" y="2176" type="branch" />
            <wire x2="4688" y1="2176" y2="2176" x1="4576" />
        </branch>
        <branch name="XLXN_208">
            <wire x2="4688" y1="2432" y2="2432" x1="4576" />
            <wire x2="4688" y1="2432" y2="2480" x1="4688" />
        </branch>
        <instance x="3088" y="2416" name="XLXI_8" orien="R0">
        </instance>
        <branch name="FUNCTIONR(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="2320" type="branch" />
            <wire x2="3088" y1="2320" y2="2320" x1="2976" />
        </branch>
        <branch name="S1_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="2384" type="branch" />
            <wire x2="3088" y1="2384" y2="2384" x1="2976" />
        </branch>
        <branch name="SHIFT_Out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="2256" type="branch" />
            <wire x2="3616" y1="2256" y2="2256" x1="3472" />
        </branch>
        <instance x="4224" y="1008" name="XLXI_9" orien="R0">
        </instance>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="848" type="branch" />
            <wire x2="4224" y1="848" y2="848" x1="4112" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="912" type="branch" />
            <wire x2="4224" y1="912" y2="912" x1="4144" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="976" type="branch" />
            <wire x2="4224" y1="976" y2="976" x1="4144" />
        </branch>
        <instance x="1552" y="2912" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Zero31_one(31:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="2880" type="branch" />
            <wire x2="2064" y1="2880" y2="2880" x1="1936" />
        </branch>
        <instance x="1536" y="2720" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Zero32(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="2688" type="branch" />
            <wire x2="2080" y1="2688" y2="2688" x1="1920" />
        </branch>
        <instance x="1760" y="3056" name="XLXI_115" orien="R270" />
        <branch name="Zero31_one(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="2992" type="branch" />
            <wire x2="2064" y1="2992" y2="2992" x1="1760" />
        </branch>
        <instance x="1696" y="3360" name="XLXI_10" orien="R0">
        </instance>
        <branch name="IS_ITYPE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="3200" type="branch" />
            <wire x2="1696" y1="3200" y2="3200" x1="1520" />
        </branch>
        <branch name="FUNCTIONR(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="3264" type="branch" />
            <wire x2="1696" y1="3264" y2="3264" x1="1520" />
        </branch>
        <branch name="OPCODE(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="3328" type="branch" />
            <wire x2="1696" y1="3328" y2="3328" x1="1536" />
        </branch>
        <branch name="OP_OR_FUNC(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="3200" type="branch" />
            <wire x2="2176" y1="3200" y2="3200" x1="2080" />
        </branch>
        <instance x="3552" y="2784" name="DINT_MUX" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="2624" type="branch" />
            <wire x2="3552" y1="2624" y2="2624" x1="3456" />
        </branch>
        <branch name="ALU_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="2688" type="branch" />
            <wire x2="3552" y1="2688" y2="2688" x1="3456" />
        </branch>
        <branch name="SHIFT_Out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="2752" type="branch" />
            <wire x2="3552" y1="2752" y2="2752" x1="3456" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="2624" type="branch" />
            <wire x2="4080" y1="2624" y2="2624" x1="3936" />
        </branch>
        <instance x="3552" y="3072" name="MAR" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="2912" type="branch" />
            <wire x2="3472" y1="2912" y2="2912" x1="3456" />
            <wire x2="3552" y1="2912" y2="2912" x1="3472" />
        </branch>
        <branch name="MAR_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3472" y="2976" type="branch" />
            <wire x2="3488" y1="2976" y2="2976" x1="3472" />
            <wire x2="3552" y1="2976" y2="2976" x1="3488" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="3040" type="branch" />
            <wire x2="3472" y1="3040" y2="3040" x1="3456" />
            <wire x2="3552" y1="3040" y2="3040" x1="3472" />
        </branch>
        <branch name="MAR_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4016" y="2912" type="branch" />
            <wire x2="4000" y1="2912" y2="2912" x1="3936" />
            <wire x2="4016" y1="2912" y2="2912" x1="4000" />
        </branch>
        <line x2="6960" y1="3612" y2="3612" x1="20" />
        <instance x="3472" y="3552" name="XLXI_16" orien="R0">
        </instance>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="3520" type="branch" />
            <wire x2="4064" y1="3520" y2="3520" x1="3936" />
        </branch>
        <instance x="3520" y="3376" name="AMUX" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="A_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3424" y="3216" type="branch" />
            <wire x2="3520" y1="3216" y2="3216" x1="3424" />
        </branch>
        <branch name="PC_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3424" y="3280" type="branch" />
            <wire x2="3520" y1="3280" y2="3280" x1="3424" />
        </branch>
        <branch name="MAR_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3424" y="3344" type="branch" />
            <wire x2="3520" y1="3344" y2="3344" x1="3424" />
        </branch>
        <branch name="AMUX_Out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="3520" type="branch" />
            <wire x2="3472" y1="3520" y2="3520" x1="3376" />
        </branch>
        <branch name="AMUX_Out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4048" y="3216" type="branch" />
            <wire x2="4048" y1="3216" y2="3216" x1="3904" />
        </branch>
        <instance x="4624" y="2608" name="XLXI_152" orien="R0" />
        <line x2="1072" y1="56" y2="3596" x1="1072" />
        <text style="fontsize:42;fontname:Arial" x="456" y="136">Signals</text>
        <text style="fontsize:42;fontname:Arial" x="3600" y="84">Connections</text>
        <branch name="DI(31:0)">
            <wire x2="368" y1="288" y2="288" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="288" name="DI(31:0)" orien="R180" />
        <branch name="DO(31:0)">
            <wire x2="704" y1="368" y2="368" x1="480" />
        </branch>
        <iomarker fontsize="28" x="704" y="368" name="DO(31:0)" orien="R0" />
        <branch name="AO(31:0)">
            <wire x2="704" y1="464" y2="464" x1="496" />
        </branch>
        <iomarker fontsize="28" x="704" y="464" name="AO(31:0)" orien="R0" />
        <branch name="S2_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5440" y="1712" type="branch" />
            <wire x2="5440" y1="1712" y2="1712" x1="5328" />
        </branch>
        <instance x="2464" y="1504" name="XLXI_7" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1280" type="branch" />
            <wire x2="2368" y1="1280" y2="1280" x1="2352" />
            <wire x2="2464" y1="1280" y2="1280" x1="2368" />
        </branch>
        <branch name="PC_STEP">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1344" type="branch" />
            <wire x2="2368" y1="1344" y2="1344" x1="2352" />
            <wire x2="2464" y1="1344" y2="1344" x1="2368" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1408" type="branch" />
            <wire x2="2368" y1="1408" y2="1408" x1="2352" />
            <wire x2="2464" y1="1408" y2="1408" x1="2368" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1536" type="branch" />
            <wire x2="2368" y1="1536" y2="1536" x1="2352" />
            <wire x2="2464" y1="1536" y2="1536" x1="2368" />
        </branch>
        <branch name="PC_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="1536" type="branch" />
            <wire x2="2944" y1="1536" y2="1536" x1="2848" />
        </branch>
        <instance x="3248" y="384" name="Register_C" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="64" type="instance" />
        </instance>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="336" type="branch" />
            <wire x2="3744" y1="336" y2="336" x1="3632" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="224" type="branch" />
            <wire x2="3248" y1="224" y2="224" x1="3168" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="288" type="branch" />
            <wire x2="3248" y1="288" y2="288" x1="3168" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="416" type="branch" />
            <wire x2="3248" y1="416" y2="416" x1="3168" />
        </branch>
        <instance x="4128" y="1488" name="Register_B" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="64" type="instance" />
        </instance>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4608" y="1440" type="branch" />
            <wire x2="4608" y1="1440" y2="1440" x1="4512" />
        </branch>
        <branch name="B_GPR(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="1520" type="branch" />
            <wire x2="4128" y1="1520" y2="1520" x1="4032" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="1312" type="branch" />
            <wire x2="3296" y1="1312" y2="1312" x1="3200" />
        </branch>
        <branch name="A_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3216" y="1376" type="branch" />
            <wire x2="3296" y1="1376" y2="1376" x1="3216" />
        </branch>
        <instance x="3296" y="1472" name="Register_A" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="64" type="instance" />
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3776" y="1424" type="branch" />
            <wire x2="3776" y1="1424" y2="1424" x1="3680" />
        </branch>
        <branch name="A_GPR(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3216" y="1504" type="branch" />
            <wire x2="3296" y1="1504" y2="1504" x1="3216" />
        </branch>
        <branch name="DD(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="944" type="branch" />
            <wire x2="3232" y1="944" y2="944" x1="3104" />
        </branch>
        <branch name="DD(4:0)">
            <wire x2="368" y1="368" y2="368" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="368" name="DD(4:0)" orien="R180" />
        <branch name="Immediate(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6400" y="1360" type="branch" />
            <wire x2="6400" y1="1360" y2="1360" x1="6320" />
        </branch>
        <branch name="Immediate(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="2112" type="branch" />
            <wire x2="1440" y1="2112" y2="2112" x1="1312" />
        </branch>
        <branch name="IS_ITYPE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2112" type="branch" />
            <wire x2="2000" y1="2112" y2="2112" x1="1920" />
        </branch>
        <branch name="DLX_state(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2048" type="branch" />
            <wire x2="2000" y1="2048" y2="2048" x1="1920" />
        </branch>
        <branch name="S2_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1984" type="branch" />
            <wire x2="2000" y1="1984" y2="1984" x1="1920" />
        </branch>
        <branch name="ADD">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1920" type="branch" />
            <wire x2="2016" y1="1920" y2="1920" x1="1920" />
        </branch>
        <branch name="S1_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1856" type="branch" />
            <wire x2="2016" y1="1856" y2="1856" x1="1920" />
        </branch>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1728" type="branch" />
            <wire x2="2016" y1="1728" y2="1728" x1="1920" />
        </branch>
        <branch name="MAR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1664" type="branch" />
            <wire x2="2016" y1="1664" y2="1664" x1="1920" />
        </branch>
        <branch name="TEST">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1600" type="branch" />
            <wire x2="2016" y1="1600" y2="1600" x1="1920" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1472" type="branch" />
            <wire x2="2016" y1="1472" y2="1472" x1="1920" />
        </branch>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1408" type="branch" />
            <wire x2="2016" y1="1408" y2="1408" x1="1920" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1744" type="branch" />
            <wire x2="1440" y1="1744" y2="1744" x1="1360" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1472" type="branch" />
            <wire x2="1440" y1="1472" y2="1472" x1="1344" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1200" type="branch" />
            <wire x2="1440" y1="1200" y2="1200" x1="1328" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="928" type="branch" />
            <wire x2="1440" y1="928" y2="928" x1="1344" />
        </branch>
        <branch name="A_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1344" type="branch" />
            <wire x2="2000" y1="1344" y2="1344" x1="1920" />
        </branch>
        <branch name="MDR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1280" type="branch" />
            <wire x2="2000" y1="1280" y2="1280" x1="1920" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1216" type="branch" />
            <wire x2="2000" y1="1216" y2="1216" x1="1920" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1152" type="branch" />
            <wire x2="2000" y1="1152" y2="1152" x1="1920" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1088" type="branch" />
            <wire x2="2032" y1="1088" y2="1088" x1="1920" />
        </branch>
        <branch name="A_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1024" type="branch" />
            <wire x2="2016" y1="1024" y2="1024" x1="1920" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="960" type="branch" />
            <wire x2="2000" y1="960" y2="960" x1="1920" />
        </branch>
        <branch name="PC_STEP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="896" type="branch" />
            <wire x2="1984" y1="896" y2="896" x1="1920" />
        </branch>
        <branch name="IR_CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="832" type="branch" />
            <wire x2="1968" y1="832" y2="832" x1="1920" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="768" type="branch" />
            <wire x2="1968" y1="768" y2="768" x1="1920" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="704" type="branch" />
            <wire x2="1968" y1="704" y2="704" x1="1920" />
        </branch>
        <branch name="Mac_State(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="640" type="branch" />
            <wire x2="1968" y1="640" y2="640" x1="1920" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="448" type="branch" />
            <wire x2="2000" y1="448" y2="448" x1="1920" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="512" type="branch" />
            <wire x2="2000" y1="512" y2="512" x1="1920" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="576" type="branch" />
            <wire x2="2000" y1="576" y2="576" x1="1920" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="656" type="branch" />
            <wire x2="1440" y1="656" y2="656" x1="1376" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="384" type="branch" />
            <wire x2="1440" y1="384" y2="384" x1="1360" />
        </branch>
        <branch name="Immediate(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4832" y="1776" type="branch" />
            <wire x2="4944" y1="1776" y2="1776" x1="4832" />
        </branch>
        <branch name="Immediate(31:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="6416" y="1488" type="branch" />
            <wire x2="6416" y1="1488" y2="1488" x1="6320" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5488" y="1328" type="branch" />
            <wire x2="5488" y1="1328" y2="1328" x1="5376" />
        </branch>
        <branch name="MDR_In(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4912" y="1456" type="branch" />
            <wire x2="4992" y1="1456" y2="1456" x1="4912" />
        </branch>
        <branch name="MDR_In(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4704" y="848" type="branch" />
            <wire x2="4704" y1="848" y2="848" x1="4608" />
        </branch>
        <branch name="SHIFT_EN">
            <wire x2="256" y1="1872" y2="1872" x1="128" />
        </branch>
        <iomarker fontsize="28" x="256" y="1872" name="SHIFT_EN" orien="R0" />
        <branch name="SHIFT_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1792" type="branch" />
            <wire x2="2032" y1="1792" y2="1792" x1="1920" />
        </branch>
        <branch name="SHIFT_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="2256" type="branch" />
            <wire x2="3088" y1="2256" y2="2256" x1="3008" />
        </branch>
        <branch name="stop_n">
            <wire x2="288" y1="880" y2="880" x1="112" />
        </branch>
        <iomarker fontsize="28" x="288" y="880" name="stop_n" orien="R0" />
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="384" type="branch" />
            <wire x2="2032" y1="384" y2="384" x1="1920" />
        </branch>
        <instance x="1440" y="2080" name="XLXI_162" orien="R0">
        </instance>
        <branch name="S2_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="2240" type="branch" />
            <wire x2="4160" y1="2240" y2="2240" x1="4064" />
        </branch>
        <branch name="S1_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4048" y="2176" type="branch" />
            <wire x2="4160" y1="2176" y2="2176" x1="4048" />
        </branch>
    </sheet>
</drawing>