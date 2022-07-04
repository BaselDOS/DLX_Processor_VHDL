<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="STEP_EN" />
        <signal name="ACK_N" />
        <signal name="reset" />
        <signal name="AS_N" />
        <signal name="IN_INIT" />
        <signal name="STOP_N" />
        <signal name="STATE(1:0)" />
        <signal name="AO(31:0)" />
        <signal name="WDO(31:0)" />
        <signal name="WR_N" />
        <signal name="CE" />
        <signal name="WDO(7:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="STATE(1:0)" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Output" name="WDO(31:0)" />
        <port polarity="Output" name="WR_N" />
        <blockdef name="WRITE_MACHINE">
            <timestamp>2022-4-4T13:18:53</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="CNT32">
            <timestamp>2022-4-4T13:26:13</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="ID">
            <timestamp>2022-3-14T13:51:54</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="AS_N" name="I" />
            <blockpin signalname="WR_N" name="O" />
        </block>
        <block symbolname="WRITE_MACHINE" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="CE" name="WR_CE" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="STATE(1:0)" name="STATE(1:0)" />
        </block>
        <block symbolname="CNT32" name="XLXI_2">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="CE" name="ce" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="AO(31:0)" name="cnt_o(31:0)" />
        </block>
        <block symbolname="ID" name="XLXI_3">
            <blockpin signalname="WDO(7:0)" name="IDOUT(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="448" y1="240" y2="240" x1="240" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="528" y1="368" y2="368" x1="320" />
        </branch>
        <branch name="ACK_N">
            <wire x2="496" y1="448" y2="448" x1="288" />
        </branch>
        <branch name="reset">
            <wire x2="448" y1="304" y2="304" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="240" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="320" y="368" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="288" y="448" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="240" y="304" name="reset" orien="R180" />
        <branch name="AS_N">
            <wire x2="592" y1="1120" y2="1120" x1="208" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="608" y1="1040" y2="1040" x1="208" />
        </branch>
        <branch name="STOP_N">
            <wire x2="608" y1="960" y2="960" x1="208" />
        </branch>
        <branch name="STATE(1:0)">
            <wire x2="704" y1="832" y2="832" x1="208" />
        </branch>
        <branch name="AO(31:0)">
            <wire x2="688" y1="720" y2="720" x1="208" />
        </branch>
        <branch name="WDO(31:0)">
            <wire x2="672" y1="624" y2="624" x1="208" />
        </branch>
        <branch name="WR_N">
            <wire x2="400" y1="1280" y2="1280" x1="368" />
            <wire x2="640" y1="1280" y2="1280" x1="400" />
        </branch>
        <instance x="144" y="1312" name="XLXI_5" orien="R0" />
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="1280" type="branch" />
            <wire x2="144" y1="1280" y2="1280" x1="112" />
        </branch>
        <iomarker fontsize="28" x="592" y="1120" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="608" y="1040" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="608" y="960" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="704" y="832" name="STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="688" y="720" name="AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="672" y="624" name="WDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="640" y="1280" name="WR_N" orien="R0" />
        <instance x="1280" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1296" y="496" name="XLXI_2" orien="R0">
        </instance>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="768" type="branch" />
            <wire x2="1824" y1="768" y2="768" x1="1664" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="832" type="branch" />
            <wire x2="1824" y1="832" y2="832" x1="1664" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="896" type="branch" />
            <wire x2="1824" y1="896" y2="896" x1="1664" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="960" type="branch" />
            <wire x2="1824" y1="960" y2="960" x1="1664" />
        </branch>
        <branch name="STATE(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1024" type="branch" />
            <wire x2="1824" y1="1024" y2="1024" x1="1664" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="768" type="branch" />
            <wire x2="1280" y1="768" y2="768" x1="1136" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="848" type="branch" />
            <wire x2="1280" y1="848" y2="848" x1="1136" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="928" type="branch" />
            <wire x2="1280" y1="928" y2="928" x1="1120" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1008" type="branch" />
            <wire x2="1280" y1="1008" y2="1008" x1="1120" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="336" type="branch" />
            <wire x2="1296" y1="336" y2="336" x1="1200" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="400" type="branch" />
            <wire x2="1296" y1="400" y2="400" x1="1200" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="464" type="branch" />
            <wire x2="1296" y1="464" y2="464" x1="1200" />
        </branch>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="336" type="branch" />
            <wire x2="1792" y1="336" y2="336" x1="1680" />
        </branch>
        <line x2="932" y1="32" y2="1444" x1="928" />
        <line x2="2108" y1="1444" y2="1444" x1="932" />
        <line x2="2108" y1="1444" y2="56" x1="2108" />
        <line x2="16" y1="1440" y2="1440" x1="932" />
        <text style="fontsize:48;fontname:Arial" x="364" y="96">Signals</text>
        <text style="fontsize:48;fontname:Arial" x="1380" y="96">Connections</text>
        <instance x="1072" y="1312" name="XLXI_3" orien="R0">
        </instance>
        <branch name="WDO(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1280" type="branch" />
            <wire x2="1600" y1="1280" y2="1280" x1="1456" />
        </branch>
    </sheet>
</drawing>