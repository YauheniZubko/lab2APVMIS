-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep  9 17:17:42 2019
-- Host        : DESKTOP-AI0J7HS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/zheny/project_2 -
--               Copy/project_2.sim/sim_1/synth/func/xsim/decoderSimulation_func_synth.vhd}
-- Design      : decoder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decoder is
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
  attribute NotValidForBitStream of decoder : entity is true;
end decoder;

architecture STRUCTURE of decoder is
begin
Y0_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Y0
    );
Y1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Y1
    );
Y2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Y2
    );
Y3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Y3
    );
end STRUCTURE;
