
i
Command: %s
1870*	planAhead24
 open_checkpoint adder_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.07 . Memory (MB): peak = 1422.016 ; gain = 0.000 ; free physical = 20479 ; free virtual = 596422default:defaulth px� 
[
Loading part %s157*device2(
xczu7ev-ffvc1156-2-e2default:defaultZ21-403h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
742default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.12default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
Read XDEF File: 2default:default2
00:00:00.112default:default2
00:00:00.152default:default2
2712.0082default:default2
0.0002default:default2
191862default:default2
583502default:defaultZ17-722h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.1500002default:default2
1.4873052default:defaultZ20-1924h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common20
Finished XDEF File Restore: 2default:default2
00:00:00.112default:default2
00:00:00.152default:default2
2712.0082default:default2
0.0002default:default2
191862default:default2
583502default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2714.9772default:default2
0.0002default:default2
191872default:default2
583512default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2o
[  A total of 70 instances were transformed.
  IBUF => IBUF (IBUFCTRL, INBUF): 70 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.1 (64-bit)2default:default2
25520522default:defaultZ1-604h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
open_checkpoint: 2default:default2
00:00:182default:default2
00:00:282default:default2
2714.9772default:default2
1292.9612default:default2
191862default:default2
583502default:defaultZ17-722h px� 
e
Command: %s
53*	vivadotcl24
 write_bitstream -force adder.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2019.1/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
�Unspecified I/O Standard: 108 out of 108 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2�
 ",
a_TDATA[31:0]a_TDATA2default:default",
b_TDATA[31:0]b_TDATA2default:default",
c_TDATA[31:0]c_TDATA2default:default"(
a_TREADYa_TREADY2default:default"(
a_TVALIDa_TVALID2default:default"$
ap_clkap_clk2default:default"&
ap_doneap_done2default:default"&
ap_idleap_idle2default:default"(
ap_readyap_ready2default:default"(
ap_rst_nap_rst_n2default:default"(
ap_startap_start2default:default"(
b_TREADYb_TREADY2default:default"(
b_TVALIDb_TVALID2default:default"(
c_TREADYc_TREADY2default:default"(
c_TVALIDc_TVALID2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px� 
�
�Unconstrained Logical Port: 108 out of 108 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2�
 ",
a_TDATA[31:0]a_TDATA2default:default",
b_TDATA[31:0]b_TDATA2default:default",
c_TDATA[31:0]c_TDATA2default:default"(
a_TREADYa_TREADY2default:default"(
a_TVALIDa_TVALID2default:default"$
ap_clkap_clk2default:default"&
ap_doneap_done2default:default"&
ap_idleap_idle2default:default"(
ap_readyap_ready2default:default"(
ap_rst_nap_rst_n2default:default"(
ap_startap_start2default:default"(
b_TREADYb_TREADY2default:default"(
b_TVALIDb_TVALID2default:default"(
c_TREADYc_TREADY2default:default"(
c_TVALIDc_TVALID2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px� 
Z
DRC finished with %s
1905*	planAhead2
2 Errors2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
192default:default2
02default:default2
02default:default2
32default:defaultZ4-41h px� 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:032default:default2
00:00:062default:default2
2943.8362default:default2
228.8592default:default2
191562default:default2
583212default:defaultZ17-722h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Sep 28 20:59:13 20202default:defaultZ17-206h px� 


End Record