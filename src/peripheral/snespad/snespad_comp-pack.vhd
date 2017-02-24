-------------------------------------------------------------------------------
--
-- SNESpad controller core
--
-- Copyright (c) 2004, Arnim Laeuger (arniml@opencores.org)
--
-- $Id: snespad_comp-pack.vhd,v 1.1 2004/10/05 18:20:14 arniml Exp $
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package snespad_comp is

  component snespad
    generic (
      num_pads_g       :     natural := 1;
      reset_level_g    :     natural := 0;
      button_level_g   :     natural := 0;
      clocks_per_6us_g :     natural := 6
    );
    port (
      clk_i            : in  std_logic;
      reset_i          : in  std_logic;
      pad_clk_o        : out std_logic;
      pad_latch_o      : out std_logic;
      pad_data_i       : in  std_logic_vector(num_pads_g-1 downto 0);
      but_a_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_b_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_x_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_y_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_start_o      : out std_logic_vector(num_pads_g-1 downto 0);
      but_sel_o        : out std_logic_vector(num_pads_g-1 downto 0);
      but_tl_o         : out std_logic_vector(num_pads_g-1 downto 0);
      but_tr_o         : out std_logic_vector(num_pads_g-1 downto 0);
      but_up_o         : out std_logic_vector(num_pads_g-1 downto 0);
      but_down_o       : out std_logic_vector(num_pads_g-1 downto 0);
      but_left_o       : out std_logic_vector(num_pads_g-1 downto 0);
      but_right_o      : out std_logic_vector(num_pads_g-1 downto 0);
      but_0_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_1_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_2_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_3_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_4_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_5_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_6_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_7_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_8_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_9_o          : out std_logic_vector(num_pads_g-1 downto 0);
      but_star_o       : out std_logic_vector(num_pads_g-1 downto 0);
      but_num_o        : out std_logic_vector(num_pads_g-1 downto 0);
      but_dot_o        : out std_logic_vector(num_pads_g-1 downto 0);
      but_clear_o      : out std_logic_vector(num_pads_g-1 downto 0);
      but_equal_o      : out std_logic_vector(num_pads_g-1 downto 0)
    );
  end component snespad;

end snespad_comp;
