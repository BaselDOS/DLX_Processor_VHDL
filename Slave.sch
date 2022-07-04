<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="CARD_SEL" />
        <signal name="WR_IN_N" />
        <signal name="SDO(31:0)" />
        <signal name="Al(9:0)" />
        <signal name="Al(7)" />
        <signal name="Al(8)" />
        <signal name="Al(9)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="X2" />
        <signal name="XLXN_34" />
        <signal name="XLXN_51" />
        <signal name="SACK_N" />
        <signal name="IN1(31:0)" />
        <signal name="IN2(31:0)" />
        <signal name="IN4(31:0)" />
        <signal name="IN3(31:0)" />
        <signal name="Al(6:5)" />
        <signal name="Al(4:0)" />
        <signal name="reg_adr(4:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CARD_SEL" />
        <port polarity="Input" name="WR_IN_N" />
        <port polarity="Output" name="SDO(31:0)" />
        <port polarity="Input" name="Al(9:0)" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Input" name="IN1(31:0)" />
        <port polarity="Input" name="IN2(31:0)" />
        <port polarity="Input" name="IN4(31:0)" />
        <port polarity="Input" name="IN3(31:0)" />
        <port polarity="Output" name="reg_adr(4:0)" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="MUX4_32bit">
            <timestamp>2015-7-12T12:4:22</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="BUF5">
            <timestamp>2015-7-12T12:3:38</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="MUX4_32bit" name="XLXI_8">
            <blockpin signalname="IN1(31:0)" name="A0(31:0)" />
            <blockpin signalname="IN2(31:0)" name="A1(31:0)" />
            <blockpin signalname="IN3(31:0)" name="A2(31:0)" />
            <blockpin signalname="IN4(31:0)" name="A3(31:0)" />
            <blockpin signalname="Al(6:5)" name="sel(1:0)" />
            <blockpin signalname="SDO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_9">
            <blockpin signalname="Al(4:0)" name="Din(4:0)" />
            <blockpin signalname="reg_adr(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_27" name="D" />
            <blockpin signalname="XLXN_28" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_28" name="D" />
            <blockpin signalname="X2" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_7">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="X2" name="D" />
            <blockpin signalname="XLXN_34" name="Q" />
        </block>
        <block symbolname="and5" name="XLXI_11">
            <blockpin signalname="CARD_SEL" name="I0" />
            <blockpin signalname="WR_IN_N" name="I1" />
            <blockpin signalname="Al(9)" name="I2" />
            <blockpin signalname="Al(8)" name="I3" />
            <blockpin signalname="Al(7)" name="I4" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="XLXN_34" name="I" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_18">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="SACK_N" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2224" y="1056" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2240" y="1344" name="XLXI_9" orien="R0">
        </instance>
        <branch name="SDO(31:0)">
            <wire x2="3072" y1="768" y2="768" x1="2608" />
        </branch>
        <branch name="Al(9:0)">
            <wire x2="368" y1="160" y2="160" x1="208" />
        </branch>
        <branch name="CLK">
            <wire x2="384" y1="96" y2="96" x1="240" />
        </branch>
        <branch name="CARD_SEL">
            <wire x2="448" y1="224" y2="224" x1="304" />
        </branch>
        <branch name="WR_IN_N">
            <wire x2="448" y1="288" y2="288" x1="304" />
        </branch>
        <iomarker fontsize="28" x="208" y="160" name="Al(9:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="96" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="304" y="224" name="CARD_SEL" orien="R180" />
        <iomarker fontsize="28" x="304" y="288" name="WR_IN_N" orien="R180" />
        <instance x="1248" y="608" name="XLXI_5" orien="R0" />
        <instance x="1728" y="608" name="XLXI_6" orien="R0" />
        <instance x="2192" y="608" name="XLXI_7" orien="R0" />
        <branch name="Al(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="256" type="branch" />
            <wire x2="640" y1="256" y2="256" x1="624" />
            <wire x2="736" y1="256" y2="256" x1="640" />
        </branch>
        <branch name="Al(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="320" type="branch" />
            <wire x2="640" y1="320" y2="320" x1="624" />
            <wire x2="736" y1="320" y2="320" x1="640" />
        </branch>
        <branch name="Al(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="384" type="branch" />
            <wire x2="640" y1="384" y2="384" x1="624" />
            <wire x2="736" y1="384" y2="384" x1="640" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="448" type="branch" />
            <wire x2="640" y1="448" y2="448" x1="624" />
            <wire x2="736" y1="448" y2="448" x1="640" />
        </branch>
        <branch name="CARD_SEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="512" type="branch" />
            <wire x2="640" y1="512" y2="512" x1="624" />
            <wire x2="736" y1="512" y2="512" x1="640" />
        </branch>
        <instance x="736" y="576" name="XLXI_11" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="1120" y1="384" y2="384" x1="992" />
            <wire x2="1120" y1="352" y2="384" x1="1120" />
            <wire x2="1232" y1="352" y2="352" x1="1120" />
            <wire x2="1248" y1="352" y2="352" x1="1232" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1728" y1="352" y2="352" x1="1632" />
        </branch>
        <branch name="X2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="352" type="branch" />
            <wire x2="2128" y1="352" y2="352" x1="2112" />
            <wire x2="2192" y1="352" y2="352" x1="2128" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="480" type="branch" />
            <wire x2="1248" y1="480" y2="480" x1="1120" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="480" type="branch" />
            <wire x2="1728" y1="480" y2="480" x1="1680" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="480" type="branch" />
            <wire x2="2192" y1="480" y2="480" x1="2144" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2640" y1="352" y2="352" x1="2576" />
            <wire x2="2656" y1="352" y2="352" x1="2640" />
        </branch>
        <instance x="2656" y="384" name="XLXI_17" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="2912" y1="352" y2="352" x1="2880" />
        </branch>
        <branch name="X2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="464" type="branch" />
            <wire x2="2800" y1="464" y2="464" x1="2736" />
            <wire x2="2912" y1="416" y2="416" x1="2800" />
            <wire x2="2800" y1="416" y2="464" x1="2800" />
        </branch>
        <branch name="SACK_N">
            <wire x2="3216" y1="384" y2="384" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3216" y="384" name="SACK_N" orien="R0" />
        <iomarker fontsize="28" x="3072" y="768" name="SDO(31:0)" orien="R0" />
        <branch name="IN1(31:0)">
            <wire x2="800" y1="816" y2="816" x1="528" />
        </branch>
        <branch name="IN2(31:0)">
            <wire x2="800" y1="880" y2="880" x1="528" />
        </branch>
        <branch name="IN3(31:0)">
            <wire x2="800" y1="944" y2="944" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="816" name="IN1(31:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="880" name="IN2(31:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="944" name="IN3(31:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="1008" name="IN4(31:0)" orien="R180" />
        <branch name="IN4(31:0)">
            <wire x2="800" y1="1008" y2="1008" x1="528" />
            <wire x2="816" y1="1008" y2="1008" x1="800" />
        </branch>
        <branch name="IN1(31:0)">
            <wire x2="2224" y1="768" y2="768" x1="1968" />
        </branch>
        <branch name="IN2(31:0)">
            <wire x2="2224" y1="832" y2="832" x1="1968" />
        </branch>
        <branch name="IN3(31:0)">
            <wire x2="2224" y1="896" y2="896" x1="1968" />
        </branch>
        <branch name="IN4(31:0)">
            <wire x2="2224" y1="960" y2="960" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1968" y="768" name="IN1(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1968" y="832" name="IN2(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1968" y="896" name="IN3(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1968" y="960" name="IN4(31:0)" orien="R180" />
        <branch name="Al(6:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1088" type="branch" />
            <wire x2="2048" y1="1088" y2="1088" x1="1952" />
            <wire x2="2224" y1="1024" y2="1024" x1="2048" />
            <wire x2="2048" y1="1024" y2="1088" x1="2048" />
        </branch>
        <branch name="Al(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1312" type="branch" />
            <wire x2="2240" y1="1312" y2="1312" x1="1632" />
        </branch>
        <branch name="reg_adr(4:0)">
            <wire x2="3040" y1="1312" y2="1312" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1312" name="reg_adr(4:0)" orien="R0" />
        <instance x="2912" y="480" name="XLXI_18" orien="R0" />
    </sheet>
</drawing>