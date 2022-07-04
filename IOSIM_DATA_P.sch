<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="wr_n" />
        <signal name="AS_N" />
        <signal name="DO(31:0)" />
        <signal name="AO(31:0)" />
        <signal name="STEP_EN" />
        <signal name="DataPath_Reset" />
        <signal name="ACK_N" />
        <signal name="DataPath_Clk" />
        <signal name="DataPath_In(31:0)" />
        <signal name="reset" />
        <signal name="clk" />
        <signal name="pc_step_en" />
        <signal name="FUNCTIONR(5:0)" />
        <signal name="D(31:0)" />
        <signal name="MW" />
        <signal name="MR" />
        <signal name="BUSY" />
        <signal name="IR_CE" />
        <signal name="GPR_WE" />
        <signal name="A_EN" />
        <signal name="B_EN" />
        <signal name="Mac_State(1:0)" />
        <signal name="PC_STEP" />
        <signal name="C_EN" />
        <signal name="IN_INIT" />
        <signal name="A_sel" />
        <signal name="JLINK" />
        <signal name="ADD" />
        <signal name="MDR_EN" />
        <signal name="DINT_sel" />
        <signal name="TEST" />
        <signal name="MAR_EN" />
        <signal name="MDR_sel" />
        <signal name="IS_ITYPE" />
        <signal name="SHIFT" />
        <signal name="DLX_State(4:0)" />
        <signal name="S1_sel(1:0)" />
        <signal name="S2_sel(1:0)" />
        <signal name="STOP_N" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="pc_step_en" />
        <blockdef name="IO_SIMUL">
            <timestamp>2022-6-8T12:51:17</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Full_Data_Path">
            <timestamp>2022-6-9T16:33:31</timestamp>
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-1952" y2="-1952" x1="64" />
            <line x2="0" y1="-1568" y2="-1568" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-1964" height="24" />
            <line x2="432" y1="-1952" y2="-1952" x1="368" />
            <rect width="64" x="368" y="-1900" height="24" />
            <line x2="432" y1="-1888" y2="-1888" x1="368" />
            <line x2="432" y1="-1824" y2="-1824" x1="368" />
            <line x2="432" y1="-1760" y2="-1760" x1="368" />
            <line x2="432" y1="-1696" y2="-1696" x1="368" />
            <line x2="432" y1="-1632" y2="-1632" x1="368" />
            <line x2="432" y1="-1568" y2="-1568" x1="368" />
            <line x2="432" y1="-1504" y2="-1504" x1="368" />
            <line x2="432" y1="-1440" y2="-1440" x1="368" />
            <line x2="432" y1="-1376" y2="-1376" x1="368" />
            <line x2="432" y1="-1312" y2="-1312" x1="368" />
            <rect width="64" x="368" y="-1260" height="24" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <rect width="64" x="368" y="-364" height="24" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-1984" height="2048" />
        </blockdef>
        <block symbolname="Full_Data_Path" name="XLXI_4">
            <blockpin signalname="DataPath_Clk" name="clk" />
            <blockpin signalname="DataPath_Reset" name="reset" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="DataPath_In(31:0)" name="DI(31:0)" />
            <blockpin name="DD(4:0)" />
            <blockpin signalname="FUNCTIONR(5:0)" name="FUNCTIONR(5:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="BUSY" name="BUSY" />
            <blockpin signalname="IR_CE" name="IR_CE" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="A_EN" name="A_EN" />
            <blockpin signalname="B_EN" name="B_EN" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="wr_n" name="WR_N" />
            <blockpin signalname="Mac_State(1:0)" name="Mac_State(1:0)" />
            <blockpin signalname="PC_STEP" name="PC_STEP" />
            <blockpin signalname="C_EN" name="C_EN" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="A_sel" name="A_sel" />
            <blockpin signalname="JLINK" name="JLINK" />
            <blockpin signalname="MDR_EN" name="MDR_EN" />
            <blockpin signalname="DINT_sel" name="DINT_sel" />
            <blockpin signalname="TEST" name="TEST" />
            <blockpin signalname="MAR_EN" name="MAR_EN" />
            <blockpin signalname="MDR_sel" name="MDR_sel" />
            <blockpin signalname="IS_ITYPE" name="IS_ITYPE" />
            <blockpin signalname="ADD" name="ADD" />
            <blockpin signalname="S2_sel(1:0)" name="S2_sel(1:0)" />
            <blockpin signalname="S1_sel(1:0)" name="S1_sel(1:0)" />
            <blockpin signalname="DLX_State(4:0)" name="DLX_state(4:0)" />
            <blockpin signalname="STOP_N" name="stop_n" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="AO(31:0)" name="AO(31:0)" />
            <blockpin signalname="SHIFT" name="SHIFT_EN" />
        </block>
        <block symbolname="IO_SIMUL" name="XLXI_2">
            <blockpin signalname="clk" name="clk_in" />
            <blockpin signalname="reset" name="RST" />
            <blockpin signalname="pc_step_en" name="PC_step_en" />
            <blockpin signalname="wr_n" name="WR_OUT_N" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="DO(31:0)" name="MDO(31:0)" />
            <blockpin signalname="AO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="DataPath_Reset" name="RESET" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="DataPath_Clk" name="CLK" />
            <blockpin signalname="DataPath_In(31:0)" name="DO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="576" y1="496" y2="496" x1="384" />
        </branch>
        <branch name="reset">
            <wire x2="576" y1="544" y2="544" x1="400" />
        </branch>
        <branch name="pc_step_en">
            <wire x2="576" y1="592" y2="592" x1="400" />
        </branch>
        <iomarker fontsize="28" x="384" y="496" name="clk" orien="R180" />
        <iomarker fontsize="28" x="400" y="544" name="reset" orien="R180" />
        <iomarker fontsize="28" x="400" y="592" name="pc_step_en" orien="R180" />
        <instance x="304" y="1440" name="XLXI_2" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1088" type="branch" />
            <wire x2="304" y1="1088" y2="1088" x1="224" />
        </branch>
        <branch name="pc_step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1152" type="branch" />
            <wire x2="304" y1="1152" y2="1152" x1="224" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1216" type="branch" />
            <wire x2="304" y1="1216" y2="1216" x1="224" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1280" type="branch" />
            <wire x2="304" y1="1280" y2="1280" x1="240" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1344" type="branch" />
            <wire x2="304" y1="1344" y2="1344" x1="224" />
        </branch>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1408" type="branch" />
            <wire x2="304" y1="1408" y2="1408" x1="224" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1024" type="branch" />
            <wire x2="768" y1="1024" y2="1024" x1="688" />
        </branch>
        <branch name="DataPath_Reset">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1120" type="branch" />
            <wire x2="768" y1="1120" y2="1120" x1="688" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1216" type="branch" />
            <wire x2="752" y1="1216" y2="1216" x1="688" />
        </branch>
        <branch name="DataPath_Clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1312" type="branch" />
            <wire x2="752" y1="1312" y2="1312" x1="688" />
        </branch>
        <branch name="DataPath_In(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1408" type="branch" />
            <wire x2="768" y1="1408" y2="1408" x1="688" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1024" type="branch" />
            <wire x2="304" y1="1024" y2="1024" x1="224" />
        </branch>
        <instance x="1696" y="2352" name="XLXI_4" orien="R0">
        </instance>
        <branch name="FUNCTIONR(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="400" type="branch" />
            <wire x2="2240" y1="400" y2="400" x1="2128" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="464" type="branch" />
            <wire x2="2224" y1="464" y2="464" x1="2128" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="528" type="branch" />
            <wire x2="2224" y1="528" y2="528" x1="2128" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="592" type="branch" />
            <wire x2="2224" y1="592" y2="592" x1="2128" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="656" type="branch" />
            <wire x2="2224" y1="656" y2="656" x1="2128" />
        </branch>
        <branch name="IR_CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="720" type="branch" />
            <wire x2="2224" y1="720" y2="720" x1="2128" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="784" type="branch" />
            <wire x2="2224" y1="784" y2="784" x1="2128" />
        </branch>
        <branch name="A_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="848" type="branch" />
            <wire x2="2224" y1="848" y2="848" x1="2128" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="912" type="branch" />
            <wire x2="2224" y1="912" y2="912" x1="2128" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="976" type="branch" />
            <wire x2="2208" y1="976" y2="976" x1="2128" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1040" type="branch" />
            <wire x2="2208" y1="1040" y2="1040" x1="2128" />
        </branch>
        <branch name="Mac_State(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1104" type="branch" />
            <wire x2="2208" y1="1104" y2="1104" x1="2128" />
        </branch>
        <branch name="PC_STEP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1168" type="branch" />
            <wire x2="2192" y1="1168" y2="1168" x1="2128" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1232" type="branch" />
            <wire x2="2192" y1="1232" y2="1232" x1="2128" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1296" type="branch" />
            <wire x2="2192" y1="1296" y2="1296" x1="2128" />
        </branch>
        <branch name="A_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1360" type="branch" />
            <wire x2="2208" y1="1360" y2="1360" x1="2128" />
        </branch>
        <branch name="JLINK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1424" type="branch" />
            <wire x2="2208" y1="1424" y2="1424" x1="2128" />
        </branch>
        <branch name="ADD">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1872" type="branch" />
            <wire x2="2208" y1="1872" y2="1872" x1="2128" />
        </branch>
        <branch name="MDR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1488" type="branch" />
            <wire x2="2208" y1="1488" y2="1488" x1="2128" />
        </branch>
        <branch name="DINT_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1552" type="branch" />
            <wire x2="2208" y1="1552" y2="1552" x1="2128" />
        </branch>
        <branch name="TEST">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1616" type="branch" />
            <wire x2="2208" y1="1616" y2="1616" x1="2128" />
        </branch>
        <branch name="MAR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1680" type="branch" />
            <wire x2="2208" y1="1680" y2="1680" x1="2128" />
        </branch>
        <branch name="MDR_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1744" type="branch" />
            <wire x2="2208" y1="1744" y2="1744" x1="2128" />
        </branch>
        <branch name="IS_ITYPE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1808" type="branch" />
            <wire x2="2192" y1="1808" y2="1808" x1="2128" />
        </branch>
        <branch name="SHIFT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="2384" type="branch" />
            <wire x2="2208" y1="2384" y2="2384" x1="2128" />
        </branch>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="2320" type="branch" />
            <wire x2="2224" y1="2320" y2="2320" x1="2128" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="2256" type="branch" />
            <wire x2="2208" y1="2256" y2="2256" x1="2128" />
        </branch>
        <branch name="DLX_State(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="2128" type="branch" />
            <wire x2="2208" y1="2128" y2="2128" x1="2128" />
        </branch>
        <branch name="S1_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="2064" type="branch" />
            <wire x2="2208" y1="2064" y2="2064" x1="2128" />
        </branch>
        <branch name="S2_sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="2000" type="branch" />
            <wire x2="2208" y1="2000" y2="2000" x1="2128" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="2192" type="branch" />
            <wire x2="2224" y1="2192" y2="2192" x1="2128" />
        </branch>
        <branch name="DataPath_In(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1936" type="branch" />
            <wire x2="1696" y1="1936" y2="1936" x1="1616" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1168" type="branch" />
            <wire x2="1696" y1="1168" y2="1168" x1="1616" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1552" type="branch" />
            <wire x2="1696" y1="1552" y2="1552" x1="1600" />
        </branch>
        <branch name="DataPath_Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="784" type="branch" />
            <wire x2="1696" y1="784" y2="784" x1="1584" />
        </branch>
        <branch name="DataPath_Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="400" type="branch" />
            <wire x2="1696" y1="400" y2="400" x1="1600" />
        </branch>
    </sheet>
</drawing>