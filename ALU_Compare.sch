<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_12" />
        <signal name="F(2)" />
        <signal name="COMP_OUT" />
        <signal name="S(31:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="F(1)" />
        <signal name="XLXN_11" />
        <signal name="F(2:0)" />
        <signal name="NE_G" />
        <signal name="XLXN_39" />
        <signal name="XLXN_15" />
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
            <wire x2="2192" y1="1264" y2="1264" x1="2176" />
            <wire x2="2256" y1="1264" y2="1264" x1="2192" />
            <wire x2="2336" y1="1152" y2="1152" x1="2256" />
            <wire x2="2352" y1="1152" y2="1152" x1="2336" />
            <wire x2="2256" y1="1152" y2="1264" x1="2256" />
        </branch>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1232" type="branch" />
            <wire x2="1824" y1="1232" y2="1232" x1="1808" />
            <wire x2="1920" y1="1232" y2="1232" x1="1824" />
        </branch>
        <branch name="COMP_OUT">
            <wire x2="3072" y1="1280" y2="1280" x1="3008" />
            <wire x2="3088" y1="1280" y2="1280" x1="3072" />
        </branch>
        <branch name="S(31:0)">
            <wire x2="1008" y1="1056" y2="1056" x1="992" />
            <wire x2="1056" y1="1056" y2="1056" x1="1008" />
            <wire x2="1072" y1="1056" y2="1056" x1="1056" />
        </branch>
        <instance x="1072" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="2192" y1="1088" y2="1088" x1="2176" />
            <wire x2="2336" y1="1088" y2="1088" x1="2192" />
            <wire x2="2352" y1="1088" y2="1088" x1="2336" />
        </branch>
        <instance x="2352" y="1216" name="XLXI_2" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="2640" y1="1536" y2="1536" x1="2624" />
            <wire x2="2688" y1="1536" y2="1536" x1="2640" />
            <wire x2="2736" y1="1312" y2="1312" x1="2688" />
            <wire x2="2752" y1="1312" y2="1312" x1="2736" />
            <wire x2="2688" y1="1312" y2="1536" x1="2688" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2624" y1="1120" y2="1120" x1="2608" />
            <wire x2="2672" y1="1120" y2="1120" x1="2624" />
            <wire x2="2672" y1="1120" y2="1248" x1="2672" />
            <wire x2="2736" y1="1248" y2="1248" x1="2672" />
            <wire x2="2752" y1="1248" y2="1248" x1="2736" />
        </branch>
        <instance x="2752" y="1376" name="XLXI_3" orien="R0" />
        <instance x="2368" y="1632" name="XLXI_13" orien="R0" />
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1120" type="branch" />
            <wire x2="1808" y1="1120" y2="1120" x1="1792" />
            <wire x2="1920" y1="1120" y2="1120" x1="1808" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1536" y1="1056" y2="1056" x1="1456" />
            <wire x2="1536" y1="1056" y2="1568" x1="1536" />
            <wire x2="2368" y1="1568" y2="1568" x1="1536" />
            <wire x2="1920" y1="1056" y2="1056" x1="1536" />
        </branch>
        <instance x="1920" y="1184" name="XLXI_5" orien="R0" />
        <branch name="F(2:0)">
            <wire x2="1088" y1="1264" y2="1264" x1="912" />
        </branch>
        <branch name="NE_G">
            <wire x2="1088" y1="1360" y2="1360" x1="896" />
        </branch>
        <instance x="1920" y="1360" name="XLXI_33" orien="R0" />
        <instance x="1920" y="1360" name="XLXI_34" orien="M180" />
        <branch name="XLXN_39">
            <wire x2="2224" y1="1456" y2="1456" x1="2176" />
            <wire x2="2272" y1="1456" y2="1456" x1="2224" />
            <wire x2="2272" y1="1456" y2="1504" x1="2272" />
            <wire x2="2368" y1="1504" y2="1504" x1="2272" />
        </branch>
        <branch name="NE_G">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1360" type="branch" />
            <wire x2="1904" y1="1360" y2="1360" x1="1792" />
            <wire x2="1904" y1="1360" y2="1424" x1="1904" />
            <wire x2="1920" y1="1424" y2="1424" x1="1904" />
            <wire x2="1920" y1="1296" y2="1296" x1="1904" />
            <wire x2="1904" y1="1296" y2="1360" x1="1904" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1488" type="branch" />
            <wire x2="1920" y1="1488" y2="1488" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1280" name="COMP_OUT" orien="R0" />
        <iomarker fontsize="28" x="912" y="1264" name="F(2:0)" orien="R180" />
        <iomarker fontsize="28" x="896" y="1360" name="NE_G" orien="R180" />
        <iomarker fontsize="28" x="992" y="1056" name="S(31:0)" orien="R180" />
    </sheet>
</drawing>