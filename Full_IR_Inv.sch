<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="CE" />
        <signal name="RS2(4:0)" />
        <signal name="RS1(4:0)" />
        <signal name="FunctionR(5:0)" />
        <signal name="Imm(15:0)" />
        <signal name="Opcode(5:0)" />
        <signal name="CO(15:0)" />
        <signal name="DIn(31:0)" />
        <signal name="JLINK" />
        <signal name="IS_ITYPE" />
        <signal name="RD(4:0)" />
        <signal name="Instruction(15:0)" />
        <signal name="Instruction(20:16)" />
        <signal name="Instruction(31:0)" />
        <signal name="Instruction(5:0)" />
        <signal name="Instruction(31:26)" />
        <signal name="Instruction(25:21)" />
        <signal name="Imm(15)" />
        <signal name="Instruction(15:11)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="CE" />
        <port polarity="Output" name="RS2(4:0)" />
        <port polarity="Output" name="RS1(4:0)" />
        <port polarity="Output" name="FunctionR(5:0)" />
        <port polarity="Output" name="Imm(15:0)" />
        <port polarity="Output" name="Opcode(5:0)" />
        <port polarity="Output" name="CO(15:0)" />
        <port polarity="Input" name="DIn(31:0)" />
        <port polarity="Input" name="JLINK" />
        <port polarity="Input" name="IS_ITYPE" />
        <port polarity="Output" name="RD(4:0)" />
        <blockdef name="BUF16">
            <timestamp>2015-7-12T12:5:40</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BUF6">
            <timestamp>2015-7-12T12:5:26</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BUF5">
            <timestamp>2015-7-12T12:3:38</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Mux_IR">
            <timestamp>2022-5-30T13:25:17</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
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
        <block symbolname="REG32CE" name="XLXI_7">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="DIn(31:0)" name="DIN(31:0)" />
            <blockpin signalname="Instruction(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="BUF16" name="XLXI_1">
            <blockpin signalname="Instruction(15:0)" name="Din(15:0)" />
            <blockpin signalname="Imm(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="BUF6" name="XLXI_5">
            <blockpin signalname="Instruction(5:0)" name="Din(5:0)" />
            <blockpin signalname="FunctionR(5:0)" name="Dout(5:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_23">
            <blockpin signalname="Instruction(20:16)" name="Din(4:0)" />
            <blockpin signalname="RS2(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_24">
            <blockpin signalname="Instruction(25:21)" name="Din(4:0)" />
            <blockpin signalname="RS1(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="BUF6" name="XLXI_25">
            <blockpin signalname="Instruction(31:26)" name="Din(5:0)" />
            <blockpin signalname="Opcode(5:0)" name="Dout(5:0)" />
        </block>
        <block symbolname="Mux_IR" name="XLXI_6">
            <blockpin signalname="Imm(15)" name="C" />
            <blockpin signalname="JLINK" name="J" />
            <blockpin signalname="IS_ITYPE" name="I" />
            <blockpin signalname="Instruction(15:11)" name="A(4:0)" />
            <blockpin signalname="RS2(4:0)" name="B(4:0)" />
            <blockpin signalname="RD(4:0)" name="Mux_Out(4:0)" />
            <blockpin signalname="CO(15:0)" name="CO(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="400" y1="240" y2="240" x1="160" />
        </branch>
        <branch name="CE">
            <wire x2="384" y1="288" y2="288" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="240" name="clk" orien="R180" />
        <iomarker fontsize="28" x="160" y="288" name="CE" orien="R180" />
        <branch name="Imm(15:0)">
            <wire x2="256" y1="480" y2="480" x1="48" />
        </branch>
        <branch name="Opcode(5:0)">
            <wire x2="256" y1="528" y2="528" x1="48" />
        </branch>
        <branch name="FunctionR(5:0)">
            <wire x2="256" y1="592" y2="592" x1="48" />
        </branch>
        <branch name="RS1(4:0)">
            <wire x2="256" y1="640" y2="640" x1="48" />
        </branch>
        <branch name="RS2(4:0)">
            <wire x2="256" y1="688" y2="688" x1="48" />
        </branch>
        <branch name="RD(4:0)">
            <wire x2="256" y1="736" y2="736" x1="48" />
        </branch>
        <branch name="CO(15:0)">
            <wire x2="256" y1="784" y2="784" x1="48" />
        </branch>
        <iomarker fontsize="28" x="256" y="480" name="Imm(15:0)" orien="R0" />
        <iomarker fontsize="28" x="256" y="528" name="Opcode(5:0)" orien="R0" />
        <iomarker fontsize="28" x="256" y="592" name="FunctionR(5:0)" orien="R0" />
        <iomarker fontsize="28" x="256" y="640" name="RS1(4:0)" orien="R0" />
        <iomarker fontsize="28" x="256" y="688" name="RS2(4:0)" orien="R0" />
        <iomarker fontsize="28" x="256" y="736" name="RD(4:0)" orien="R0" />
        <iomarker fontsize="28" x="256" y="784" name="CO(15:0)" orien="R0" />
        <iomarker fontsize="28" x="192" y="384" name="DIn(31:0)" orien="R180" />
        <branch name="DIn(31:0)">
            <wire x2="368" y1="384" y2="384" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="432" name="JLINK" orien="R180" />
        <branch name="JLINK">
            <wire x2="368" y1="432" y2="432" x1="192" />
        </branch>
        <iomarker fontsize="28" x="176" y="336" name="IS_ITYPE" orien="R180" />
        <branch name="IS_ITYPE">
            <wire x2="368" y1="336" y2="336" x1="176" />
        </branch>
        <instance x="896" y="416" name="XLXI_7" orien="R0">
        </instance>
        <instance x="896" y="576" name="XLXI_1" orien="R0">
        </instance>
        <instance x="912" y="1248" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="256" type="branch" />
            <wire x2="896" y1="256" y2="256" x1="832" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="320" type="branch" />
            <wire x2="896" y1="320" y2="320" x1="832" />
        </branch>
        <branch name="DIn(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="384" type="branch" />
            <wire x2="896" y1="384" y2="384" x1="832" />
        </branch>
        <branch name="Instruction(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="544" type="branch" />
            <wire x2="896" y1="544" y2="544" x1="832" />
        </branch>
        <branch name="Instruction(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="704" type="branch" />
            <wire x2="896" y1="704" y2="704" x1="816" />
        </branch>
        <branch name="Imm(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="544" type="branch" />
            <wire x2="1360" y1="544" y2="544" x1="1280" />
        </branch>
        <branch name="Instruction(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="256" type="branch" />
            <wire x2="1360" y1="256" y2="256" x1="1280" />
        </branch>
        <branch name="RS2(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="704" type="branch" />
            <wire x2="1344" y1="704" y2="704" x1="1280" />
        </branch>
        <branch name="RS1(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="864" type="branch" />
            <wire x2="1344" y1="864" y2="864" x1="1280" />
        </branch>
        <branch name="Opcode(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1040" type="branch" />
            <wire x2="1360" y1="1040" y2="1040" x1="1280" />
        </branch>
        <branch name="FunctionR(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1216" type="branch" />
            <wire x2="1360" y1="1216" y2="1216" x1="1296" />
        </branch>
        <branch name="Instruction(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1216" type="branch" />
            <wire x2="912" y1="1216" y2="1216" x1="832" />
        </branch>
        <branch name="Instruction(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1040" type="branch" />
            <wire x2="896" y1="1040" y2="1040" x1="832" />
        </branch>
        <branch name="Instruction(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="864" type="branch" />
            <wire x2="896" y1="864" y2="864" x1="832" />
        </branch>
        <instance x="896" y="736" name="XLXI_23" orien="R0">
        </instance>
        <instance x="896" y="896" name="XLXI_24" orien="R0">
        </instance>
        <instance x="896" y="1072" name="XLXI_25" orien="R0">
        </instance>
        <instance x="2032" y="832" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Imm(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="544" type="branch" />
            <wire x2="2032" y1="544" y2="544" x1="1904" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="608" type="branch" />
            <wire x2="2032" y1="608" y2="608" x1="1904" />
        </branch>
        <branch name="IS_ITYPE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="672" type="branch" />
            <wire x2="2032" y1="672" y2="672" x1="1904" />
        </branch>
        <branch name="Instruction(15:11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="736" type="branch" />
            <wire x2="2032" y1="736" y2="736" x1="1920" />
        </branch>
        <branch name="RS2(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="800" type="branch" />
            <wire x2="2032" y1="800" y2="800" x1="1904" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="544" type="branch" />
            <wire x2="2528" y1="544" y2="544" x1="2416" />
        </branch>
        <branch name="CO(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="800" type="branch" />
            <wire x2="2528" y1="800" y2="800" x1="2416" />
        </branch>
        <line x2="520" y1="16" y2="1396" x1="524" />
        <line x2="3480" y1="1388" y2="1388" x1="528" />
        <line x2="20" y1="1392" y2="1392" x1="516" />
        <text style="fontsize:42;fontname:Arial" x="1540" y="76">Connections</text>
        <text style="fontsize:42;fontname:Arial" x="196" y="72">Signals</text>
    </sheet>
</drawing>