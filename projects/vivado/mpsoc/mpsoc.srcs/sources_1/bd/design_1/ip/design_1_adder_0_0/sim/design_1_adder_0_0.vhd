-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:adder:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_adder_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a_TVALID : IN STD_LOGIC;
    a_TREADY : OUT STD_LOGIC;
    b_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b_TVALID : IN STD_LOGIC;
    b_TREADY : OUT STD_LOGIC;
    c_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    c_TVALID : OUT STD_LOGIC;
    c_TREADY : IN STD_LOGIC
  );
END design_1_adder_0_0;

ARCHITECTURE design_1_adder_0_0_arch OF design_1_adder_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_adder_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT adder IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      a_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      a_TVALID : IN STD_LOGIC;
      a_TREADY : OUT STD_LOGIC;
      b_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      b_TVALID : IN STD_LOGIC;
      b_TREADY : OUT STD_LOGIC;
      c_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      c_TVALID : OUT STD_LOGIC;
      c_TREADY : IN STD_LOGIC
    );
  END COMPONENT adder;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_adder_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF c_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 c TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF c_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 c TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF c_TDATA: SIGNAL IS "XIL_INTERFACENAME c, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299970032, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF c_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 c TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF b_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 b TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF b_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 b TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF b_TDATA: SIGNAL IS "XIL_INTERFACENAME b, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299970032, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF b_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 b TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF a_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 a TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF a_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 a TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF a_TDATA: SIGNAL IS "XIL_INTERFACENAME a, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299970032, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF a_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 a TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, ASSOCIATED_BUSIF a:b:c, FREQ_HZ 299970032, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : adder
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      a_TDATA => a_TDATA,
      a_TVALID => a_TVALID,
      a_TREADY => a_TREADY,
      b_TDATA => b_TDATA,
      b_TVALID => b_TVALID,
      b_TREADY => b_TREADY,
      c_TDATA => c_TDATA,
      c_TVALID => c_TVALID,
      c_TREADY => c_TREADY
    );
END design_1_adder_0_0_arch;
