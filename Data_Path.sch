<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Din(31:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="STEP_EN" />
        <signal name="MR" />
        <signal name="State_Of_Mac(1:0)" />
        <signal name="reset" />
        <signal name="ACK_N" />
        <signal name="AO(31:0)" />
        <signal name="PC_STEP" />
        <signal name="GPR_WE" />
        <signal name="B_EN" />
        <signal name="STOP_N" />
        <signal name="State_Of_DLX(2:0)" />
        <signal name="BUSY" />
        <signal name="MW" />
        <signal name="C_EN" />
        <signal name="IN_INIT" />
        <signal name="sel" />
        <signal name="IR_CE" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="AO(15:0)" />
        <signal name="PC(15:0)" />
        <signal name="clk" />
        <signal name="Imm(15:0)" />
        <signal name="RD(4:0)" />
        <signal name="RS1(4:0)" />
        <signal name="OPCODE(5:0)" />
        <signal name="A_D_OUT(31:0)" />
        <signal name="AEQZero" />
        <signal name="B_D_OUT(31:0)" />
        <signal name="B_tmp(31:0)" />
        <signal name="C_In(31:0)" />
        <signal name="D_D_OUT(31:0)" />
        <signal name="AO(31:16)" />
        <port polarity="Input" name="Din(31:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="State_Of_Mac(1:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Output" name="PC_STEP" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="B_EN" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="State_Of_DLX(2:0)" />
        <port polarity="Output" name="BUSY" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="C_EN" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="sel" />
        <port polarity="Output" name="IR_CE" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="RD(4:0)" />
        <port polarity="Output" name="RS1(4:0)" />
        <port polarity="Output" name="OPCODE(5:0)" />
        <port polarity="Output" name="A_D_OUT(31:0)" />
        <port polarity="Output" name="AEQZero" />
        <port polarity="Output" name="B_D_OUT(31:0)" />
        <port polarity="Output" name="D_D_OUT(31:0)" />
        <blockdef name="DLX_LS">
            <timestamp>2022-5-10T9:50:21</timestamp>
            <rect width="368" x="64" y="-960" height="960" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-716" height="24" />
            <line x2="0" y1="-704" y2="-704" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="496" y1="-928" y2="-928" x1="432" />
            <line x2="496" y1="-864" y2="-864" x1="432" />
            <line x2="496" y1="-800" y2="-800" x1="432" />
            <line x2="496" y1="-736" y2="-736" x1="432" />
            <rect width="64" x="432" y="-684" height="24" />
            <line x2="496" y1="-672" y2="-672" x1="432" />
            <rect width="64" x="432" y="-620" height="24" />
            <line x2="496" y1="-608" y2="-608" x1="432" />
            <line x2="496" y1="-544" y2="-544" x1="432" />
            <line x2="496" y1="-480" y2="-480" x1="432" />
            <line x2="496" y1="-416" y2="-416" x1="432" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="GPR">
            <timestamp>2022-5-10T9:20:34</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2022-5-10T9:53:49</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="IR">
            <timestamp>2022-5-10T9:54:24</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="Zero_Register16Bit">
            <timestamp>2022-5-9T19:17:24</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="MUX16bit">
            <timestamp>2015-7-12T12:5:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="MUX16bit" name="XLXI_8">
            <blockpin signalname="sel" name="sel" />
            <blockpin signalname="PC(15:0)" name="A(15:0)" />
            <blockpin signalname="Imm(15:0)" name="B(15:0)" />
            <blockpin signalname="AO(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="PC" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_STEP" name="CE" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="PC(15:0)" name="PC(15:0)" />
        </block>
        <block symbolname="IR" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="IR_CE" name="CE" />
            <blockpin signalname="Din(31:0)" name="DIN(31:0)" />
            <blockpin signalname="Imm(15:0)" name="Immediate(15:0)" />
            <blockpin signalname="RD(4:0)" name="RD(4:0)" />
            <blockpin signalname="RS1(4:0)" name="RS1(4:0)" />
            <blockpin signalname="OPCODE(5:0)" name="OPCODE(5:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_9">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="B_EN" name="CE" />
            <blockpin signalname="B_tmp(31:0)" name="DIN(31:0)" />
            <blockpin signalname="B_D_OUT(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="GPR" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="C_In(31:0)" name="C(31:0)" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="RS1(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="RD(4:0)" name="Badr(4:0)" />
            <blockpin signalname="RD(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="A_D_OUT(31:0)" name="A(31:0)" />
            <blockpin signalname="B_tmp(31:0)" name="B(31:0)" />
            <blockpin signalname="D_D_OUT(31:0)" name="D(31:0)" />
            <blockpin signalname="AEQZero" name="AEQZero" />
        </block>
        <block symbolname="REG32CE" name="XLXI_7">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="C_EN" name="CE" />
            <blockpin signalname="Din(31:0)" name="DIN(31:0)" />
            <blockpin signalname="C_In(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="Zero_Register16Bit" name="XLXI_6">
            <blockpin signalname="AO(31:16)" name="Zero_Out(15:0)" />
        </block>
        <block symbolname="DLX_LS" name="XLXI_1">
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="OPCODE(5:0)" name="OPCODE(5:0)" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_STEP" name="PC_STEP" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="B_EN" name="B_EN" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="State_Of_DLX(2:0)" name="State_Of_DLX(2:0)" />
            <blockpin signalname="State_Of_Mac(1:0)" name="State_Of_Mac(1:0)" />
            <blockpin signalname="BUSY" name="BUSY" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="C_EN" name="C_EN" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="sel" name="sel" />
            <blockpin signalname="IR_CE" name="IR_CE" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="ACK_N">
            <wire x2="608" y1="384" y2="384" x1="272" />
        </branch>
        <branch name="Din(31:0)">
            <wire x2="608" y1="464" y2="464" x1="272" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="608" y1="544" y2="544" x1="272" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="624" y1="304" y2="304" x1="256" />
        </branch>
        <branch name="reset">
            <wire x2="624" y1="240" y2="240" x1="256" />
        </branch>
        <branch name="STOP_N">
            <wire x2="1344" y1="400" y2="400" x1="1008" />
        </branch>
        <branch name="BUSY">
            <wire x2="1344" y1="480" y2="480" x1="1008" />
        </branch>
        <branch name="MW">
            <wire x2="1344" y1="560" y2="560" x1="1008" />
        </branch>
        <branch name="B_EN">
            <wire x2="1360" y1="320" y2="320" x1="992" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="1360" y1="256" y2="256" x1="992" />
        </branch>
        <branch name="PC_STEP">
            <wire x2="1360" y1="192" y2="192" x1="992" />
        </branch>
        <branch name="sel">
            <wire x2="1936" y1="400" y2="400" x1="1600" />
        </branch>
        <branch name="IR_CE">
            <wire x2="1936" y1="480" y2="480" x1="1600" />
        </branch>
        <branch name="AS_N">
            <wire x2="1936" y1="560" y2="560" x1="1600" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="1952" y1="320" y2="320" x1="1584" />
        </branch>
        <branch name="C_EN">
            <wire x2="1952" y1="256" y2="256" x1="1584" />
        </branch>
        <branch name="MR">
            <wire x2="1952" y1="192" y2="192" x1="1584" />
        </branch>
        <branch name="RS1(4:0)">
            <wire x2="2528" y1="400" y2="400" x1="2192" />
        </branch>
        <branch name="RD(4:0)">
            <wire x2="2528" y1="480" y2="480" x1="2192" />
        </branch>
        <branch name="AO(31:0)">
            <wire x2="2544" y1="256" y2="256" x1="2176" />
        </branch>
        <branch name="WR_N">
            <wire x2="2544" y1="192" y2="192" x1="2176" />
        </branch>
        <branch name="B_D_OUT(31:0)">
            <wire x2="3120" y1="400" y2="400" x1="2784" />
        </branch>
        <branch name="A_D_OUT(31:0)">
            <wire x2="3136" y1="320" y2="320" x1="2768" />
        </branch>
        <branch name="State_Of_Mac(1:0)">
            <wire x2="3136" y1="256" y2="256" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="1360" y="192" name="PC_STEP" orien="R0" />
        <iomarker fontsize="28" x="1360" y="256" name="GPR_WE" orien="R0" />
        <iomarker fontsize="28" x="1360" y="320" name="B_EN" orien="R0" />
        <iomarker fontsize="28" x="1344" y="400" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="1344" y="480" name="BUSY" orien="R0" />
        <iomarker fontsize="28" x="1344" y="560" name="MW" orien="R0" />
        <iomarker fontsize="28" x="1952" y="192" name="MR" orien="R0" />
        <iomarker fontsize="28" x="1952" y="256" name="C_EN" orien="R0" />
        <iomarker fontsize="28" x="1952" y="320" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="1936" y="400" name="sel" orien="R0" />
        <iomarker fontsize="28" x="1936" y="480" name="IR_CE" orien="R0" />
        <iomarker fontsize="28" x="1936" y="560" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="2544" y="192" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="2544" y="256" name="AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2528" y="400" name="RS1(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2528" y="480" name="RD(4:0)" orien="R0" />
        <iomarker fontsize="28" x="3136" y="256" name="State_Of_Mac(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3136" y="320" name="A_D_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3120" y="400" name="B_D_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="256" y="240" name="reset" orien="R180" />
        <iomarker fontsize="28" x="256" y="304" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="272" y="384" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="272" y="464" name="Din(31:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="544" name="Dadr(4:0)" orien="R180" />
        <instance x="2144" y="1312" name="XLXI_8" orien="R0">
        </instance>
        <branch name="sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1152" type="branch" />
            <wire x2="2144" y1="1152" y2="1152" x1="2080" />
        </branch>
        <branch name="Imm(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1280" type="branch" />
            <wire x2="2144" y1="1280" y2="1280" x1="2096" />
        </branch>
        <branch name="AO(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1152" type="branch" />
            <wire x2="2672" y1="1152" y2="1152" x1="2528" />
        </branch>
        <branch name="State_Of_DLX(2:0)">
            <wire x2="3152" y1="192" y2="192" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3152" y="192" name="State_Of_DLX(2:0)" orien="R0" />
        <instance x="1360" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1216" type="branch" />
            <wire x2="1360" y1="1216" y2="1216" x1="1264" />
        </branch>
        <instance x="1360" y="1616" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1392" type="branch" />
            <wire x2="1360" y1="1392" y2="1392" x1="1280" />
        </branch>
        <branch name="IR_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1488" type="branch" />
            <wire x2="1360" y1="1488" y2="1488" x1="1280" />
        </branch>
        <branch name="Din(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1584" type="branch" />
            <wire x2="1360" y1="1584" y2="1584" x1="1280" />
        </branch>
        <branch name="Imm(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1392" type="branch" />
            <wire x2="1888" y1="1392" y2="1392" x1="1776" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1456" type="branch" />
            <wire x2="1888" y1="1456" y2="1456" x1="1776" />
        </branch>
        <branch name="RS1(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1520" type="branch" />
            <wire x2="1904" y1="1520" y2="1520" x1="1776" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1584" type="branch" />
            <wire x2="1904" y1="1584" y2="1584" x1="1776" />
        </branch>
        <branch name="PC(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1216" type="branch" />
            <wire x2="2112" y1="1216" y2="1216" x1="2096" />
            <wire x2="2144" y1="1216" y2="1216" x1="2112" />
        </branch>
        <branch name="PC(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1088" type="branch" />
            <wire x2="1856" y1="1088" y2="1088" x1="1744" />
        </branch>
        <branch name="AEQZero">
            <wire x2="2544" y1="544" y2="544" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2544" y="544" name="AEQZero" orien="R0" />
        <instance x="2720" y="2048" name="XLXI_9" orien="R0">
        </instance>
        <branch name="B_D_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1888" type="branch" />
            <wire x2="3248" y1="1888" y2="1888" x1="3104" />
        </branch>
        <branch name="B_tmp(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="2016" type="branch" />
            <wire x2="2720" y1="2016" y2="2016" x1="2624" />
        </branch>
        <instance x="1792" y="2240" name="XLXI_2" orien="R0">
        </instance>
        <branch name="C_In(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="1888" type="branch" />
            <wire x2="1792" y1="1888" y2="1888" x1="1712" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="1952" type="branch" />
            <wire x2="1792" y1="1952" y2="1952" x1="1712" />
        </branch>
        <branch name="RS1(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2016" type="branch" />
            <wire x2="1792" y1="2016" y2="2016" x1="1712" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2080" type="branch" />
            <wire x2="1792" y1="2080" y2="2080" x1="1712" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2144" type="branch" />
            <wire x2="1792" y1="2144" y2="2144" x1="1712" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="2208" type="branch" />
            <wire x2="1792" y1="2208" y2="2208" x1="1728" />
        </branch>
        <branch name="A_D_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1824" type="branch" />
            <wire x2="2256" y1="1824" y2="1824" x1="2176" />
        </branch>
        <branch name="B_tmp(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1952" type="branch" />
            <wire x2="2272" y1="1952" y2="1952" x1="2176" />
        </branch>
        <branch name="D_D_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="2080" type="branch" />
            <wire x2="2272" y1="2080" y2="2080" x1="2176" />
        </branch>
        <branch name="AEQZero">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="2208" type="branch" />
            <wire x2="2272" y1="2208" y2="2208" x1="2176" />
        </branch>
        <instance x="816" y="2160" name="XLXI_7" orien="R0">
        </instance>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="2064" type="branch" />
            <wire x2="816" y1="2064" y2="2064" x1="720" />
        </branch>
        <branch name="Din(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="2128" type="branch" />
            <wire x2="816" y1="2128" y2="2128" x1="720" />
        </branch>
        <branch name="C_In(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="2000" type="branch" />
            <wire x2="1296" y1="2000" y2="2000" x1="1200" />
        </branch>
        <instance x="1328" y="944" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2512" y="320" name="OPCODE(5:0)" orien="R0" />
        <branch name="OPCODE(5:0)">
            <wire x2="2512" y1="320" y2="320" x1="2176" />
        </branch>
        <text style="fontsize:42;fontname:Arial" x="1484" y="68">Signals</text>
        <text style="fontsize:42;fontname:Arial" x="1500" y="724">Connections</text>
        <line x2="3496" y1="644" y2="644" x1="12" />
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1952" type="branch" />
            <wire x2="2720" y1="1952" y2="1952" x1="2640" />
        </branch>
        <branch name="clk">
            <wire x2="624" y1="176" y2="176" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="176" name="clk" orien="R180" />
        <instance x="288" y="1824" name="XLXI_1" orien="R0">
        </instance>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="896" type="branch" />
            <wire x2="288" y1="896" y2="896" x1="176" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1120" type="branch" />
            <wire x2="288" y1="1120" y2="1120" x1="208" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1344" type="branch" />
            <wire x2="288" y1="1344" y2="1344" x1="224" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1568" type="branch" />
            <wire x2="288" y1="1568" y2="1568" x1="208" />
        </branch>
        <branch name="PC_STEP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="896" type="branch" />
            <wire x2="896" y1="896" y2="896" x1="784" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="960" type="branch" />
            <wire x2="880" y1="960" y2="960" x1="784" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1024" type="branch" />
            <wire x2="880" y1="1024" y2="1024" x1="784" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1088" type="branch" />
            <wire x2="896" y1="1088" y2="1088" x1="784" />
        </branch>
        <branch name="State_Of_DLX(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1152" type="branch" />
            <wire x2="896" y1="1152" y2="1152" x1="784" />
        </branch>
        <branch name="State_Of_Mac(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1216" type="branch" />
            <wire x2="880" y1="1216" y2="1216" x1="784" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1280" type="branch" />
            <wire x2="880" y1="1280" y2="1280" x1="784" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1344" type="branch" />
            <wire x2="880" y1="1344" y2="1344" x1="784" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1408" type="branch" />
            <wire x2="880" y1="1408" y2="1408" x1="784" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1472" type="branch" />
            <wire x2="880" y1="1472" y2="1472" x1="784" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1536" type="branch" />
            <wire x2="880" y1="1536" y2="1536" x1="784" />
        </branch>
        <branch name="sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1600" type="branch" />
            <wire x2="880" y1="1600" y2="1600" x1="784" />
        </branch>
        <branch name="IR_CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1664" type="branch" />
            <wire x2="880" y1="1664" y2="1664" x1="784" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1728" type="branch" />
            <wire x2="880" y1="1728" y2="1728" x1="784" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1792" type="branch" />
            <wire x2="896" y1="1792" y2="1792" x1="784" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="2000" type="branch" />
            <wire x2="816" y1="2000" y2="2000" x1="736" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1824" type="branch" />
            <wire x2="1792" y1="1824" y2="1824" x1="1696" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="1888" type="branch" />
            <wire x2="2720" y1="1888" y2="1888" x1="2608" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1088" type="branch" />
            <wire x2="1360" y1="1088" y2="1088" x1="1264" />
        </branch>
        <branch name="PC_STEP">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1152" type="branch" />
            <wire x2="1360" y1="1152" y2="1152" x1="1296" />
        </branch>
        <branch name="AO(31:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="912" type="branch" />
            <wire x2="1904" y1="912" y2="912" x1="1712" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1792" type="branch" />
            <wire x2="288" y1="1792" y2="1792" x1="208" />
        </branch>
        <branch name="D_D_OUT(31:0)">
            <wire x2="3120" y1="496" y2="496" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="3120" y="496" name="D_D_OUT(31:0)" orien="R0" />
    </sheet>
</drawing>