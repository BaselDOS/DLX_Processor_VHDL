<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="in_init" />
        <signal name="step_en" />
        <signal name="Monitored_signals(31:0)" />
        <signal name="Al(4:0)" />
        <signal name="stop_n" />
        <signal name="DOUT(31:0)" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="run" />
        <signal name="sts_we" />
        <signal name="we" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="CNT_O(4:0)" />
        <signal name="XLXN_66(4:0)" />
        <signal name="statis(4:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_41" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="in_init" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="Monitored_signals(31:0)" />
        <port polarity="Input" name="Al(4:0)" />
        <port polarity="Input" name="stop_n" />
        <port polarity="Output" name="DOUT(31:0)" />
        <port polarity="Output" name="statis(4:0)" />
        <blockdef name="MUX5BIT">
            <timestamp>2012-1-19T20:41:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="RAM32X32S">
            <timestamp>2022-5-10T9:8:26</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <blockdef name="CNT5">
            <timestamp>2021-2-28T11:44:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Reg5">
            <timestamp>2022-3-20T19:34:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="CNT5" name="XLXI_3">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="we" name="ce" />
            <blockpin signalname="XLXN_62" name="reset" />
            <blockpin signalname="CNT_O(4:0)" name="cnt_o(4:0)" />
        </block>
        <block symbolname="fd" name="XLXI_7">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_60" name="D" />
            <blockpin signalname="XLXN_61" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_61" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="run" name="I0" />
            <blockpin signalname="stop_n" name="I1" />
            <blockpin signalname="we" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_26" name="D" />
            <blockpin signalname="XLXN_27" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="in_init" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_27" name="I" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_18">
            <blockpin signalname="in_init" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_19">
            <blockpin signalname="step_en" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="run" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_51">
            <blockpin signalname="sts_we" name="I" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_2">
            <blockpin signalname="XLXN_66(4:0)" name="ADD(4:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Monitored_signals(31:0)" name="D(31:0)" />
            <blockpin signalname="DOUT(31:0)" name="DO(31:0)" />
            <blockpin signalname="we" name="WE" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_1">
            <blockpin signalname="we" name="sel" />
            <blockpin signalname="Al(4:0)" name="A0(4:0)" />
            <blockpin signalname="CNT_O(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_66(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="Reg5" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="sts_we" name="CE" />
            <blockpin signalname="CNT_O(4:0)" name="D(4:0)" />
            <blockpin signalname="statis(4:0)" name="Q(4:0)" />
        </block>
        <block symbolname="fd" name="XLXI_8">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="run" name="D" />
            <blockpin signalname="XLXN_41" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="sts_we" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_22">
            <blockpin signalname="run" name="I" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="624" y1="80" y2="80" x1="368" />
        </branch>
        <branch name="in_init">
            <wire x2="624" y1="288" y2="288" x1="352" />
        </branch>
        <branch name="step_en">
            <wire x2="624" y1="352" y2="352" x1="336" />
        </branch>
        <branch name="Monitored_signals(31:0)">
            <wire x2="624" y1="176" y2="176" x1="352" />
        </branch>
        <branch name="Al(4:0)">
            <wire x2="608" y1="416" y2="416" x1="304" />
        </branch>
        <branch name="stop_n">
            <wire x2="592" y1="496" y2="496" x1="304" />
        </branch>
        <iomarker fontsize="28" x="368" y="80" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="352" y="288" name="in_init" orien="R180" />
        <iomarker fontsize="28" x="336" y="352" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="352" y="176" name="Monitored_signals(31:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="416" name="Al(4:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="496" name="stop_n" orien="R180" />
        <branch name="DOUT(31:0)">
            <wire x2="976" y1="80" y2="80" x1="768" />
        </branch>
        <iomarker fontsize="28" x="976" y="80" name="DOUT(31:0)" orien="R0" />
        <line x2="1244" y1="8" y2="588" x1="1244" />
        <line x2="8" y1="588" y2="588" x1="1244" />
        <instance x="1840" y="496" name="XLXI_6" orien="R0" />
        <instance x="1472" y="272" name="XLXI_20" orien="R0" />
        <instance x="2336" y="272" name="XLXI_21" orien="R0" />
        <instance x="2656" y="368" name="XLXI_18" orien="R0" />
        <instance x="2992" y="400" name="XLXI_19" orien="R0" />
        <branch name="in_init">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="240" type="branch" />
            <wire x2="1472" y1="240" y2="240" x1="1360" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1840" y1="240" y2="240" x1="1696" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2336" y1="240" y2="240" x1="2224" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2656" y1="240" y2="240" x1="2560" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2992" y1="272" y2="272" x1="2912" />
        </branch>
        <branch name="run">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="304" type="branch" />
            <wire x2="3376" y1="304" y2="304" x1="3248" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="336" type="branch" />
            <wire x2="2992" y1="336" y2="336" x1="2928" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="304" type="branch" />
            <wire x2="2656" y1="304" y2="304" x1="2560" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="368" type="branch" />
            <wire x2="1840" y1="368" y2="368" x1="1712" />
        </branch>
        <instance x="896" y="960" name="XLXI_17" orien="R0" />
        <branch name="run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="896" type="branch" />
            <wire x2="896" y1="896" y2="896" x1="736" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="832" type="branch" />
            <wire x2="880" y1="832" y2="832" x1="736" />
            <wire x2="896" y1="832" y2="832" x1="880" />
        </branch>
        <branch name="we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="864" type="branch" />
            <wire x2="1344" y1="864" y2="864" x1="1152" />
        </branch>
        <instance x="2192" y="1440" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1904" y="1440" name="XLXI_23" orien="R0" />
        <instance x="1440" y="1152" name="XLXI_7" orien="M180" />
        <instance x="1120" y="1440" name="XLXI_51" orien="R0" />
        <branch name="sts_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1408" type="branch" />
            <wire x2="1120" y1="1408" y2="1408" x1="992" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1280" type="branch" />
            <wire x2="1440" y1="1280" y2="1280" x1="992" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1440" y1="1408" y2="1408" x1="1344" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="1904" y1="1408" y2="1408" x1="1824" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2192" y1="1408" y2="1408" x1="2128" />
        </branch>
        <branch name="we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1344" type="branch" />
            <wire x2="2192" y1="1344" y2="1344" x1="2016" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1280" type="branch" />
            <wire x2="2192" y1="1280" y2="1280" x1="2016" />
        </branch>
        <branch name="CNT_O(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1280" type="branch" />
            <wire x2="2752" y1="1280" y2="1280" x1="2576" />
        </branch>
        <branch name="XLXN_66(4:0)">
            <wire x2="2736" y1="1984" y2="1984" x1="2272" />
            <wire x2="2752" y1="1984" y2="1984" x1="2736" />
        </branch>
        <instance x="2752" y="2016" name="XLXI_2" orien="R0">
        </instance>
        <branch name="we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="1856" type="branch" />
            <wire x2="2752" y1="1856" y2="1856" x1="2624" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1792" type="branch" />
            <wire x2="2736" y1="1792" y2="1792" x1="2640" />
            <wire x2="2752" y1="1792" y2="1792" x1="2736" />
        </branch>
        <instance x="1888" y="1824" name="XLXI_1" orien="M180">
        </instance>
        <branch name="CNT_O(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1856" type="branch" />
            <wire x2="1888" y1="1856" y2="1856" x1="1728" />
        </branch>
        <branch name="Al(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1920" type="branch" />
            <wire x2="1888" y1="1920" y2="1920" x1="1744" />
        </branch>
        <branch name="we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1984" type="branch" />
            <wire x2="1888" y1="1984" y2="1984" x1="1728" />
        </branch>
        <instance x="608" y="1952" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="1792" type="branch" />
            <wire x2="608" y1="1792" y2="1792" x1="448" />
        </branch>
        <branch name="sts_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="1856" type="branch" />
            <wire x2="464" y1="1856" y2="1856" x1="448" />
            <wire x2="608" y1="1856" y2="1856" x1="464" />
        </branch>
        <branch name="CNT_O(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="1920" type="branch" />
            <wire x2="608" y1="1920" y2="1920" x1="448" />
        </branch>
        <branch name="statis(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1792" type="branch" />
            <wire x2="1216" y1="1792" y2="1792" x1="992" />
        </branch>
        <branch name="statis(4:0)">
            <wire x2="1024" y1="208" y2="208" x1="752" />
        </branch>
        <iomarker fontsize="28" x="1024" y="208" name="statis(4:0)" orien="R0" />
        <branch name="Monitored_signals(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="1920" type="branch" />
            <wire x2="2752" y1="1920" y2="1920" x1="2608" />
        </branch>
        <branch name="DOUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3296" y="1792" type="branch" />
            <wire x2="3296" y1="1792" y2="1792" x1="3136" />
        </branch>
        <instance x="2160" y="944" name="XLXI_8" orien="R0" />
        <instance x="2976" y="816" name="XLXI_16" orien="R0" />
        <branch name="run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="688" type="branch" />
            <wire x2="2160" y1="688" y2="688" x1="2048" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="816" type="branch" />
            <wire x2="2160" y1="816" y2="816" x1="2048" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="2976" y1="752" y2="752" x1="2944" />
        </branch>
        <branch name="sts_we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="720" type="branch" />
            <wire x2="3360" y1="720" y2="720" x1="3232" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="2976" y1="688" y2="688" x1="2544" />
        </branch>
        <instance x="2720" y="784" name="XLXI_22" orien="R0" />
        <branch name="run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="752" type="branch" />
            <wire x2="2720" y1="752" y2="752" x1="2640" />
        </branch>
    </sheet>
</drawing>