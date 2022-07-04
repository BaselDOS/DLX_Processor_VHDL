<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="NE_G" />
        <signal name="SUM(31:0)" />
        <signal name="B(31:0)" />
        <signal name="A(31:0)" />
        <signal name="OFL" />
        <signal name="CO" />
        <signal name="A(31)" />
        <signal name="B(31)" />
        <signal name="A(15:0)" />
        <signal name="B(15:0)" />
        <signal name="XLXN_55" />
        <signal name="A(31:16)" />
        <signal name="B(31:16)" />
        <signal name="XLXN_59" />
        <signal name="CO_2" />
        <signal name="CO_1" />
        <signal name="CO_0" />
        <signal name="SUM(15:0)" />
        <signal name="SUB" />
        <signal name="SUM(31:16)" />
        <signal name="SUM_option1(15:0)" />
        <signal name="SUM_option2(15:0)" />
        <signal name="add" />
        <port polarity="Output" name="NE_G" />
        <port polarity="Output" name="SUM(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Output" name="OFL" />
        <port polarity="Output" name="CO" />
        <port polarity="Input" name="add" />
        <blockdef name="adsu16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="MUX16bit">
            <timestamp>2015-7-12T12:5:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="xor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="60" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="208" y1="-160" y2="-160" x1="256" />
            <arc ex="64" ey="-208" sx="64" sy="-112" r="56" cx="32" cy="-160" />
            <line x2="64" y1="-208" y2="-208" x1="128" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <arc ex="128" ey="-208" sx="208" sy="-160" r="88" cx="132" cy="-120" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="208" ey="-160" sx="128" sy="-112" r="88" cx="132" cy="-200" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="xor4" name="XLXI_7">
            <blockpin signalname="SUB" name="I0" />
            <blockpin signalname="CO" name="I1" />
            <blockpin signalname="B(31)" name="I2" />
            <blockpin signalname="A(31)" name="I3" />
            <blockpin signalname="NE_G" name="O" />
        </block>
        <block symbolname="adsu16" name="LSB0">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="SUB" name="CI" />
            <blockpin signalname="CO_0" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="SUM(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="MSB0">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_55" name="CI" />
            <blockpin signalname="CO_1" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="SUM_option1(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="MSB1">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_59" name="CI" />
            <blockpin signalname="CO_2" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="SUM_option2(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="add" name="I" />
            <blockpin signalname="SUB" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="XLXN_59" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_21">
            <blockpin signalname="XLXN_55" name="G" />
        </block>
        <block symbolname="m2_1" name="XLXI_22">
            <blockpin signalname="CO_1" name="D0" />
            <blockpin signalname="CO_2" name="D1" />
            <blockpin signalname="CO_0" name="S0" />
            <blockpin signalname="CO" name="O" />
        </block>
        <block symbolname="MUX16bit" name="XLXI_24">
            <blockpin signalname="CO_0" name="sel" />
            <blockpin signalname="SUM_option1(15:0)" name="A(15:0)" />
            <blockpin signalname="SUM_option2(15:0)" name="B(15:0)" />
            <blockpin signalname="SUM(31:16)" name="O(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="NE_G">
            <wire x2="496" y1="656" y2="656" x1="208" />
        </branch>
        <branch name="SUM(31:0)">
            <wire x2="512" y1="768" y2="768" x1="208" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="480" y1="400" y2="400" x1="240" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="496" y1="320" y2="320" x1="224" />
        </branch>
        <branch name="OFL">
            <wire x2="496" y1="896" y2="896" x1="192" />
        </branch>
        <iomarker fontsize="28" x="224" y="320" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="400" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="496" y="656" name="NE_G" orien="R0" />
        <iomarker fontsize="28" x="512" y="768" name="SUM(31:0)" orien="R0" />
        <iomarker fontsize="28" x="496" y="896" name="OFL" orien="R0" />
        <branch name="CO">
            <wire x2="496" y1="576" y2="576" x1="224" />
        </branch>
        <iomarker fontsize="28" x="496" y="576" name="CO" orien="R0" />
        <line x2="816" y1="60" y2="1808" x1="812" />
        <line x2="3484" y1="1808" y2="1808" x1="816" />
        <line x2="20" y1="1808" y2="1808" x1="816" />
        <text style="fontsize:42;fontname:Arial" x="324" y="112">Signals</text>
        <text style="fontsize:42;fontname:Arial" x="1864" y="80">Connections</text>
        <instance x="2864" y="1696" name="XLXI_7" orien="R0" />
        <branch name="A(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1440" type="branch" />
            <wire x2="2864" y1="1440" y2="1440" x1="2768" />
        </branch>
        <branch name="B(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="1504" type="branch" />
            <wire x2="2864" y1="1504" y2="1504" x1="2784" />
        </branch>
        <branch name="CO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1568" type="branch" />
            <wire x2="2864" y1="1568" y2="1568" x1="2768" />
        </branch>
        <branch name="NE_G">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="1536" type="branch" />
            <wire x2="3248" y1="1536" y2="1536" x1="3120" />
        </branch>
        <instance x="1360" y="864" name="LSB0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <instance x="1360" y="1408" name="MSB0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <instance x="1360" y="1840" name="MSB1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="544" type="branch" />
            <wire x2="1360" y1="544" y2="544" x1="1248" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="672" type="branch" />
            <wire x2="1360" y1="672" y2="672" x1="1264" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1360" y1="960" y2="960" x1="1248" />
        </branch>
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1088" type="branch" />
            <wire x2="1360" y1="1088" y2="1088" x1="1248" />
        </branch>
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1216" type="branch" />
            <wire x2="1360" y1="1216" y2="1216" x1="1264" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1360" y1="1392" y2="1392" x1="1264" />
        </branch>
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1648" type="branch" />
            <wire x2="1360" y1="1648" y2="1648" x1="1280" />
        </branch>
        <branch name="CO_2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1776" type="branch" />
            <wire x2="1952" y1="1776" y2="1776" x1="1808" />
        </branch>
        <branch name="CO_1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1344" type="branch" />
            <wire x2="1920" y1="1344" y2="1344" x1="1808" />
        </branch>
        <branch name="CO_0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="800" type="branch" />
            <wire x2="1920" y1="800" y2="800" x1="1808" />
        </branch>
        <branch name="SUM(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="608" type="branch" />
            <wire x2="1920" y1="608" y2="608" x1="1808" />
        </branch>
        <instance x="1376" y="272" name="XLXI_19" orien="R0" />
        <branch name="SUB">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="240" type="branch" />
            <wire x2="1696" y1="240" y2="240" x1="1600" />
        </branch>
        <branch name="SUB">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1632" type="branch" />
            <wire x2="2864" y1="1632" y2="1632" x1="2752" />
        </branch>
        <instance x="1264" y="1456" name="XLXI_20" orien="R270" />
        <instance x="1120" y="1024" name="XLXI_21" orien="M270" />
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1520" type="branch" />
            <wire x2="1360" y1="1520" y2="1520" x1="1216" />
        </branch>
        <instance x="2512" y="592" name="XLXI_22" orien="R0" />
        <branch name="CO_1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="432" type="branch" />
            <wire x2="2512" y1="432" y2="432" x1="2432" />
        </branch>
        <branch name="CO_2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="496" type="branch" />
            <wire x2="2512" y1="496" y2="496" x1="2448" />
        </branch>
        <branch name="CO_0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="560" type="branch" />
            <wire x2="2512" y1="560" y2="560" x1="2432" />
        </branch>
        <branch name="CO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="464" type="branch" />
            <wire x2="2912" y1="464" y2="464" x1="2832" />
        </branch>
        <instance x="2656" y="1040" name="XLXI_24" orien="R0">
        </instance>
        <branch name="CO_0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="880" type="branch" />
            <wire x2="2656" y1="880" y2="880" x1="2528" />
        </branch>
        <branch name="SUM(31:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="880" type="branch" />
            <wire x2="3152" y1="880" y2="880" x1="3040" />
        </branch>
        <branch name="SUB">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="416" type="branch" />
            <wire x2="1360" y1="416" y2="416" x1="1264" />
        </branch>
        <branch name="SUM_option1(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1152" type="branch" />
            <wire x2="1920" y1="1152" y2="1152" x1="1808" />
        </branch>
        <branch name="SUM_option1(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="944" type="branch" />
            <wire x2="2656" y1="944" y2="944" x1="2560" />
        </branch>
        <branch name="SUM_option2(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1008" type="branch" />
            <wire x2="2656" y1="1008" y2="1008" x1="2560" />
        </branch>
        <branch name="SUM_option2(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1584" type="branch" />
            <wire x2="1920" y1="1584" y2="1584" x1="1808" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="240" type="branch" />
            <wire x2="1376" y1="240" y2="240" x1="1248" />
        </branch>
        <branch name="add">
            <wire x2="464" y1="480" y2="480" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="480" name="add" orien="R180" />
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="800" type="branch" />
            <wire x2="1360" y1="800" y2="800" x1="1264" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1344" type="branch" />
            <wire x2="1360" y1="1344" y2="1344" x1="1264" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1776" type="branch" />
            <wire x2="1360" y1="1776" y2="1776" x1="1280" />
        </branch>
    </sheet>
</drawing>