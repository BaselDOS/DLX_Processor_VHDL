<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Immediate(15:0)" />
        <signal name="INST(15:0)" />
        <signal name="RD(4:0)" />
        <signal name="INST(20:16)" />
        <signal name="RS1(4:0)" />
        <signal name="INST(25:21)" />
        <signal name="OPCODE(5:0)" />
        <signal name="INST(31:26)" />
        <signal name="clk" />
        <signal name="CE" />
        <signal name="DIN(31:0)" />
        <signal name="INST(31:0)" />
        <port polarity="Output" name="Immediate(15:0)" />
        <port polarity="Output" name="RD(4:0)" />
        <port polarity="Output" name="RS1(4:0)" />
        <port polarity="Output" name="OPCODE(5:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="DIN(31:0)" />
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
        <block symbolname="BUF6" name="XLXI_3">
            <blockpin signalname="INST(31:26)" name="Din(5:0)" />
            <blockpin signalname="OPCODE(5:0)" name="Dout(5:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_4">
            <blockpin signalname="INST(20:16)" name="Din(4:0)" />
            <blockpin signalname="RD(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_1">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="DIN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="INST(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="BUF16" name="XLXI_39">
            <blockpin signalname="INST(15:0)" name="Din(15:0)" />
            <blockpin signalname="Immediate(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_40">
            <blockpin signalname="INST(25:21)" name="Din(4:0)" />
            <blockpin signalname="RS1(4:0)" name="Dout(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <text style="fontsize:42;fontname:Arial" x="1424" y="76">IR Inviourment</text>
        <instance x="1152" y="384" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2144" y="720" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Immediate(15:0)">
            <wire x2="3232" y1="816" y2="816" x1="3072" />
        </branch>
        <branch name="INST(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="816" type="branch" />
            <wire x2="2688" y1="816" y2="816" x1="2448" />
        </branch>
        <branch name="RD(4:0)">
            <wire x2="2736" y1="688" y2="688" x1="2528" />
        </branch>
        <branch name="INST(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="688" type="branch" />
            <wire x2="2144" y1="688" y2="688" x1="1952" />
        </branch>
        <branch name="RS1(4:0)">
            <wire x2="2192" y1="544" y2="544" x1="1984" />
        </branch>
        <branch name="INST(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="544" type="branch" />
            <wire x2="1600" y1="544" y2="544" x1="1424" />
        </branch>
        <branch name="OPCODE(5:0)">
            <wire x2="1728" y1="352" y2="352" x1="1536" />
        </branch>
        <branch name="INST(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="352" type="branch" />
            <wire x2="1152" y1="352" y2="352" x1="1008" />
        </branch>
        <instance x="400" y="352" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="400" y1="192" y2="192" x1="240" />
        </branch>
        <branch name="CE">
            <wire x2="400" y1="256" y2="256" x1="240" />
        </branch>
        <branch name="DIN(31:0)">
            <wire x2="400" y1="320" y2="320" x1="240" />
        </branch>
        <branch name="INST(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="192" type="branch" />
            <wire x2="944" y1="192" y2="192" x1="784" />
        </branch>
        <iomarker fontsize="28" x="3232" y="816" name="Immediate(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2736" y="688" name="RD(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="544" name="RS1(4:0)" orien="R0" />
        <iomarker fontsize="28" x="1728" y="352" name="OPCODE(5:0)" orien="R0" />
        <iomarker fontsize="28" x="240" y="192" name="clk" orien="R180" />
        <iomarker fontsize="28" x="240" y="256" name="CE" orien="R180" />
        <iomarker fontsize="28" x="240" y="320" name="DIN(31:0)" orien="R180" />
        <instance x="2688" y="848" name="XLXI_39" orien="R0">
        </instance>
        <instance x="1600" y="576" name="XLXI_40" orien="R0">
        </instance>
    </sheet>
</drawing>