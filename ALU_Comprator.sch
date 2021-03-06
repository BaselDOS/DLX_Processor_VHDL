<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_12" />
        <signal name="F(2)" />
        <signal name="COMP_OUT" />
        <signal name="S(31:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="F(1)" />
        <signal name="XLXN_11" />
        <signal name="F(2:0)" />
        <signal name="NE_G" />
        <signal name="XLXN_39" />
        <signal name="F(0)" />
        <port polarity="Output" name="COMP_OUT" />
        <port polarity="Input" name="S(31:0)" />
        <port polarity="Input" name="F(2:0)" />
        <port polarity="Input" name="NE_G" />
        <blockdef name="AEQZ">
            <timestamp>2015-7-12T12:3:8</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
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
        <block symbolname="AEQZ" name="XLXI_1">
            <blockpin signalname="S(31:0)" name="Din(31:0)" />
            <blockpin signalname="XLXN_11" name="A_eqz" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="COMP_OUT" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_13">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="F(1)" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_33">
            <blockpin signalname="NE_G" name="I0" />
            <blockpin signalname="F(2)" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_34">
            <blockpin signalname="NE_G" name="I0" />
            <blockpin signalname="F(0)" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_12">
            <wire x2="1968" y1="864" y2="864" x1="1952" />
            <wire x2="2032" y1="864" y2="864" x1="1968" />
            <wire x2="2112" y1="752" y2="752" x1="2032" />
            <wire x2="2128" y1="752" y2="752" x1="2112" />
            <wire x2="2032" y1="752" y2="864" x1="2032" />
        </branch>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="832" type="branch" />
            <wire x2="1600" y1="832" y2="832" x1="1584" />
            <wire x2="1696" y1="832" y2="832" x1="1600" />
        </branch>
        <branch name="COMP_OUT">
            <wire x2="2848" y1="880" y2="880" x1="2784" />
            <wire x2="2864" y1="880" y2="880" x1="2848" />
        </branch>
        <branch name="S(31:0)">
            <wire x2="784" y1="656" y2="656" x1="768" />
            <wire x2="832" y1="656" y2="656" x1="784" />
            <wire x2="848" y1="656" y2="656" x1="832" />
        </branch>
        <instance x="848" y="688" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1968" y1="688" y2="688" x1="1952" />
            <wire x2="2112" y1="688" y2="688" x1="1968" />
            <wire x2="2128" y1="688" y2="688" x1="2112" />
        </branch>
        <instance x="2128" y="816" name="XLXI_2" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="2416" y1="1136" y2="1136" x1="2400" />
            <wire x2="2464" y1="1136" y2="1136" x1="2416" />
            <wire x2="2512" y1="912" y2="912" x1="2464" />
            <wire x2="2528" y1="912" y2="912" x1="2512" />
            <wire x2="2464" y1="912" y2="1136" x1="2464" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2400" y1="720" y2="720" x1="2384" />
            <wire x2="2448" y1="720" y2="720" x1="2400" />
            <wire x2="2448" y1="720" y2="848" x1="2448" />
            <wire x2="2512" y1="848" y2="848" x1="2448" />
            <wire x2="2528" y1="848" y2="848" x1="2512" />
        </branch>
        <instance x="2528" y="976" name="XLXI_3" orien="R0" />
        <instance x="2144" y="1232" name="XLXI_13" orien="R0" />
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="720" type="branch" />
            <wire x2="1584" y1="720" y2="720" x1="1568" />
            <wire x2="1696" y1="720" y2="720" x1="1584" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1312" y1="656" y2="656" x1="1232" />
            <wire x2="1312" y1="656" y2="1168" x1="1312" />
            <wire x2="2144" y1="1168" y2="1168" x1="1312" />
            <wire x2="1696" y1="656" y2="656" x1="1312" />
        </branch>
        <instance x="1696" y="784" name="XLXI_5" orien="R0" />
        <branch name="F(2:0)">
            <wire x2="864" y1="864" y2="864" x1="688" />
        </branch>
        <branch name="NE_G">
            <wire x2="864" y1="960" y2="960" x1="672" />
        </branch>
        <instance x="1696" y="960" name="XLXI_33" orien="R0" />
        <instance x="1696" y="960" name="XLXI_34" orien="M180" />
        <branch name="XLXN_39">
            <wire x2="2000" y1="1056" y2="1056" x1="1952" />
            <wire x2="2048" y1="1056" y2="1056" x1="2000" />
            <wire x2="2048" y1="1056" y2="1104" x1="2048" />
            <wire x2="2144" y1="1104" y2="1104" x1="2048" />
        </branch>
        <branch name="NE_G">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="960" type="branch" />
            <wire x2="1680" y1="960" y2="960" x1="1568" />
            <wire x2="1680" y1="960" y2="1024" x1="1680" />
            <wire x2="1696" y1="1024" y2="1024" x1="1680" />
            <wire x2="1696" y1="896" y2="896" x1="1680" />
            <wire x2="1680" y1="896" y2="960" x1="1680" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1088" type="branch" />
            <wire x2="1696" y1="1088" y2="1088" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="2864" y="880" name="COMP_OUT" orien="R0" />
        <iomarker fontsize="28" x="688" y="864" name="F(2:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="960" name="NE_G" orien="R180" />
        <iomarker fontsize="28" x="768" y="656" name="S(31:0)" orien="R180" />
    </sheet>
</drawing>