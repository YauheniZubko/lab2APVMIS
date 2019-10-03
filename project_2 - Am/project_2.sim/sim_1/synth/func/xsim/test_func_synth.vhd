-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  8 17:32:54 2019
-- Host        : DESKTOP-AI0J7HS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/zheny/project_2/project_2.sim/sim_1/synth/func/xsim/test_func_synth.vhd
-- Design      : lab1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab1 is
  port (
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lab1 : entity is true;
end lab1;

architecture STRUCTURE of lab1 is
  signal I1_IBUF : STD_LOGIC;
  signal I2_IBUF : STD_LOGIC;
  signal I3_IBUF : STD_LOGIC;
  signal I4_IBUF : STD_LOGIC;
  signal I5_IBUF : STD_LOGIC;
  signal I6_IBUF : STD_LOGIC;
  signal I7_IBUF : STD_LOGIC;
  signal I8_IBUF : STD_LOGIC;
  signal I9_IBUF : STD_LOGIC;
  signal Y0_OBUF : STD_LOGIC;
  signal Y0_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal Y1_OBUF : STD_LOGIC;
  signal Y1_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal Y2_OBUF : STD_LOGIC;
  signal Y3_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Y0_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Y1_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
I1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I1,
      O => I1_IBUF
    );
I2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I2,
      O => I2_IBUF
    );
I3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I3,
      O => I3_IBUF
    );
I4_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I4,
      O => I4_IBUF
    );
I5_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I5,
      O => I5_IBUF
    );
I6_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I6,
      O => I6_IBUF
    );
I7_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I7,
      O => I7_IBUF
    );
I8_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I8,
      O => I8_IBUF
    );
I9_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => I9,
      O => I9_IBUF
    );
Y0_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Y0_OBUF,
      O => Y0
    );
Y0_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F00"
    )
        port map (
      I0 => Y0_OBUF_inst_i_2_n_0,
      I1 => I5_IBUF,
      I2 => I8_IBUF,
      I3 => I9_IBUF,
      O => Y0_OBUF
    );
Y0_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFFFFFF"
    )
        port map (
      I0 => I3_IBUF,
      I1 => I1_IBUF,
      I2 => I2_IBUF,
      I3 => I4_IBUF,
      I4 => I6_IBUF,
      O => Y0_OBUF_inst_i_2_n_0
    );
Y1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Y1_OBUF,
      O => Y1
    );
Y1_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => Y1_OBUF_inst_i_2_n_0,
      I1 => I8_IBUF,
      I2 => I9_IBUF,
      O => Y1_OBUF
    );
Y1_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888088808880888"
    )
        port map (
      I0 => I6_IBUF,
      I1 => I7_IBUF,
      I2 => I5_IBUF,
      I3 => I4_IBUF,
      I4 => I2_IBUF,
      I5 => I3_IBUF,
      O => Y1_OBUF_inst_i_2_n_0
    );
Y2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Y2_OBUF,
      O => Y2
    );
Y2_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => I7_IBUF,
      I1 => I6_IBUF,
      I2 => I5_IBUF,
      I3 => I9_IBUF,
      I4 => I8_IBUF,
      I5 => I4_IBUF,
      O => Y2_OBUF
    );
Y3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Y3_OBUF,
      O => Y3
    );
Y3_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I8_IBUF,
      I1 => I9_IBUF,
      O => Y3_OBUF
    );
end STRUCTURE;
