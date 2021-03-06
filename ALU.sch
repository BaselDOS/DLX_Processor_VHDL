<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="TEST" />
        <signal name="ALU_F(2:0)" />
        <signal name="ADD" />
        <signal name="ALU_Out(31:0)" />
        <signal name="F(2:0)" />
        <signal name="ALU_SUM(31:0)" />
        <signal name="F(0)" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="COMP(0)" />
        <signal name="NE_G" />
        <signal name="XLXN_147(31:0)" />
        <signal name="XLXN_148(31:0)" />
        <signal name="XLXN_151(31:0)" />
        <signal name="XLXN_152(31:0)" />
        <signal name="F(1)" />
        <signal name="Bitwise_OP(31:0)" />
        <signal name="COMP(31:1)" />
        <signal name="XLXN_9(2:0)" />
        <signal name="F(2)" />
        <signal name="XLXN_163(31:0)" />
        <signal name="COMP(31:0)" />
        <signal name="ADD_inn" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="TEST" />
        <port polarity="Input" name="ALU_F(2:0)" />
        <port polarity="Input" name="ADD" />
        <port polarity="Output" name="ALU_Out(31:0)" />
        <port polarity="Output" name="NE_G" />
        <blockdef name="REG_ZERO_31">
            <timestamp>2022-5-30T17:29:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="C011">
            <timestamp>2022-5-30T17:27:11</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="ALU_ADDER">
            <timestamp>2022-5-30T17:24:29</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ALU_Comprator">
            <timestamp>2022-5-30T16:8:57</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="nor2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="44" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
        </blockdef>
        <block symbolname="ALU_ADDER" name="XLXI_11">
            <blockpin signalname="ADD_inn" name="ADD" />
            <blockpin signalname="A(31:0)" name="B(31:0)" />
            <blockpin signalname="B(31:0)" name="A(31:0)" />
            <blockpin signalname="NE_G" name="NE_G" />
            <blockpin signalname="ALU_SUM(31:0)" name="SUM(31:0)" />
            <blockpin signalname="XLXN_35" name="OFL" />
            <blockpin signalname="XLXN_36" name="CO" />
        </block>
        <block symbolname="ALU_Comprator" name="XLXI_12">
            <blockpin signalname="ALU_SUM(31:0)" name="S(31:0)" />
            <blockpin signalname="F(2:0)" name="F(2:0)" />
            <blockpin signalname="NE_G" name="NE_G" />
            <blockpin signalname="COMP(0)" name="COMP_OUT" />
        </block>
        <block symbolname="XOR32" name="XLXI_13">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_147(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_45">
            <blockpin signalname="XLXN_35" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_46">
            <blockpin signalname="XLXN_36" name="G" />
        </block>
        <block symbolname="OR32" name="XLXI_16">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_148(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="AND32" name="XLXI_17">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_151(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_52">
            <blockpin signalname="F(0)" name="sel" />
            <blockpin signalname="XLXN_147(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_148(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_152(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_53">
            <blockpin signalname="F(1)" name="sel" />
            <blockpin signalname="XLXN_152(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_151(31:0)" name="B(31:0)" />
            <blockpin signalname="Bitwise_OP(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="REG_ZERO_31" name="XLXI_2">
            <blockpin signalname="COMP(31:1)" name="REG_Out(30:0)" />
        </block>
        <block symbolname="C011" name="XLXI_3">
            <blockpin signalname="XLXN_9(2:0)" name="C011_Out(2:0)" />
        </block>
        <block symbolname="MUX3BIT" name="XLXI_4">
            <blockpin signalname="ADD" name="sel" />
            <blockpin signalname="ALU_F(2:0)" name="A0(2:0)" />
            <blockpin signalname="XLXN_9(2:0)" name="A1(2:0)" />
            <blockpin signalname="F(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_57">
            <blockpin signalname="F(2)" name="sel" />
            <blockpin signalname="ALU_SUM(31:0)" name="A(31:0)" />
            <blockpin signalname="Bitwise_OP(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_163(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_58">
            <blockpin signalname="TEST" name="sel" />
            <blockpin signalname="XLXN_163(31:0)" name="A(31:0)" />
            <blockpin signalname="COMP(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="nor2b1" name="XLXI_73">
            <blockpin signalname="F(0)" name="I0" />
            <blockpin signalname="TEST" name="I1" />
            <blockpin signalname="ADD_inn" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="496" name="XLXI_11" orien="R0">
        </instance>
        <branch name="ALU_SUM(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="336" type="branch" />
            <wire x2="1952" y1="336" y2="336" x1="1856" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2048" y1="400" y2="400" x1="1856" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2048" y1="464" y2="464" x1="1856" />
        </branch>
        <branch name="ALU_SUM(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="304" type="branch" />
            <wire x2="2576" y1="304" y2="304" x1="2432" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="368" type="branch" />
            <wire x2="2576" y1="368" y2="368" x1="2432" />
        </branch>
        <branch name="COMP(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3088" y="304" type="branch" />
            <wire x2="3088" y1="304" y2="304" x1="2960" />
        </branch>
        <line x2="768" y1="40" y2="1916" x1="768" />
        <line x2="3492" y1="1916" y2="1920" x1="768" />
        <line x2="8" y1="1920" y2="1920" x1="772" />
        <text style="fontsize:42;fontname:Arial" x="1932" y="68">Connections</text>
        <text style="fontsize:42;fontname:Arial" x="272" y="84">Signals</text>
        <branch name="A(31:0)">
            <wire x2="544" y1="432" y2="432" x1="240" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="528" y1="512" y2="512" x1="256" />
        </branch>
        <branch name="TEST">
            <wire x2="528" y1="608" y2="608" x1="256" />
        </branch>
        <branch name="ALU_F(2:0)">
            <wire x2="528" y1="688" y2="688" x1="256" />
        </branch>
        <branch name="ADD">
            <wire x2="528" y1="768" y2="768" x1="256" />
        </branch>
        <branch name="ALU_Out(31:0)">
            <wire x2="512" y1="880" y2="880" x1="256" />
        </branch>
        <branch name="NE_G">
            <wire x2="512" y1="976" y2="976" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="432" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="512" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="608" name="TEST" orien="R180" />
        <iomarker fontsize="28" x="256" y="688" name="ALU_F(2:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="768" name="ADD" orien="R180" />
        <iomarker fontsize="28" x="512" y="880" name="ALU_Out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="512" y="976" name="NE_G" orien="R0" />
        <branch name="NE_G">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="272" type="branch" />
            <wire x2="1968" y1="272" y2="272" x1="1856" />
        </branch>
        <branch name="NE_G">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="432" type="branch" />
            <wire x2="2576" y1="432" y2="432" x1="2448" />
        </branch>
        <instance x="2176" y="464" name="XLXI_45" orien="R270" />
        <instance x="2176" y="528" name="XLXI_46" orien="R270" />
        <instance x="2576" y="464" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1152" y="992" name="XLXI_16" orien="R0">
        </instance>
        <instance x="1168" y="1216" name="XLXI_17" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="656" type="branch" />
            <wire x2="1152" y1="656" y2="656" x1="1024" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="720" type="branch" />
            <wire x2="1152" y1="720" y2="720" x1="1024" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="896" type="branch" />
            <wire x2="1152" y1="896" y2="896" x1="1040" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1120" type="branch" />
            <wire x2="1168" y1="1120" y2="1120" x1="1072" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="960" type="branch" />
            <wire x2="1152" y1="960" y2="960" x1="1056" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1184" type="branch" />
            <wire x2="1168" y1="1184" y2="1184" x1="1072" />
        </branch>
        <instance x="1152" y="752" name="XLXI_13" orien="R0">
        </instance>
        <instance x="1632" y="880" name="XLXI_52" orien="R0">
        </instance>
        <instance x="2256" y="1024" name="XLXI_53" orien="R0">
        </instance>
        <branch name="XLXN_147(31:0)">
            <wire x2="1584" y1="656" y2="656" x1="1536" />
            <wire x2="1584" y1="656" y2="784" x1="1584" />
            <wire x2="1632" y1="784" y2="784" x1="1584" />
        </branch>
        <branch name="XLXN_148(31:0)">
            <wire x2="1584" y1="896" y2="896" x1="1536" />
            <wire x2="1584" y1="848" y2="896" x1="1584" />
            <wire x2="1632" y1="848" y2="848" x1="1584" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="608" type="branch" />
            <wire x2="1632" y1="608" y2="608" x1="1616" />
            <wire x2="1616" y1="608" y2="720" x1="1616" />
            <wire x2="1632" y1="720" y2="720" x1="1616" />
        </branch>
        <branch name="XLXN_151(31:0)">
            <wire x2="1904" y1="1120" y2="1120" x1="1552" />
            <wire x2="1904" y1="992" y2="1120" x1="1904" />
            <wire x2="2256" y1="992" y2="992" x1="1904" />
        </branch>
        <branch name="XLXN_152(31:0)">
            <wire x2="2128" y1="720" y2="720" x1="2016" />
            <wire x2="2128" y1="720" y2="928" x1="2128" />
            <wire x2="2256" y1="928" y2="928" x1="2128" />
        </branch>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="736" type="branch" />
            <wire x2="2256" y1="736" y2="736" x1="2240" />
            <wire x2="2240" y1="736" y2="864" x1="2240" />
            <wire x2="2256" y1="864" y2="864" x1="2240" />
        </branch>
        <branch name="Bitwise_OP(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="864" type="branch" />
            <wire x2="2752" y1="864" y2="864" x1="2640" />
        </branch>
        <instance x="864" y="1424" name="XLXI_2" orien="R0">
        </instance>
        <branch name="COMP(31:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1392" type="branch" />
            <wire x2="1392" y1="1392" y2="1392" x1="1248" />
        </branch>
        <instance x="768" y="1792" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1344" y="1792" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_9(2:0)">
            <wire x2="1344" y1="1760" y2="1760" x1="1152" />
        </branch>
        <branch name="ALU_F(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1696" type="branch" />
            <wire x2="1344" y1="1696" y2="1696" x1="1184" />
        </branch>
        <branch name="ADD">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1632" type="branch" />
            <wire x2="1344" y1="1632" y2="1632" x1="1200" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1632" type="branch" />
            <wire x2="1840" y1="1632" y2="1632" x1="1728" />
        </branch>
        <instance x="2096" y="1488" name="XLXI_57" orien="R0">
        </instance>
        <instance x="2704" y="1488" name="XLXI_58" orien="R0">
        </instance>
        <branch name="ALU_SUM(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="1392" type="branch" />
            <wire x2="2096" y1="1392" y2="1392" x1="1968" />
        </branch>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="1328" type="branch" />
            <wire x2="2096" y1="1328" y2="1328" x1="1968" />
        </branch>
        <branch name="XLXN_163(31:0)">
            <wire x2="2592" y1="1328" y2="1328" x1="2480" />
            <wire x2="2592" y1="1328" y2="1392" x1="2592" />
            <wire x2="2704" y1="1392" y2="1392" x1="2592" />
        </branch>
        <branch name="TEST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1232" type="branch" />
            <wire x2="2656" y1="1232" y2="1232" x1="2640" />
            <wire x2="2656" y1="1232" y2="1328" x1="2656" />
            <wire x2="2704" y1="1328" y2="1328" x1="2656" />
        </branch>
        <branch name="COMP(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="1456" type="branch" />
            <wire x2="2704" y1="1456" y2="1456" x1="2608" />
        </branch>
        <branch name="ALU_Out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3216" y="1328" type="branch" />
            <wire x2="3216" y1="1328" y2="1328" x1="3088" />
        </branch>
        <branch name="TEST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="304" type="branch" />
            <wire x2="1136" y1="304" y2="304" x1="1008" />
        </branch>
        <branch name="ADD_inn">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="272" type="branch" />
            <wire x2="1424" y1="272" y2="272" x1="1392" />
            <wire x2="1472" y1="272" y2="272" x1="1424" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="240" type="branch" />
            <wire x2="1136" y1="240" y2="240" x1="992" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="368" type="branch" />
            <wire x2="1472" y1="368" y2="368" x1="1376" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="464" type="branch" />
            <wire x2="1472" y1="464" y2="464" x1="1376" />
        </branch>
        <branch name="Bitwise_OP(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="1456" type="branch" />
            <wire x2="2096" y1="1456" y2="1456" x1="1968" />
        </branch>
        <instance x="1136" y="176" name="XLXI_73" orien="M180" />
    </sheet>
</drawing>