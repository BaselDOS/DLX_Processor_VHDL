<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="WE" />
        <signal name="JLINK" />
        <signal name="GPR_WE" />
        <signal name="XLXN_1" />
        <signal name="XLXN_4" />
        <signal name="CARD(0)" />
        <signal name="CARD(1)" />
        <signal name="CARD(2)" />
        <signal name="CARD(3)" />
        <signal name="CARD(4)" />
        <signal name="CARD(4:0)" />
        <port polarity="Output" name="WE" />
        <port polarity="Input" name="JLINK" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="CARD(4:0)" />
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="or5" name="XLXI_1">
            <blockpin signalname="CARD(4)" name="I0" />
            <blockpin signalname="CARD(3)" name="I1" />
            <blockpin signalname="CARD(2)" name="I2" />
            <blockpin signalname="CARD(1)" name="I3" />
            <blockpin signalname="CARD(0)" name="I4" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="JLINK" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="GPR_WE" name="I1" />
            <blockpin signalname="WE" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="JLINK">
            <wire x2="432" y1="192" y2="192" x1="208" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="416" y1="256" y2="256" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="192" name="JLINK" orien="R180" />
        <iomarker fontsize="28" x="208" y="256" name="GPR_WE" orien="R180" />
        <instance x="992" y="512" name="XLXI_1" orien="R0" />
        <instance x="1360" y="384" name="XLXI_2" orien="R0" />
        <instance x="1728" y="352" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1360" y1="320" y2="320" x1="1248" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="256" type="branch" />
            <wire x2="1360" y1="256" y2="256" x1="1280" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="224" type="branch" />
            <wire x2="1728" y1="224" y2="224" x1="1648" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1728" y1="288" y2="288" x1="1616" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="256" type="branch" />
            <wire x2="2096" y1="256" y2="256" x1="1984" />
        </branch>
        <branch name="CARD(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="192" type="branch" />
            <wire x2="992" y1="192" y2="192" x1="912" />
        </branch>
        <branch name="CARD(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="256" type="branch" />
            <wire x2="992" y1="256" y2="256" x1="912" />
        </branch>
        <branch name="CARD(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="320" type="branch" />
            <wire x2="992" y1="320" y2="320" x1="912" />
        </branch>
        <branch name="CARD(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="384" type="branch" />
            <wire x2="992" y1="384" y2="384" x1="912" />
        </branch>
        <branch name="CARD(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="448" type="branch" />
            <wire x2="992" y1="448" y2="448" x1="912" />
        </branch>
        <line x2="2260" y1="600" y2="600" x1="8" />
        <line x2="2256" y1="600" y2="16" x1="2260" />
        <line x2="656" y1="600" y2="16" x1="656" />
        <text style="fontsize:42;fontname:Arial" x="272" y="56">Signals</text>
        <text style="fontsize:42;fontname:Arial" x="1296" y="56">Connections</text>
        <branch name="CARD(4:0)">
            <wire x2="416" y1="336" y2="336" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="336" name="CARD(4:0)" orien="R180" />
        <branch name="WE">
            <wire x2="352" y1="416" y2="416" x1="128" />
        </branch>
        <iomarker fontsize="28" x="352" y="416" name="WE" orien="R0" />
    </sheet>
</drawing>