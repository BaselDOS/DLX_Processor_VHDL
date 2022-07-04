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
        <signal name="reset" />
        <signal name="PC(15:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="PC(15:0)" />
        <blockdef name="CNT16">
            <timestamp>2015-7-12T8:20:50</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="CNT16" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="CE" name="ce" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="PC(15:0)" name="cnt_o(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <text style="fontsize:42;fontname:Arial" x="336" y="100">Simple Program Counter</text>
        <instance x="400" y="448" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="400" y1="288" y2="288" x1="256" />
        </branch>
        <branch name="CE">
            <wire x2="400" y1="352" y2="352" x1="256" />
        </branch>
        <branch name="reset">
            <wire x2="400" y1="416" y2="416" x1="256" />
        </branch>
        <branch name="PC(15:0)">
            <wire x2="960" y1="288" y2="288" x1="784" />
        </branch>
        <iomarker fontsize="28" x="256" y="288" name="clk" orien="R180" />
        <iomarker fontsize="28" x="256" y="352" name="CE" orien="R180" />
        <iomarker fontsize="28" x="256" y="416" name="reset" orien="R180" />
        <iomarker fontsize="28" x="960" y="288" name="PC(15:0)" orien="R0" />
        <line x2="1264" y1="8" y2="508" x1="1264" />
        <line x2="12" y1="508" y2="508" x1="1264" />
    </sheet>
</drawing>