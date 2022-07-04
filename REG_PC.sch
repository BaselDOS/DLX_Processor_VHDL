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
        <signal name="reset" />
        <signal name="PC_IN(31:0)" />
        <signal name="PC_Out(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="ce" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="PC_IN(31:0)" />
        <port polarity="Output" name="PC_Out(31:0)" />
        <blockdef name="REG32RST">
            <timestamp>2015-7-12T8:34:40</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="REG32RST" name="XLXI_1">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="ce" name="CE" />
            <blockpin signalname="reset" name="RST" />
            <blockpin signalname="PC_IN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="PC_Out(31:0)" name="DOUT(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="1136" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="1136" y1="912" y2="912" x1="1008" />
        </branch>
        <branch name="ce">
            <wire x2="1136" y1="976" y2="976" x1="1008" />
        </branch>
        <branch name="reset">
            <wire x2="1136" y1="1040" y2="1040" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="912" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1008" y="976" name="ce" orien="R180" />
        <iomarker fontsize="28" x="1008" y="1040" name="reset" orien="R180" />
        <branch name="PC_IN(31:0)">
            <wire x2="1136" y1="1104" y2="1104" x1="1024" />
        </branch>
        <branch name="PC_Out(31:0)">
            <wire x2="1600" y1="912" y2="912" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1600" y="912" name="PC_Out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1024" y="1104" name="PC_IN(31:0)" orien="R180" />
    </sheet>
</drawing>