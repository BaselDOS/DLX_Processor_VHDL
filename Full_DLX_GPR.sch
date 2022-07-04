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
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="Cadr(4:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="GPR_WE" />
        <signal name="WE" />
        <signal name="Aadr_Or_Cadr(4:0)" />
        <signal name="Badr_Or_Cadr(4:0)" />
        <signal name="Dadr_Or_Cadr(4:0)" />
        <signal name="JLINK" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="AEQZero" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="Aadr(4:0)" />
        <port polarity="Input" name="Badr(4:0)" />
        <port polarity="Input" name="Cadr(4:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="JLINK" />
        <blockdef name="FULL_DLX_GPR_opt2">
            <timestamp>2022-5-31T7:46:56</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <block symbolname="FULL_DLX_GPR_opt2" name="XLXI_1">
            <blockpin signalname="JLINK" name="JLINK" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="Cadr(4:0)" name="CARD(4:0)" />
            <blockpin signalname="WE" name="WE" />
        </block>
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
        <text style="fontsize:42;fontname:Arial" x="396" y="148">Signals</text>
        <text style="fontsize:42;fontname:Arial" x="1848" y="116">Connections</text>
        <branch name="A(31:0)">
            <wire x2="704" y1="352" y2="352" x1="528" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="704" y1="416" y2="416" x1="544" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="704" y1="480" y2="480" x1="544" />
        </branch>
        <branch name="AEQZero">
            <wire x2="704" y1="544" y2="544" x1="528" />
        </branch>
        <branch name="clk">
            <wire x2="416" y1="352" y2="352" x1="224" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="416" y1="688" y2="688" x1="224" />
        </branch>
        <branch name="Aadr(4:0)">
            <wire x2="416" y1="416" y2="416" x1="208" />
        </branch>
        <branch name="Badr(4:0)">
            <wire x2="416" y1="480" y2="480" x1="208" />
        </branch>
        <branch name="Cadr(4:0)">
            <wire x2="416" y1="528" y2="528" x1="208" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="416" y1="592" y2="592" x1="208" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="416" y1="784" y2="784" x1="208" />
        </branch>
        <line x2="900" y1="44" y2="1708" x1="900" />
        <line x2="56" y1="1708" y2="1708" x1="900" />
        <instance x="1232" y="768" name="XLXI_3" orien="R0">
        </instance>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="608" type="branch" />
            <wire x2="1232" y1="608" y2="608" x1="1120" />
        </branch>
        <instance x="1936" y="832" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2752" y="880" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1824" y="1584" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Aadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="608" type="branch" />
            <wire x2="1744" y1="608" y2="608" x1="1616" />
        </branch>
        <branch name="Badr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="672" type="branch" />
            <wire x2="2464" y1="672" y2="672" x1="2320" />
        </branch>
        <branch name="Dadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="720" type="branch" />
            <wire x2="3248" y1="720" y2="720" x1="3136" />
        </branch>
        <instance x="1280" y="1344" name="XLXI_87" orien="R0">
        </instance>
        <instance x="2016" y="1344" name="XLXI_88" orien="R0">
        </instance>
        <instance x="2816" y="1344" name="XLXI_89" orien="R0">
        </instance>
        <iomarker fontsize="28" x="704" y="352" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="704" y="416" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="704" y="480" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="704" y="544" name="AEQZero" orien="R0" />
        <iomarker fontsize="28" x="224" y="352" name="clk" orien="R180" />
        <iomarker fontsize="28" x="224" y="688" name="C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="416" name="Aadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="480" name="Badr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="528" name="Cadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="592" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="784" name="GPR_WE" orien="R180" />
        <line x2="3480" y1="1704" y2="1704" x1="904" />
        <instance x="1328" y="432" name="XLXI_1" orien="R0">
        </instance>
        <branch name="JLINK">
            <wire x2="400" y1="896" y2="896" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="896" name="JLINK" orien="R180" />
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="672" type="branch" />
            <wire x2="1232" y1="672" y2="672" x1="1136" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="736" type="branch" />
            <wire x2="1232" y1="736" y2="736" x1="1136" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="672" type="branch" />
            <wire x2="1936" y1="672" y2="672" x1="1824" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="736" type="branch" />
            <wire x2="1936" y1="736" y2="736" x1="1840" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="800" type="branch" />
            <wire x2="1936" y1="800" y2="800" x1="1840" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="720" type="branch" />
            <wire x2="2752" y1="720" y2="720" x1="2640" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="784" type="branch" />
            <wire x2="2752" y1="784" y2="784" x1="2640" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="848" type="branch" />
            <wire x2="2752" y1="848" y2="848" x1="2656" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="272" type="branch" />
            <wire x2="1824" y1="272" y2="272" x1="1712" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="272" type="branch" />
            <wire x2="1328" y1="272" y2="272" x1="1216" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="336" type="branch" />
            <wire x2="1328" y1="336" y2="336" x1="1216" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1120" type="branch" />
            <wire x2="1280" y1="1120" y2="1120" x1="1184" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1184" type="branch" />
            <wire x2="1280" y1="1184" y2="1184" x1="1184" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1248" type="branch" />
            <wire x2="1280" y1="1248" y2="1248" x1="1184" />
        </branch>
        <branch name="Aadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1312" type="branch" />
            <wire x2="1280" y1="1312" y2="1312" x1="1200" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1120" type="branch" />
            <wire x2="1744" y1="1120" y2="1120" x1="1664" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1184" type="branch" />
            <wire x2="2016" y1="1184" y2="1184" x1="1952" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1248" type="branch" />
            <wire x2="2016" y1="1248" y2="1248" x1="1936" />
        </branch>
        <branch name="Badr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1312" type="branch" />
            <wire x2="2016" y1="1312" y2="1312" x1="1936" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1120" type="branch" />
            <wire x2="2816" y1="1120" y2="1120" x1="2704" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="1120" type="branch" />
            <wire x2="2496" y1="1120" y2="1120" x1="2400" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1184" type="branch" />
            <wire x2="2816" y1="1184" y2="1184" x1="2736" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1248" type="branch" />
            <wire x2="2816" y1="1248" y2="1248" x1="2736" />
        </branch>
        <branch name="Dadr_Or_Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1312" type="branch" />
            <wire x2="2816" y1="1312" y2="1312" x1="2736" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3296" y="1120" type="branch" />
            <wire x2="3296" y1="1120" y2="1120" x1="3200" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1552" type="branch" />
            <wire x2="1824" y1="1552" y2="1552" x1="1696" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1120" type="branch" />
            <wire x2="2016" y1="1120" y2="1120" x1="1920" />
        </branch>
        <branch name="AEQZero">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1552" type="branch" />
            <wire x2="2336" y1="1552" y2="1552" x1="2208" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="400" type="branch" />
            <wire x2="1328" y1="400" y2="400" x1="1216" />
        </branch>
    </sheet>
</drawing>