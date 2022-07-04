<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RESET" />
        <signal name="DIN(31:0)" />
        <signal name="CLK" />
        <signal name="RDO(31:0)" />
        <signal name="AO(31:0)" />
        <signal name="State(1:0)" />
        <signal name="Start_Loading" />
        <signal name="ACK_N" />
        <signal name="STEP_EN" />
        <signal name="STOP_N" />
        <signal name="AS_N" />
        <signal name="IN_INIT" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="DIN(31:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="RDO(31:0)" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Output" name="State(1:0)" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="IN_INIT" />
        <blockdef name="CNT32">
            <timestamp>2022-4-4T13:26:13</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="READ_StateMachine">
            <timestamp>2022-4-24T14:47:5</timestamp>
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
        <block symbolname="READ_StateMachine" name="XLXI_5">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="Start_Loading" name="Start_Loading" />
            <blockpin signalname="State(1:0)" name="State(1:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Start_Loading" name="CE" />
            <blockpin signalname="DIN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="RDO(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="CNT32" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="Start_Loading" name="ce" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="AO(31:0)" name="cnt_o(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="592" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="304" type="branch" />
            <wire x2="1376" y1="304" y2="304" x1="1312" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="384" type="branch" />
            <wire x2="1376" y1="384" y2="384" x1="1312" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="464" type="branch" />
            <wire x2="1376" y1="464" y2="464" x1="1312" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="544" type="branch" />
            <wire x2="1376" y1="544" y2="544" x1="1312" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="304" type="branch" />
            <wire x2="1840" y1="304" y2="304" x1="1760" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="368" type="branch" />
            <wire x2="1840" y1="368" y2="368" x1="1760" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="432" type="branch" />
            <wire x2="1840" y1="432" y2="432" x1="1760" />
        </branch>
        <branch name="Start_Loading">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="496" type="branch" />
            <wire x2="1840" y1="496" y2="496" x1="1760" />
        </branch>
        <branch name="State(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="560" type="branch" />
            <wire x2="1840" y1="560" y2="560" x1="1760" />
        </branch>
        <text style="fontsize:48;fontname:Arial" x="1808" y="92">Connections</text>
        <instance x="2400" y="384" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="224" type="branch" />
            <wire x2="2400" y1="224" y2="224" x1="2336" />
        </branch>
        <branch name="Start_Loading">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="288" type="branch" />
            <wire x2="2400" y1="288" y2="288" x1="2336" />
        </branch>
        <branch name="DIN(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="352" type="branch" />
            <wire x2="2400" y1="352" y2="352" x1="2352" />
        </branch>
        <branch name="RDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="224" type="branch" />
            <wire x2="2880" y1="224" y2="224" x1="2784" />
        </branch>
        <instance x="2400" y="656" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="496" type="branch" />
            <wire x2="2400" y1="496" y2="496" x1="2336" />
        </branch>
        <branch name="Start_Loading">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="560" type="branch" />
            <wire x2="2400" y1="560" y2="560" x1="2352" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="624" type="branch" />
            <wire x2="2400" y1="624" y2="624" x1="2336" />
        </branch>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="496" type="branch" />
            <wire x2="2848" y1="496" y2="496" x1="2784" />
        </branch>
        <branch name="ACK_N">
            <wire x2="432" y1="384" y2="384" x1="224" />
        </branch>
        <branch name="RESET">
            <wire x2="432" y1="432" y2="432" x1="224" />
        </branch>
        <branch name="DIN(31:0)">
            <wire x2="432" y1="480" y2="480" x1="224" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="432" y1="336" y2="336" x1="224" />
        </branch>
        <branch name="CLK">
            <wire x2="432" y1="288" y2="288" x1="224" />
        </branch>
        <branch name="STOP_N">
            <wire x2="832" y1="384" y2="384" x1="624" />
        </branch>
        <branch name="RDO(31:0)">
            <wire x2="832" y1="432" y2="432" x1="624" />
        </branch>
        <branch name="AO(31:0)">
            <wire x2="832" y1="480" y2="480" x1="624" />
        </branch>
        <branch name="AS_N">
            <wire x2="832" y1="336" y2="336" x1="624" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="832" y1="288" y2="288" x1="624" />
        </branch>
        <branch name="State(1:0)">
            <wire x2="832" y1="528" y2="528" x1="624" />
        </branch>
        <iomarker fontsize="28" x="224" y="288" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="224" y="336" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="224" y="384" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="224" y="432" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="224" y="480" name="DIN(31:0)" orien="R180" />
        <iomarker fontsize="28" x="832" y="288" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="832" y="336" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="832" y="384" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="832" y="432" name="RDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="832" y="480" name="AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="832" y="528" name="State(1:0)" orien="R0" />
        <text style="fontsize:48;fontname:Arial" x="424" y="88">Signals</text>
        <line x2="24" y1="728" y2="732" x1="3160" />
        <line x2="3156" y1="728" y2="20" x1="3156" />
        <line x2="1092" y1="732" y2="8" x1="1092" />
    </sheet>
</drawing>