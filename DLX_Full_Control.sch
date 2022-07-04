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
        <signal name="AEQZ" />
        <signal name="OPCODE(5:0)" />
        <signal name="BUSY" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="Mac_State(1:0)" />
        <signal name="MR" />
        <signal name="MW" />
        <signal name="IR_CE" />
        <signal name="PC_STEP" />
        <signal name="GPR_WE" />
        <signal name="A_EN" />
        <signal name="B_EN" />
        <signal name="C_EN" />
        <signal name="IN_INIT" />
        <signal name="MDR_EN" />
        <signal name="A_sel" />
        <signal name="DINT_sel" />
        <signal name="JLINK" />
        <signal name="TEST" />
        <signal name="MAR_EN" />
        <signal name="MDR_sel" />
        <signal name="SHIFT" />
        <signal name="S1_sel(1:0)" />
        <signal name="ADD" />
        <signal name="S2_sel(1:0)" />
        <signal name="DLX_State(4:0)" />
        <signal name="ITYPE" />
        <signal name="imm(15:0)" />
        <signal name="stop_n" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="AEQZ" />
        <port polarity="Input" name="OPCODE(5:0)" />
        <port polarity="Output" name="BUSY" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="Mac_State(1:0)" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="IR_CE" />
        <port polarity="Output" name="PC_STEP" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="A_EN" />
        <port polarity="Output" name="B_EN" />
        <port polarity="Output" name="C_EN" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="MDR_EN" />
        <port polarity="Output" name="A_sel" />
        <port polarity="Output" name="DINT_sel" />
        <port polarity="Output" name="JLINK" />
        <port polarity="Output" name="TEST" />
        <port polarity="Output" name="MAR_EN" />
        <port polarity="Output" name="MDR_sel" />
        <port polarity="Output" name="SHIFT" />
        <port polarity="Output" name="S1_sel(1:0)" />
        <port polarity="Output" name="ADD" />
        <port polarity="Output" name="S2_sel(1:0)" />
        <port polarity="Output" name="DLX_State(4:0)" />
        <port polarity="Output" name="ITYPE" />
        <port polarity="Input" name="imm(15:0)" />
        <port polarity="Output" name="stop_n" />
        <blockdef name="Mac">
            <timestamp>2022-6-8T14:19:37</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="256" x="64" y="-320" height="308" />
            <line x2="384" y1="-272" y2="-272" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-176" y2="-176" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-76" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="DLX_Full_StateMachine">
            <timestamp>2022-6-8T12:13:5</timestamp>
            <line x2="768" y1="-1360" y2="-1360" x1="704" />
            <rect width="332" x="372" y="-1408" height="1196" />
            <line x2="768" y1="-1312" y2="-1312" x1="704" />
            <line x2="768" y1="-1264" y2="-1264" x1="704" />
            <line x2="768" y1="-1216" y2="-1216" x1="704" />
            <line x2="768" y1="-1168" y2="-1168" x1="704" />
            <line x2="768" y1="-1104" y2="-1104" x1="704" />
            <line x2="768" y1="-1040" y2="-1040" x1="704" />
            <line x2="768" y1="-976" y2="-976" x1="704" />
            <line x2="768" y1="-912" y2="-912" x1="704" />
            <line x2="768" y1="-864" y2="-864" x1="704" />
            <line x2="768" y1="-800" y2="-800" x1="704" />
            <line x2="768" y1="-736" y2="-736" x1="704" />
            <line x2="768" y1="-672" y2="-672" x1="704" />
            <line x2="768" y1="-608" y2="-608" x1="704" />
            <line x2="768" y1="-544" y2="-544" x1="704" />
            <line x2="768" y1="-496" y2="-496" x1="704" />
            <line x2="768" y1="-464" y2="-464" x1="704" />
            <line x2="768" y1="-432" y2="-432" x1="704" />
            <line x2="768" y1="-400" y2="-400" x1="704" />
            <rect width="64" x="704" y="-380" height="24" />
            <line x2="768" y1="-368" y2="-368" x1="704" />
            <rect width="64" x="704" y="-348" height="24" />
            <line x2="768" y1="-336" y2="-336" x1="704" />
            <rect width="64" x="704" y="-300" height="24" />
            <line x2="768" y1="-288" y2="-288" x1="704" />
            <line x2="304" y1="-720" y2="-720" x1="368" />
            <line x2="304" y1="-896" y2="-896" x1="368" />
            <rect width="64" x="304" y="-684" height="24" />
            <line x2="304" y1="-672" y2="-672" x1="368" />
            <line x2="304" y1="-960" y2="-960" x1="368" />
            <line x2="304" y1="-1248" y2="-1248" x1="368" />
            <line x2="304" y1="-1184" y2="-1184" x1="368" />
            <rect width="64" x="304" y="-556" height="24" />
            <line x2="304" y1="-544" y2="-544" x1="368" />
        </blockdef>
        <block symbolname="Mac" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="stop_n" name="STOP_N" />
            <blockpin signalname="BUSY" name="BUSY" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="Mac_State(1:0)" name="state(1:0)" />
        </block>
        <block symbolname="DLX_Full_StateMachine" name="XLXI_2">
            <blockpin signalname="MR" name="mr" />
            <blockpin signalname="MW" name="mw" />
            <blockpin signalname="IN_INIT" name="in_init" />
            <blockpin signalname="GPR_WE" name="gpr_we" />
            <blockpin signalname="IR_CE" name="IR_ce" />
            <blockpin signalname="TEST" name="test" />
            <blockpin signalname="ADD" name="add" />
            <blockpin signalname="JLINK" name="jlink" />
            <blockpin signalname="ITYPE" name="itype" />
            <blockpin signalname="A_EN" name="A_ce" />
            <blockpin signalname="B_EN" name="B_ce" />
            <blockpin signalname="C_EN" name="C_ce" />
            <blockpin signalname="MDR_EN" name="MDR_ce" />
            <blockpin signalname="MAR_EN" name="MAR_ce" />
            <blockpin signalname="PC_STEP" name="PC_ce" />
            <blockpin signalname="A_sel" name="Asel" />
            <blockpin signalname="DINT_sel" name="DINTset" />
            <blockpin signalname="MDR_sel" name="MDRsel" />
            <blockpin signalname="SHIFT" name="shift_en" />
            <blockpin signalname="S1_sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="S2_sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="DLX_State(4:0)" name="state_out(4:0)" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="BUSY" name="busy" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="OPCODE(5:0)" name="opcode(5:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="imm(15:0)" name="imm(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="464" y1="176" y2="176" x1="176" />
        </branch>
        <branch name="reset">
            <wire x2="464" y1="224" y2="224" x1="176" />
        </branch>
        <branch name="ACK_N">
            <wire x2="464" y1="272" y2="272" x1="176" />
        </branch>
        <branch name="AEQZ">
            <wire x2="464" y1="368" y2="368" x1="176" />
        </branch>
        <branch name="OPCODE(5:0)">
            <wire x2="464" y1="416" y2="416" x1="272" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="464" y1="320" y2="320" x1="224" />
        </branch>
        <branch name="IR_CE">
            <wire x2="384" y1="768" y2="768" x1="96" />
        </branch>
        <branch name="PC_STEP">
            <wire x2="384" y1="816" y2="816" x1="96" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="384" y1="864" y2="864" x1="96" />
        </branch>
        <branch name="A_EN">
            <wire x2="384" y1="912" y2="912" x1="96" />
        </branch>
        <branch name="B_EN">
            <wire x2="384" y1="960" y2="960" x1="96" />
        </branch>
        <branch name="C_EN">
            <wire x2="384" y1="1008" y2="1008" x1="96" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="384" y1="1056" y2="1056" x1="96" />
        </branch>
        <branch name="MDR_EN">
            <wire x2="960" y1="768" y2="768" x1="672" />
        </branch>
        <branch name="A_sel">
            <wire x2="960" y1="816" y2="816" x1="672" />
        </branch>
        <branch name="DINT_sel">
            <wire x2="960" y1="864" y2="864" x1="672" />
        </branch>
        <branch name="JLINK">
            <wire x2="960" y1="912" y2="912" x1="672" />
        </branch>
        <branch name="TEST">
            <wire x2="960" y1="1008" y2="1008" x1="672" />
        </branch>
        <branch name="MAR_EN">
            <wire x2="960" y1="1056" y2="1056" x1="672" />
        </branch>
        <branch name="MDR_sel">
            <wire x2="640" y1="1264" y2="1264" x1="352" />
        </branch>
        <branch name="SHIFT">
            <wire x2="640" y1="1312" y2="1312" x1="352" />
        </branch>
        <branch name="S1_sel(1:0)">
            <wire x2="640" y1="1360" y2="1360" x1="352" />
        </branch>
        <branch name="ADD">
            <wire x2="640" y1="1408" y2="1408" x1="352" />
        </branch>
        <branch name="S2_sel(1:0)">
            <wire x2="640" y1="1456" y2="1456" x1="352" />
        </branch>
        <branch name="DLX_State(4:0)">
            <wire x2="640" y1="1504" y2="1504" x1="352" />
        </branch>
        <iomarker fontsize="28" x="176" y="176" name="clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="224" name="reset" orien="R180" />
        <iomarker fontsize="28" x="176" y="272" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="176" y="368" name="AEQZ" orien="R180" />
        <iomarker fontsize="28" x="272" y="416" name="OPCODE(5:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="320" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="384" y="768" name="IR_CE" orien="R0" />
        <iomarker fontsize="28" x="384" y="816" name="PC_STEP" orien="R0" />
        <iomarker fontsize="28" x="384" y="864" name="GPR_WE" orien="R0" />
        <iomarker fontsize="28" x="384" y="912" name="A_EN" orien="R0" />
        <iomarker fontsize="28" x="384" y="960" name="B_EN" orien="R0" />
        <iomarker fontsize="28" x="384" y="1008" name="C_EN" orien="R0" />
        <iomarker fontsize="28" x="384" y="1056" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="960" y="768" name="MDR_EN" orien="R0" />
        <iomarker fontsize="28" x="960" y="816" name="A_sel" orien="R0" />
        <iomarker fontsize="28" x="960" y="864" name="DINT_sel" orien="R0" />
        <iomarker fontsize="28" x="960" y="912" name="JLINK" orien="R0" />
        <iomarker fontsize="28" x="960" y="1008" name="TEST" orien="R0" />
        <iomarker fontsize="28" x="960" y="1056" name="MAR_EN" orien="R0" />
        <iomarker fontsize="28" x="640" y="1264" name="MDR_sel" orien="R0" />
        <iomarker fontsize="28" x="640" y="1312" name="SHIFT" orien="R0" />
        <iomarker fontsize="28" x="640" y="1360" name="S1_sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="640" y="1408" name="ADD" orien="R0" />
        <iomarker fontsize="28" x="640" y="1456" name="S2_sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="640" y="1504" name="DLX_State(4:0)" orien="R0" />
        <text style="fontsize:42;fontname:Arial" x="480" y="68">Signals</text>
        <text style="fontsize:42;fontname:Arial" x="2296" y="108">Connections</text>
        <iomarker fontsize="28" x="864" y="464" name="MW" orien="R0" />
        <iomarker fontsize="28" x="864" y="416" name="MR" orien="R0" />
        <iomarker fontsize="28" x="864" y="368" name="Mac_State(1:0)" orien="R0" />
        <iomarker fontsize="28" x="864" y="320" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="864" y="272" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="864" y="224" name="BUSY" orien="R0" />
        <branch name="MW">
            <wire x2="864" y1="464" y2="464" x1="576" />
        </branch>
        <branch name="MR">
            <wire x2="864" y1="416" y2="416" x1="576" />
        </branch>
        <branch name="Mac_State(1:0)">
            <wire x2="864" y1="368" y2="368" x1="576" />
        </branch>
        <branch name="WR_N">
            <wire x2="864" y1="320" y2="320" x1="576" />
        </branch>
        <branch name="AS_N">
            <wire x2="864" y1="272" y2="272" x1="576" />
        </branch>
        <branch name="BUSY">
            <wire x2="864" y1="224" y2="224" x1="576" />
        </branch>
        <branch name="ITYPE">
            <wire x2="960" y1="960" y2="960" x1="672" />
        </branch>
        <iomarker fontsize="28" x="960" y="960" name="ITYPE" orien="R0" />
        <line x2="1212" y1="56" y2="2240" x1="1224" />
        <line x2="40" y1="2260" y2="2260" x1="1384" />
        <line x2="3456" y1="2260" y2="2260" x1="1384" />
        <instance x="2640" y="1136" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1392" y="1824" name="XLXI_2" orien="R0">
        </instance>
        <branch name="MR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="464" type="branch" />
            <wire x2="2256" y1="464" y2="464" x1="2160" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="512" type="branch" />
            <wire x2="2256" y1="512" y2="512" x1="2160" />
        </branch>
        <branch name="IR_CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="560" type="branch" />
            <wire x2="2256" y1="560" y2="560" x1="2160" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="608" type="branch" />
            <wire x2="2240" y1="608" y2="608" x1="2160" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="656" type="branch" />
            <wire x2="2240" y1="656" y2="656" x1="2160" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="720" type="branch" />
            <wire x2="2240" y1="720" y2="720" x1="2160" />
        </branch>
        <branch name="TEST">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="784" type="branch" />
            <wire x2="2240" y1="784" y2="784" x1="2160" />
        </branch>
        <branch name="ADD">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="848" type="branch" />
            <wire x2="2224" y1="848" y2="848" x1="2160" />
        </branch>
        <branch name="ITYPE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="912" type="branch" />
            <wire x2="2224" y1="912" y2="912" x1="2160" />
        </branch>
        <branch name="MAR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="960" type="branch" />
            <wire x2="2224" y1="960" y2="960" x1="2160" />
        </branch>
        <branch name="MDR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1024" type="branch" />
            <wire x2="2240" y1="1024" y2="1024" x1="2160" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="576" type="branch" />
            <wire x2="1696" y1="576" y2="576" x1="1632" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="640" type="branch" />
            <wire x2="1696" y1="640" y2="640" x1="1632" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="928" type="branch" />
            <wire x2="1696" y1="928" y2="928" x1="1648" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1104" type="branch" />
            <wire x2="1696" y1="1104" y2="1104" x1="1648" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1152" type="branch" />
            <wire x2="1696" y1="1152" y2="1152" x1="1648" />
        </branch>
        <branch name="imm(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1280" type="branch" />
            <wire x2="1696" y1="1280" y2="1280" x1="1648" />
        </branch>
        <branch name="PC_STEP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1088" type="branch" />
            <wire x2="2256" y1="1088" y2="1088" x1="2160" />
        </branch>
        <branch name="A_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1152" type="branch" />
            <wire x2="2256" y1="1152" y2="1152" x1="2160" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1216" type="branch" />
            <wire x2="2256" y1="1216" y2="1216" x1="2160" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1280" type="branch" />
            <wire x2="2256" y1="1280" y2="1280" x1="2160" />
        </branch>
        <branch name="A_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1328" type="branch" />
            <wire x2="2256" y1="1328" y2="1328" x1="2160" />
        </branch>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1360" type="branch" />
            <wire x2="2240" y1="1360" y2="1360" x1="2160" />
        </branch>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1392" type="branch" />
            <wire x2="2256" y1="1392" y2="1392" x1="2160" />
        </branch>
        <branch name="SHIFT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1424" type="branch" />
            <wire x2="2240" y1="1424" y2="1424" x1="2160" />
        </branch>
        <branch name="S1_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1456" type="branch" />
            <wire x2="2240" y1="1456" y2="1456" x1="2160" />
        </branch>
        <branch name="S2_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1488" type="branch" />
            <wire x2="2240" y1="1488" y2="1488" x1="2160" />
        </branch>
        <branch name="DLX_State(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1536" type="branch" />
            <wire x2="2240" y1="1536" y2="1536" x1="2160" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="848" type="branch" />
            <wire x2="2640" y1="848" y2="848" x1="2560" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="912" type="branch" />
            <wire x2="2640" y1="912" y2="912" x1="2560" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="960" type="branch" />
            <wire x2="2640" y1="960" y2="960" x1="2560" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1008" type="branch" />
            <wire x2="2640" y1="1008" y2="1008" x1="2560" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1072" type="branch" />
            <wire x2="2640" y1="1072" y2="1072" x1="2560" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="864" type="branch" />
            <wire x2="3104" y1="864" y2="864" x1="3024" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="912" type="branch" />
            <wire x2="3104" y1="912" y2="912" x1="3024" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="960" type="branch" />
            <wire x2="3104" y1="960" y2="960" x1="3024" />
        </branch>
        <branch name="Mac_State(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="1072" type="branch" />
            <wire x2="3104" y1="1072" y2="1072" x1="3024" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="864" type="branch" />
            <wire x2="1696" y1="864" y2="864" x1="1648" />
        </branch>
        <branch name="imm(15:0)">
            <wire x2="464" y1="480" y2="480" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="480" name="imm(15:0)" orien="R180" />
        <branch name="stop_n">
            <wire x2="832" y1="176" y2="176" x1="576" />
        </branch>
        <iomarker fontsize="28" x="832" y="176" name="stop_n" orien="R0" />
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="1008" type="branch" />
            <wire x2="3120" y1="1008" y2="1008" x1="3024" />
        </branch>
    </sheet>
</drawing>