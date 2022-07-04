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
        <signal name="D(31:0)" />
        <signal name="AEQZero" />
        <signal name="clk" />
        <signal name="C(31:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="Cadr(4:0)" />
        <signal name="GPR_WE" />
        <signal name="WE" />
        <signal name="Aadr_Or_Cadr(4:0)" />
        <signal name="Badr_Or_Cadr(4:0)" />
        <signal name="Dadr_Or_Cadr(4:0)" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="AEQZero" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="Aadr(4:0)" />
        <port polarity="Input" name="Badr(4:0)" />
        <port polarity="Input" name="Cadr(4:0)" />
        <port polarity="Input" name="GPR_WE" />
        <blockdef name="GPR_WE_opt2">
            <timestamp>2022-5-10T8:4:18</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="AEQZ">
            <timestamp>2015-7-12T12:3:8</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX5BIT">
            <timestamp>2012-1-19T21:41:30</timestamp>
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
        <block symbolname="MUX5BIT" name="XLXI_3">
            <blockpin signalname="WE" name="sel" />
            <blockpin signalname="Aadr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="Aadr_Or_Cadr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_4">
            <blockpin signalname="WE" name="sel" />
            <blockpin signalname="Badr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="Badr_Or_Cadr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_5">
            <blockpin signalname="WE" name="sel" />
            <blockpin signalname="Dadr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="Dadr_Or_Cadr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="AEQZ" name="XLXI_2">
            <blockpin signalname="A(31:0)" name="Din(31:0)" />
            <blockpin signalname="AEQZero" name="A_eqz" />
        </block>
        <block symbolname="GPR_WE_opt2" name="XLXI_1">
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="Cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="WE" name="WE" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_87">
            <blockpin signalname="Aadr_Or_Cadr(4:0)" name="ADD(4:0)" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="A(31:0)" name="DO(31:0)" />
            <blockpin signalname="WE" name="WE" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_88">
            <blockpin signalname="Badr_Or_Cadr(4:0)" name="ADD(4:0)" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="B(31:0)" name="DO(31:0)" />
            <blockpin signalname="WE" name="WE" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_89">
            <blockpin signalname="Dadr_Or_Cadr(4:0)" name="ADD(4:0)" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="D(31:0)" name="DO(31:0)" />
            <blockpin signalname="WE" name="WE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <text style="fontsize:42;fontname:Arial" x="348" y="116">Signals</text>
        <text style="fontsize:42;fontname:Arial" x="1800" y="84">Connections</text>
        <branch name="A(31:0)">
            <wire x2="656" y1="320" y2="320" x1="480" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="656" y1="384" y2="384" x1="496" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="656" y1="448" y2="448" x1="496" />
        </branch>
        <branch name="AEQZero">
            <wire x2="656" y1="512" y2="512" x1="480" />
        </branch>
        <iomarker fontsize="28" x="656" y="320" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="656" y="384" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="656" y="448" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="656" y="512" name="AEQZero" orien="R0" />
        <branch name="clk">
            <wire x2="368" y1="320" y2="320" x1="176" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="368" y1="656" y2="656" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="320" name="clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="656" name="C(31:0)" orien="R180" />
        <line x2="852" y1="12" y2="1676" x1="852" />
        <line x2="8" y1="1676" y2="1676" x1="852" />
        <line x2="3500" y1="1676" y2="1668" x1="856" />
        <instance x="1184" y="736" name="XLXI_3" orien="R0">
        </instance>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="576" type="branch" />
            <wire x2="1184" y1="576" y2="576" x1="1072" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="704" type="branch" />
            <wire x2="1184" y1="704" y2="704" x1="1072" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="640" type="branch" />
            <wire x2="1184" y1="640" y2="640" x1="1072" />
        </branch>
        <instance x="1888" y="800" name="XLXI_4" orien="R0">
        </instance>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="640" type="branch" />
            <wire x2="1888" y1="640" y2="640" x1="1808" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="768" type="branch" />
            <wire x2="1888" y1="768" y2="768" x1="1808" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="704" type="branch" />
            <wire x2="1888" y1="704" y2="704" x1="1792" />
        </branch>
        <instance x="2704" y="848" name="XLXI_5" orien="R0">
        </instance>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="688" type="branch" />
            <wire x2="2704" y1="688" y2="688" x1="2624" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="816" type="branch" />
            <wire x2="2704" y1="816" y2="816" x1="2624" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="752" type="branch" />
            <wire x2="2704" y1="752" y2="752" x1="2624" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="1088" type="branch" />
            <wire x2="2432" y1="1088" y2="1088" x1="2352" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1088" type="branch" />
            <wire x2="1968" y1="1088" y2="1088" x1="1872" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1152" type="branch" />
            <wire x2="1968" y1="1152" y2="1152" x1="1872" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1216" type="branch" />
            <wire x2="1968" y1="1216" y2="1216" x1="1872" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="1088" type="branch" />
            <wire x2="3280" y1="1088" y2="1088" x1="3152" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1088" type="branch" />
            <wire x2="2768" y1="1088" y2="1088" x1="2672" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1152" type="branch" />
            <wire x2="2768" y1="1152" y2="1152" x1="2672" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1216" type="branch" />
            <wire x2="2768" y1="1216" y2="1216" x1="2672" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1088" type="branch" />
            <wire x2="1728" y1="1088" y2="1088" x1="1616" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1088" type="branch" />
            <wire x2="1232" y1="1088" y2="1088" x1="1152" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1152" type="branch" />
            <wire x2="1232" y1="1152" y2="1152" x1="1152" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1216" type="branch" />
            <wire x2="1232" y1="1216" y2="1216" x1="1136" />
        </branch>
        <instance x="1776" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1520" type="branch" />
            <wire x2="1776" y1="1520" y2="1520" x1="1632" />
        </branch>
        <branch name="AEQZero">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1520" type="branch" />
            <wire x2="2304" y1="1520" y2="1520" x1="2160" />
        </branch>
        <instance x="1216" y="384" name="XLXI_1" orien="R0">
        </instance>
        <branch name="WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="288" type="branch" />
            <wire x2="1728" y1="288" y2="288" x1="1600" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="352" type="branch" />
            <wire x2="1216" y1="352" y2="352" x1="1088" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="288" type="branch" />
            <wire x2="1216" y1="288" y2="288" x1="1088" />
        </branch>
        <branch name="Aadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="576" type="branch" />
            <wire x2="1696" y1="576" y2="576" x1="1568" />
        </branch>
        <branch name="Badr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="640" type="branch" />
            <wire x2="2416" y1="640" y2="640" x1="2272" />
        </branch>
        <branch name="Dadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="688" type="branch" />
            <wire x2="3200" y1="688" y2="688" x1="3088" />
        </branch>
        <branch name="Aadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1280" type="branch" />
            <wire x2="1232" y1="1280" y2="1280" x1="1136" />
        </branch>
        <branch name="Badr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1280" type="branch" />
            <wire x2="1968" y1="1280" y2="1280" x1="1872" />
        </branch>
        <branch name="Dadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1280" type="branch" />
            <wire x2="2768" y1="1280" y2="1280" x1="2672" />
        </branch>
        <instance x="1232" y="1312" name="XLXI_87" orien="R0">
        </instance>
        <instance x="1968" y="1312" name="XLXI_88" orien="R0">
        </instance>
        <instance x="2768" y="1312" name="XLXI_89" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="752" name="GPR_WE" orien="R180" />
        <branch name="GPR_WE">
            <wire x2="368" y1="752" y2="752" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="560" name="Dadr(4:0)" orien="R180" />
        <branch name="Dadr(4:0)">
            <wire x2="368" y1="560" y2="560" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="496" name="Cadr(4:0)" orien="R180" />
        <branch name="Cadr(4:0)">
            <wire x2="368" y1="496" y2="496" x1="192" />
        </branch>
        <iomarker fontsize="28" x="176" y="448" name="Badr(4:0)" orien="R180" />
        <branch name="Badr(4:0)">
            <wire x2="368" y1="448" y2="448" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="384" name="Aadr(4:0)" orien="R180" />
        <branch name="Aadr(4:0)">
            <wire x2="368" y1="384" y2="384" x1="176" />
        </branch>
    </sheet>
</drawing>