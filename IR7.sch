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
        <signal name="DIN(31:0)" />
        <signal name="INST(31:0)" />
        <signal name="OPCODE(5:0)" />
        <signal name="INST(31:26)" />
        <signal name="RS1(4:0)" />
        <signal name="INST(25:21)" />
        <signal name="INST(20:16)" />
        <signal name="INST(15:0)" />
        <signal name="J" />
        <signal name="I" />
        <signal name="INST(15:11)" />
        <signal name="RS2(4:0)" />
        <signal name="RD(4:0)" />
        <signal name="CO(15:0)" />
        <signal name="immediate(15:0)" />
        <signal name="immediate(15)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="DIN(31:0)" />
        <port polarity="Output" name="OPCODE(5:0)" />
        <port polarity="Output" name="RS1(4:0)" />
        <port polarity="Input" name="J" />
        <port polarity="Input" name="I" />
        <port polarity="Output" name="RS2(4:0)" />
        <port polarity="Output" name="RD(4:0)" />
        <port polarity="Output" name="CO(15:0)" />
        <port polarity="Output" name="immediate(15:0)" />
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
        <blockdef name="BUF16">
            <timestamp>2015-7-12T12:5:40</timestamp>
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
        <block symbolname="REG32CE" name="XLXI_3">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="DIN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="INST(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="BUF6" name="XLXI_1">
            <blockpin signalname="INST(31:26)" name="Din(5:0)" />
            <blockpin signalname="OPCODE(5:0)" name="Dout(5:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_40">
            <blockpin signalname="INST(25:21)" name="Din(4:0)" />
            <blockpin signalname="RS1(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_2">
            <blockpin signalname="INST(20:16)" name="Din(4:0)" />
            <blockpin signalname="RS2(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="BUF16" name="XLXI_39">
            <blockpin signalname="INST(15:0)" name="Din(15:0)" />
            <blockpin signalname="immediate(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="Mux_IR" name="XLXI_41">
            <blockpin signalname="immediate(15)" name="C" />
            <blockpin signalname="J" name="J" />
            <blockpin signalname="I" name="I" />
            <blockpin signalname="INST(15:11)" name="A(4:0)" />
            <blockpin signalname="RS2(4:0)" name="B(4:0)" />
            <blockpin signalname="RD(4:0)" name="Mux_Out(4:0)" />
            <blockpin signalname="CO(15:0)" name="CO(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="432" y="528" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="432" y1="368" y2="368" x1="272" />
        </branch>
        <branch name="CE">
            <wire x2="432" y1="432" y2="432" x1="272" />
        </branch>
        <branch name="DIN(31:0)">
            <wire x2="432" y1="496" y2="496" x1="272" />
        </branch>
        <branch name="INST(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="368" type="branch" />
            <wire x2="976" y1="368" y2="368" x1="816" />
        </branch>
        <iomarker fontsize="28" x="272" y="368" name="clk" orien="R180" />
        <iomarker fontsize="28" x="272" y="432" name="CE" orien="R180" />
        <iomarker fontsize="28" x="272" y="496" name="DIN(31:0)" orien="R180" />
        <instance x="416" y="752" name="XLXI_1" orien="R0">
        </instance>
        <branch name="OPCODE(5:0)">
            <wire x2="992" y1="720" y2="720" x1="800" />
        </branch>
        <branch name="INST(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="720" type="branch" />
            <wire x2="416" y1="720" y2="720" x1="272" />
        </branch>
        <iomarker fontsize="28" x="992" y="720" name="OPCODE(5:0)" orien="R0" />
        <branch name="RS1(4:0)">
            <wire x2="1024" y1="928" y2="928" x1="816" />
        </branch>
        <branch name="INST(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="928" type="branch" />
            <wire x2="432" y1="928" y2="928" x1="256" />
        </branch>
        <instance x="432" y="960" name="XLXI_40" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1024" y="928" name="RS1(4:0)" orien="R0" />
        <branch name="INST(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1136" type="branch" />
            <wire x2="464" y1="1136" y2="1136" x1="240" />
        </branch>
        <instance x="464" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <branch name="INST(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1312" type="branch" />
            <wire x2="480" y1="1312" y2="1312" x1="208" />
        </branch>
        <instance x="480" y="1344" name="XLXI_39" orien="R0">
        </instance>
        <text style="fontsize:42;fontname:Arial" x="920" y="104">IR Inviourment</text>
        <branch name="J">
            <wire x2="1792" y1="656" y2="656" x1="1648" />
        </branch>
        <branch name="I">
            <wire x2="1792" y1="720" y2="720" x1="1648" />
        </branch>
        <branch name="INST(15:11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="784" type="branch" />
            <wire x2="1792" y1="784" y2="784" x1="1632" />
        </branch>
        <branch name="RS2(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="848" type="branch" />
            <wire x2="1792" y1="848" y2="848" x1="1632" />
        </branch>
        <branch name="RD(4:0)">
            <wire x2="2304" y1="592" y2="592" x1="2176" />
        </branch>
        <branch name="CO(15:0)">
            <wire x2="2320" y1="848" y2="848" x1="2176" />
        </branch>
        <branch name="RS2(4:0)">
            <wire x2="1152" y1="1136" y2="1136" x1="848" />
        </branch>
        <iomarker fontsize="28" x="1648" y="656" name="J" orien="R180" />
        <iomarker fontsize="28" x="1648" y="720" name="I" orien="R180" />
        <iomarker fontsize="28" x="1152" y="1136" name="RS2(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2304" y="592" name="RD(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2320" y="848" name="CO(15:0)" orien="R0" />
        <instance x="1792" y="880" name="XLXI_41" orien="R0">
        </instance>
        <branch name="immediate(15:0)">
            <wire x2="1072" y1="1312" y2="1312" x1="864" />
        </branch>
        <branch name="immediate(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="592" type="branch" />
            <wire x2="1792" y1="592" y2="592" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1312" name="immediate(15:0)" orien="R0" />
    </sheet>
</drawing>