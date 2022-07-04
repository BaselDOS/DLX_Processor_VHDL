<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SDO(31:0)" />
        <signal name="reg_adr(4:0)" />
        <signal name="SACK_N" />
        <signal name="WR_IN_N" />
        <signal name="stop_n" />
        <signal name="step_en" />
        <signal name="CLK" />
        <signal name="Monitored_signals(31:0)" />
        <signal name="AI(9:0)" />
        <signal name="CARD_SEL" />
        <signal name="input_signal_2(31:0)" />
        <signal name="input_signal_1(31:0)" />
        <signal name="in_init" />
        <signal name="DOUT(31:0)" />
        <signal name="status_ID(31:0)" />
        <signal name="AI(4:0)" />
        <signal name="status_ID(4:0)" />
        <signal name="status_ID(31:24)" />
        <port polarity="Output" name="SDO(31:0)" />
        <port polarity="Output" name="reg_adr(4:0)" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Input" name="WR_IN_N" />
        <port polarity="Input" name="stop_n" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Monitored_signals(31:0)" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Input" name="CARD_SEL" />
        <port polarity="Input" name="input_signal_2(31:0)" />
        <port polarity="Input" name="input_signal_1(31:0)" />
        <port polarity="Input" name="in_init" />
        <blockdef name="Slave">
            <timestamp>2022-3-14T12:52:8</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="logical_analyzer">
            <timestamp>2022-3-21T12:42:25</timestamp>
            <rect width="384" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-364" height="24" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="ID">
            <timestamp>2022-3-14T12:51:54</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Slave" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CARD_SEL" name="CARD_SEL" />
            <blockpin signalname="WR_IN_N" name="WR_IN_N" />
            <blockpin signalname="AI(9:0)" name="Al(9:0)" />
            <blockpin signalname="DOUT(31:0)" name="IN1(31:0)" />
            <blockpin signalname="input_signal_1(31:0)" name="IN2(31:0)" />
            <blockpin signalname="status_ID(31:0)" name="IN4(31:0)" />
            <blockpin signalname="input_signal_2(31:0)" name="IN3(31:0)" />
            <blockpin signalname="SDO(31:0)" name="SDO(31:0)" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="reg_adr(4:0)" name="reg_adr(4:0)" />
        </block>
        <block symbolname="logical_analyzer" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="Monitored_signals(31:0)" name="Monitored_signals(31:0)" />
            <blockpin signalname="AI(4:0)" name="Al(4:0)" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="DOUT(31:0)" name="DOUT(31:0)" />
            <blockpin signalname="status_ID(4:0)" name="statis(4:0)" />
        </block>
        <block symbolname="ID" name="XLXI_11">
            <blockpin signalname="status_ID(31:24)" name="IDOUT(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SDO(31:0)">
            <wire x2="272" y1="592" y2="592" x1="112" />
        </branch>
        <branch name="reg_adr(4:0)">
            <wire x2="288" y1="672" y2="672" x1="128" />
        </branch>
        <iomarker fontsize="28" x="272" y="592" name="SDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="288" y="672" name="reg_adr(4:0)" orien="R0" />
        <line x2="924" y1="4" y2="836" x1="920" />
        <branch name="SACK_N">
            <wire x2="272" y1="528" y2="528" x1="112" />
        </branch>
        <iomarker fontsize="28" x="272" y="528" name="SACK_N" orien="R0" />
        <branch name="WR_IN_N">
            <wire x2="880" y1="144" y2="144" x1="720" />
        </branch>
        <branch name="stop_n">
            <wire x2="880" y1="272" y2="272" x1="720" />
        </branch>
        <branch name="step_en">
            <wire x2="880" y1="208" y2="208" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="144" name="WR_IN_N" orien="R180" />
        <iomarker fontsize="28" x="720" y="272" name="stop_n" orien="R180" />
        <iomarker fontsize="28" x="720" y="208" name="step_en" orien="R180" />
        <branch name="CLK">
            <wire x2="880" y1="336" y2="336" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="336" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="720" y="400" name="in_init" orien="R180" />
        <branch name="Monitored_signals(31:0)">
            <wire x2="464" y1="128" y2="128" x1="368" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="464" y1="192" y2="192" x1="160" />
        </branch>
        <branch name="CARD_SEL">
            <wire x2="464" y1="256" y2="256" x1="240" />
        </branch>
        <iomarker fontsize="28" x="368" y="128" name="Monitored_signals(31:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="192" name="AI(9:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="256" name="CARD_SEL" orien="R180" />
        <branch name="input_signal_2(31:0)">
            <wire x2="480" y1="416" y2="416" x1="336" />
        </branch>
        <branch name="input_signal_1(31:0)">
            <wire x2="480" y1="352" y2="352" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="416" name="input_signal_2(31:0)" orien="R180" />
        <iomarker fontsize="28" x="336" y="352" name="input_signal_1(31:0)" orien="R180" />
        <branch name="in_init">
            <wire x2="864" y1="400" y2="400" x1="720" />
        </branch>
        <instance x="1504" y="704" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="224" type="branch" />
            <wire x2="1504" y1="224" y2="224" x1="1328" />
        </branch>
        <branch name="CARD_SEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="288" type="branch" />
            <wire x2="1504" y1="288" y2="288" x1="1328" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="352" type="branch" />
            <wire x2="1504" y1="352" y2="352" x1="1328" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="416" type="branch" />
            <wire x2="1504" y1="416" y2="416" x1="1344" />
        </branch>
        <branch name="DOUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="480" type="branch" />
            <wire x2="1504" y1="480" y2="480" x1="1344" />
        </branch>
        <branch name="input_signal_1(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="544" type="branch" />
            <wire x2="1504" y1="544" y2="544" x1="1344" />
        </branch>
        <branch name="reg_adr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="672" type="branch" />
            <wire x2="2016" y1="672" y2="672" x1="1888" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="448" type="branch" />
            <wire x2="2000" y1="448" y2="448" x1="1888" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="224" type="branch" />
            <wire x2="2000" y1="224" y2="224" x1="1888" />
        </branch>
        <branch name="status_ID(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="608" type="branch" />
            <wire x2="1504" y1="608" y2="608" x1="1344" />
        </branch>
        <branch name="input_signal_2(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="672" type="branch" />
            <wire x2="1504" y1="672" y2="672" x1="1344" />
        </branch>
        <instance x="2576" y="624" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="272" type="branch" />
            <wire x2="2576" y1="272" y2="272" x1="2480" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="336" type="branch" />
            <wire x2="2576" y1="336" y2="336" x1="2496" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="400" type="branch" />
            <wire x2="2576" y1="400" y2="400" x1="2480" />
        </branch>
        <branch name="Monitored_signals(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="464" type="branch" />
            <wire x2="2576" y1="464" y2="464" x1="2480" />
        </branch>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="528" type="branch" />
            <wire x2="2576" y1="528" y2="528" x1="2496" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="592" type="branch" />
            <wire x2="2576" y1="592" y2="592" x1="2496" />
        </branch>
        <branch name="DOUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="272" type="branch" />
            <wire x2="3184" y1="272" y2="272" x1="3088" />
        </branch>
        <branch name="status_ID(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="592" type="branch" />
            <wire x2="3264" y1="592" y2="592" x1="3088" />
        </branch>
        <instance x="2528" y="784" name="XLXI_11" orien="R0">
        </instance>
        <branch name="status_ID(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="752" type="branch" />
            <wire x2="3120" y1="752" y2="752" x1="2912" />
        </branch>
        <text style="fontsize:48;fontname:Arial" x="392" y="56">Signals</text>
        <text style="fontsize:48;fontname:Arial" x="2120" y="72">Connections</text>
        <line x2="3480" y1="852" y2="856" x1="8" />
    </sheet>
</drawing>