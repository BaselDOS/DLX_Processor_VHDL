<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Cadr(0)">
        </signal>
        <signal name="Cadr(1)">
        </signal>
        <signal name="Cadr(2)">
        </signal>
        <signal name="Cadr(3)">
        </signal>
        <signal name="Cadr(4)">
        </signal>
        <signal name="XLXN_6" />
        <signal name="GPR_WE" />
        <signal name="WE" />
        <signal name="Cadr(4:0)" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Output" name="WE" />
        <port polarity="Input" name="Cadr(4:0)" />
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
            <blockpin signalname="Cadr(4)" name="I0" />
            <blockpin signalname="Cadr(3)" name="I1" />
            <blockpin signalname="Cadr(2)" name="I2" />
            <blockpin signalname="Cadr(1)" name="I3" />
            <blockpin signalname="Cadr(0)" name="I4" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="GPR_WE" name="I1" />
            <blockpin signalname="WE" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="688" name="XLXI_1" orien="R0" />
        <instance x="1072" y="560" name="XLXI_2" orien="R0" />
        <branch name="Cadr(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="368" type="branch" />
            <wire x2="608" y1="368" y2="368" x1="464" />
        </branch>
        <branch name="Cadr(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="432" type="branch" />
            <wire x2="608" y1="432" y2="432" x1="464" />
        </branch>
        <branch name="Cadr(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="496" type="branch" />
            <wire x2="608" y1="496" y2="496" x1="464" />
        </branch>
        <branch name="Cadr(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="560" type="branch" />
            <wire x2="608" y1="560" y2="560" x1="464" />
        </branch>
        <branch name="Cadr(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="624" type="branch" />
            <wire x2="608" y1="624" y2="624" x1="464" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1072" y1="496" y2="496" x1="864" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="1072" y1="432" y2="432" x1="928" />
        </branch>
        <branch name="WE">
            <wire x2="1488" y1="464" y2="464" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="928" y="432" name="GPR_WE" orien="R180" />
        <iomarker fontsize="28" x="1488" y="464" name="WE" orien="R0" />
        <text style="fontsize:42;fontname:Arial" x="668" y="128">GPR Write Enable Option 2</text>
        <line x2="1728" y1="8" y2="740" x1="1720" />
        <line x2="28" y1="740" y2="740" x1="1728" />
        <branch name="Cadr(4:0)">
            <wire x2="704" y1="272" y2="272" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="272" name="Cadr(4:0)" orien="R180" />
    </sheet>
</drawing>