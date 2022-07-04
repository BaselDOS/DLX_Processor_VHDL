<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="XLXN_2(31:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="F(2)" />
        <signal name="S(31:0)" />
        <signal name="neg" />
        <signal name="XLXN_7(31:0)" />
        <signal name="F(2:0)" />
        <signal name="XLXN_9(31:0)" />
        <signal name="F(1)" />
        <signal name="F(0)" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="XLXN_14(31:0)" />
        <signal name="XLXN_15(31:0)" />
        <signal name="XLXN_22(2:0)" />
        <signal name="ALUF(2:0)" />
        <signal name="add" />
        <signal name="XLXN_19(2:0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_28" />
        <signal name="test" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24(31:0)" />
        <signal name="XLXN_25(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_27(31:0)" />
        <signal name="XLXN_28(2:0)" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31(31:0)" />
        <signal name="alu_out(31:0)" />
        <port polarity="Input" name="XLXN_27(31:0)" />
        <port polarity="Input" name="XLXN_28(2:0)" />
        <port polarity="Input" name="XLXN_29" />
        <port polarity="Input" name="XLXN_30" />
        <port polarity="Input" name="XLXN_31(31:0)" />
        <port polarity="Output" name="alu_out(31:0)" />
        <blockdef name="MUX32bit">
            <timestamp>2015-7-12T12:4:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="OR32">
            <timestamp>2010-8-16T14:59:0</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="XOR32">
            <timestamp>2015-7-12T12:3:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="MUX3BIT">
            <timestamp>2021-2-28T12:43:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="C011">
            <timestamp>2022-5-30T17:27:11</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="AND32">
            <timestamp>2015-7-12T12:3:16</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="MUX32bit" name="XLXI_7">
            <blockpin signalname="F(2)" name="sel" />
            <blockpin signalname="S(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="B(31:0)" />
            <blockpin name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_8">
            <blockpin signalname="F(1)" name="sel" />
            <blockpin signalname="XLXN_3(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="OR32" name="XLXI_10">
            <blockpin signalname="XLXN_14(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_15(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_9">
            <blockpin signalname="F(0)" name="sel" />
            <blockpin signalname="XLXN_1(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_2(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="XOR32" name="XLXI_11">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="or2" name="XLXI_18">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="test" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_20" name="I" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="MUX3BIT" name="XLXI_20">
            <blockpin signalname="add" name="sel" />
            <blockpin signalname="ALUF(2:0)" name="A0(2:0)" />
            <blockpin signalname="XLXN_22(2:0)" name="A1(2:0)" />
            <blockpin signalname="XLXN_19(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="C011" name="XLXI_21">
            <blockpin signalname="XLXN_22(2:0)" name="C011_Out(2:0)" />
        </block>
        <block symbolname="AND32" name="XLXI_23">
            <blockpin signalname="XLXN_24(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_25(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="O(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1728" y="880" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1184" y="1008" name="XLXI_8" orien="R0">
        </instance>
        <instance x="160" y="1408" name="XLXI_10" orien="R0">
        </instance>
        <instance x="656" y="1072" name="XLXI_9" orien="R0">
        </instance>
        <instance x="160" y="1072" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="656" y1="976" y2="976" x1="544" />
        </branch>
        <branch name="XLXN_2(31:0)">
            <wire x2="576" y1="1312" y2="1312" x1="544" />
            <wire x2="576" y1="1040" y2="1312" x1="576" />
            <wire x2="656" y1="1040" y2="1040" x1="576" />
        </branch>
        <branch name="XLXN_3(31:0)">
            <wire x2="1184" y1="912" y2="912" x1="1040" />
        </branch>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="720" type="branch" />
            <wire x2="1728" y1="720" y2="720" x1="1712" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="784" type="branch" />
            <wire x2="1728" y1="784" y2="784" x1="1712" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1104" type="branch" />
            <wire x2="1856" y1="1104" y2="1104" x1="1840" />
        </branch>
        <branch name="XLXN_7(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1168" type="branch" />
            <wire x2="1856" y1="1168" y2="1168" x1="1840" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1232" type="branch" />
            <wire x2="1856" y1="1232" y2="1232" x1="1840" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="1168" y1="976" y2="976" x1="1136" />
            <wire x2="1184" y1="976" y2="976" x1="1168" />
            <wire x2="1136" y1="976" y2="1056" x1="1136" />
            <wire x2="1456" y1="1056" y2="1056" x1="1136" />
            <wire x2="1456" y1="1056" y2="1184" x1="1456" />
            <wire x2="1456" y1="1184" y2="1184" x1="1376" />
        </branch>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="848" type="branch" />
            <wire x2="1184" y1="848" y2="848" x1="1168" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="912" type="branch" />
            <wire x2="656" y1="912" y2="912" x1="640" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="976" type="branch" />
            <wire x2="160" y1="976" y2="976" x1="144" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="1040" type="branch" />
            <wire x2="160" y1="1040" y2="1040" x1="144" />
        </branch>
        <branch name="XLXN_14(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="1312" type="branch" />
            <wire x2="160" y1="1312" y2="1312" x1="144" />
        </branch>
        <branch name="XLXN_15(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="1376" type="branch" />
            <wire x2="160" y1="1376" y2="1376" x1="144" />
        </branch>
        <instance x="1840" y="1680" name="XLXI_18" orien="R0" />
        <instance x="1568" y="1648" name="XLXI_19" orien="R0" />
        <instance x="880" y="1664" name="XLXI_20" orien="R0">
        </instance>
        <instance x="384" y="1664" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_22(2:0)">
            <wire x2="880" y1="1632" y2="1632" x1="768" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1568" type="branch" />
            <wire x2="880" y1="1568" y2="1568" x1="864" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1504" type="branch" />
            <wire x2="880" y1="1504" y2="1504" x1="864" />
        </branch>
        <branch name="XLXN_19(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1504" type="branch" />
            <wire x2="1280" y1="1504" y2="1504" x1="1264" />
        </branch>
        <branch name="XLXN_20">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1616" type="branch" />
            <wire x2="1568" y1="1616" y2="1616" x1="1552" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1840" y1="1616" y2="1616" x1="1792" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1552" type="branch" />
            <wire x2="1840" y1="1552" y2="1552" x1="1808" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2128" y1="1584" y2="1584" x1="2096" />
        </branch>
        <instance x="992" y="1280" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_24(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1184" type="branch" />
            <wire x2="992" y1="1184" y2="1184" x1="976" />
        </branch>
        <branch name="XLXN_25(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1248" type="branch" />
            <wire x2="992" y1="1248" y2="1248" x1="976" />
        </branch>
        <branch name="XLXN_44(31:0)">
            <wire x2="1728" y1="848" y2="848" x1="1568" />
        </branch>
        <branch name="XLXN_27(31:0)">
            <wire x2="944" y1="544" y2="544" x1="832" />
        </branch>
        <branch name="XLXN_28(2:0)">
            <wire x2="944" y1="608" y2="608" x1="832" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="944" y1="672" y2="672" x1="832" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="944" y1="736" y2="736" x1="832" />
        </branch>
        <branch name="XLXN_31(31:0)">
            <wire x2="944" y1="464" y2="464" x1="832" />
        </branch>
        <branch name="alu_out(31:0)">
            <wire x2="1616" y1="528" y2="528" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="832" y="464" name="XLXN_31(31:0)" orien="R180" />
        <iomarker fontsize="28" x="832" y="544" name="XLXN_27(31:0)" orien="R180" />
        <iomarker fontsize="28" x="832" y="608" name="XLXN_28(2:0)" orien="R180" />
        <iomarker fontsize="28" x="832" y="672" name="XLXN_29" orien="R180" />
        <iomarker fontsize="28" x="832" y="736" name="XLXN_30" orien="R180" />
        <iomarker fontsize="28" x="1616" y="528" name="alu_out(31:0)" orien="R0" />
    </sheet>
</drawing>