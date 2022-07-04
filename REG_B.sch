<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="ce" />
        <signal name="In(31:0)" />
        <signal name="Out(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="ce" />
        <port polarity="Input" name="In(31:0)" />
        <port polarity="Output" name="Out(31:0)" />
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
        <block symbolname="REG32CE" name="XLXI_1">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="In(31:0)" name="DIN(31:0)" />
            <blockpin signalname="Out(31:0)" name="DOUT(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1104" y="656" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="1104" y1="496" y2="496" x1="1008" />
        </branch>
        <branch name="ce">
            <wire x2="1104" y1="560" y2="560" x1="1008" />
        </branch>
        <branch name="In(31:0)">
            <wire x2="1104" y1="624" y2="624" x1="1008" />
        </branch>
        <branch name="Out(31:0)">
            <wire x2="1600" y1="496" y2="496" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1008" y="496" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1008" y="560" name="ce" orien="R180" />
        <iomarker fontsize="28" x="1008" y="624" name="In(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1600" y="496" name="Out(31:0)" orien="R0" />
    </sheet>
</drawing>