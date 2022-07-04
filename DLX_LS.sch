<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="STEP_EN" />
        <signal name="PC_STEP" />
        <signal name="GPR_WE" />
        <signal name="B_EN" />
        <signal name="STOP_N" />
        <signal name="State_Of_DLX(2:0)" />
        <signal name="State_Of_Mac(1:0)" />
        <signal name="BUSY" />
        <signal name="OPCODE(5:0)" />
        <signal name="reset" />
        <signal name="ACK_N" />
        <signal name="clk" />
        <signal name="MW" />
        <signal name="MR" />
        <signal name="C_EN" />
        <signal name="IN_INIT" />
        <signal name="sel" />
        <signal name="IR_CE" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Output" name="PC_STEP" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="B_EN" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="State_Of_DLX(2:0)" />
        <port polarity="Output" name="State_Of_Mac(1:0)" />
        <port polarity="Output" name="BUSY" />
        <port polarity="Input" name="OPCODE(5:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="C_EN" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="sel" />
        <port polarity="Output" name="IR_CE" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <blockdef name="Mac">
            <timestamp>2022-6-8T10:23:21</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <block symbolname="Mac" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="BUSY" name="BUSY" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="State_Of_Mac(1:0)" name="state(1:0)" />
            <blockpin name="ACK" />
            <blockpin name="REQ" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="STEP_EN">
            <wire x2="432" y1="304" y2="304" x1="256" />
        </branch>
        <branch name="MW">
            <wire x2="752" y1="240" y2="240" x1="560" />
        </branch>
        <branch name="MR">
            <wire x2="736" y1="304" y2="304" x1="560" />
        </branch>
        <branch name="PC_STEP">
            <wire x2="736" y1="368" y2="368" x1="560" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="752" y1="416" y2="416" x1="560" />
        </branch>
        <branch name="B_EN">
            <wire x2="752" y1="480" y2="480" x1="560" />
        </branch>
        <branch name="C_EN">
            <wire x2="1184" y1="240" y2="240" x1="992" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="1168" y1="304" y2="304" x1="992" />
        </branch>
        <branch name="IR_CE">
            <wire x2="1168" y1="368" y2="368" x1="992" />
        </branch>
        <branch name="sel">
            <wire x2="1184" y1="416" y2="416" x1="992" />
        </branch>
        <branch name="STOP_N">
            <wire x2="1184" y1="480" y2="480" x1="992" />
        </branch>
        <branch name="State_Of_DLX(2:0)">
            <wire x2="1600" y1="240" y2="240" x1="1408" />
        </branch>
        <branch name="State_Of_Mac(1:0)">
            <wire x2="1584" y1="304" y2="304" x1="1408" />
        </branch>
        <branch name="AS_N">
            <wire x2="1584" y1="368" y2="368" x1="1408" />
        </branch>
        <branch name="WR_N">
            <wire x2="1600" y1="416" y2="416" x1="1408" />
        </branch>
        <branch name="BUSY">
            <wire x2="1600" y1="480" y2="480" x1="1408" />
        </branch>
        <branch name="OPCODE(5:0)">
            <wire x2="448" y1="480" y2="480" x1="320" />
        </branch>
        <branch name="reset">
            <wire x2="448" y1="416" y2="416" x1="192" />
        </branch>
        <branch name="ACK_N">
            <wire x2="432" y1="368" y2="368" x1="224" />
        </branch>
        <branch name="clk">
            <wire x2="448" y1="240" y2="240" x1="160" />
        </branch>
        <iomarker fontsize="28" x="256" y="304" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="752" y="240" name="MW" orien="R0" />
        <iomarker fontsize="28" x="736" y="304" name="MR" orien="R0" />
        <iomarker fontsize="28" x="736" y="368" name="PC_STEP" orien="R0" />
        <iomarker fontsize="28" x="752" y="416" name="GPR_WE" orien="R0" />
        <iomarker fontsize="28" x="752" y="480" name="B_EN" orien="R0" />
        <iomarker fontsize="28" x="1184" y="240" name="C_EN" orien="R0" />
        <iomarker fontsize="28" x="1168" y="304" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="1168" y="368" name="IR_CE" orien="R0" />
        <iomarker fontsize="28" x="1184" y="416" name="sel" orien="R0" />
        <iomarker fontsize="28" x="1184" y="480" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="1600" y="240" name="State_Of_DLX(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1584" y="304" name="State_Of_Mac(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1584" y="368" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="1600" y="416" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="1600" y="480" name="BUSY" orien="R0" />
        <iomarker fontsize="28" x="320" y="480" name="OPCODE(5:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="416" name="reset" orien="R180" />
        <iomarker fontsize="28" x="224" y="368" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="160" y="240" name="clk" orien="R180" />
        <line x2="2324" y1="0" y2="1612" x1="2324" />
        <line x2="36" y1="1612" y2="1616" x1="2324" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="896" type="branch" />
            <wire x2="496" y1="896" y2="896" x1="384" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1008" type="branch" />
            <wire x2="496" y1="1008" y2="1008" x1="384" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1120" type="branch" />
            <wire x2="496" y1="1120" y2="1120" x1="384" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1232" type="branch" />
            <wire x2="496" y1="1232" y2="1232" x1="384" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1344" type="branch" />
            <wire x2="496" y1="1344" y2="1344" x1="400" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1456" type="branch" />
            <wire x2="496" y1="1456" y2="1456" x1="400" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="896" type="branch" />
            <wire x2="992" y1="896" y2="896" x1="880" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="960" type="branch" />
            <wire x2="992" y1="960" y2="960" x1="880" />
        </branch>
        <branch name="PC_STEP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1024" type="branch" />
            <wire x2="992" y1="1024" y2="1024" x1="880" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1088" type="branch" />
            <wire x2="992" y1="1088" y2="1088" x1="880" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1152" type="branch" />
            <wire x2="992" y1="1152" y2="1152" x1="880" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1216" type="branch" />
            <wire x2="992" y1="1216" y2="1216" x1="880" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1280" type="branch" />
            <wire x2="992" y1="1280" y2="1280" x1="880" />
        </branch>
        <branch name="sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1344" type="branch" />
            <wire x2="992" y1="1344" y2="1344" x1="880" />
        </branch>
        <branch name="IR_CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1408" type="branch" />
            <wire x2="992" y1="1408" y2="1408" x1="880" />
        </branch>
        <branch name="State_Of_DLX(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1472" type="branch" />
            <wire x2="992" y1="1472" y2="1472" x1="880" />
        </branch>
        <line x2="28" y1="604" y2="604" x1="2324" />
        <text style="fontsize:42;fontname:Arial" x="1008" y="672">Connections</text>
        <text style="fontsize:42;fontname:Arial" x="1008" y="104">Signals</text>
        <instance x="1536" y="1312" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="1024" type="branch" />
            <wire x2="1536" y1="1024" y2="1024" x1="1440" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1088" type="branch" />
            <wire x2="1536" y1="1088" y2="1088" x1="1472" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1216" type="branch" />
            <wire x2="1536" y1="1216" y2="1216" x1="1456" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1280" type="branch" />
            <wire x2="1536" y1="1280" y2="1280" x1="1472" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1088" type="branch" />
            <wire x2="2016" y1="1088" y2="1088" x1="1920" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1152" type="branch" />
            <wire x2="2016" y1="1152" y2="1152" x1="1920" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1216" type="branch" />
            <wire x2="2032" y1="1216" y2="1216" x1="1920" />
        </branch>
        <branch name="State_Of_Mac(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1280" type="branch" />
            <wire x2="2032" y1="1280" y2="1280" x1="1920" />
        </branch>
    </sheet>
</drawing>