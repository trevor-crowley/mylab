--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Sun Aug  9 11:55:19 2020
--Host        : luigilinux running 64-bit unknown
--Command     : generate_target mb_preset_wrapper.bd
--Design      : mb_preset_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_preset_wrapper is
  port (
    dip_switches_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iic_main_scl_io : inout STD_LOGIC;
    iic_main_sda_io : inout STD_LOGIC;
    lcd_7bits_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset : in STD_LOGIC;
    rotary_switch_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    spi_flash_io0_io : inout STD_LOGIC;
    spi_flash_io1_io : inout STD_LOGIC;
    spi_flash_ss_io : inout STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC
  );
end mb_preset_wrapper;

architecture STRUCTURE of mb_preset_wrapper is
  component mb_preset is
  port (
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    iic_main_scl_i : in STD_LOGIC;
    iic_main_scl_o : out STD_LOGIC;
    iic_main_scl_t : out STD_LOGIC;
    iic_main_sda_i : in STD_LOGIC;
    iic_main_sda_o : out STD_LOGIC;
    iic_main_sda_t : out STD_LOGIC;
    spi_flash_io0_i : in STD_LOGIC;
    spi_flash_io0_o : out STD_LOGIC;
    spi_flash_io0_t : out STD_LOGIC;
    spi_flash_io1_i : in STD_LOGIC;
    spi_flash_io1_o : out STD_LOGIC;
    spi_flash_io1_t : out STD_LOGIC;
    spi_flash_ss_i : in STD_LOGIC;
    spi_flash_ss_o : out STD_LOGIC;
    spi_flash_ss_t : out STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    reset : in STD_LOGIC;
    dip_switches_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lcd_7bits_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rotary_switch_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component mb_preset;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal iic_main_scl_i : STD_LOGIC;
  signal iic_main_scl_o : STD_LOGIC;
  signal iic_main_scl_t : STD_LOGIC;
  signal iic_main_sda_i : STD_LOGIC;
  signal iic_main_sda_o : STD_LOGIC;
  signal iic_main_sda_t : STD_LOGIC;
  signal spi_flash_io0_i : STD_LOGIC;
  signal spi_flash_io0_o : STD_LOGIC;
  signal spi_flash_io0_t : STD_LOGIC;
  signal spi_flash_io1_i : STD_LOGIC;
  signal spi_flash_io1_o : STD_LOGIC;
  signal spi_flash_io1_t : STD_LOGIC;
  signal spi_flash_ss_i : STD_LOGIC;
  signal spi_flash_ss_o : STD_LOGIC;
  signal spi_flash_ss_t : STD_LOGIC;
begin
iic_main_scl_iobuf: component IOBUF
     port map (
      I => iic_main_scl_o,
      IO => iic_main_scl_io,
      O => iic_main_scl_i,
      T => iic_main_scl_t
    );
iic_main_sda_iobuf: component IOBUF
     port map (
      I => iic_main_sda_o,
      IO => iic_main_sda_io,
      O => iic_main_sda_i,
      T => iic_main_sda_t
    );
mb_preset_i: component mb_preset
     port map (
      dip_switches_4bits_tri_i(3 downto 0) => dip_switches_4bits_tri_i(3 downto 0),
      iic_main_scl_i => iic_main_scl_i,
      iic_main_scl_o => iic_main_scl_o,
      iic_main_scl_t => iic_main_scl_t,
      iic_main_sda_i => iic_main_sda_i,
      iic_main_sda_o => iic_main_sda_o,
      iic_main_sda_t => iic_main_sda_t,
      lcd_7bits_tri_o(6 downto 0) => lcd_7bits_tri_o(6 downto 0),
      led_4bits_tri_o(3 downto 0) => led_4bits_tri_o(3 downto 0),
      push_buttons_5bits_tri_i(4 downto 0) => push_buttons_5bits_tri_i(4 downto 0),
      reset => reset,
      rotary_switch_tri_i(2 downto 0) => rotary_switch_tri_i(2 downto 0),
      rs232_uart_rxd => rs232_uart_rxd,
      rs232_uart_txd => rs232_uart_txd,
      spi_flash_io0_i => spi_flash_io0_i,
      spi_flash_io0_o => spi_flash_io0_o,
      spi_flash_io0_t => spi_flash_io0_t,
      spi_flash_io1_i => spi_flash_io1_i,
      spi_flash_io1_o => spi_flash_io1_o,
      spi_flash_io1_t => spi_flash_io1_t,
      spi_flash_ss_i => spi_flash_ss_i,
      spi_flash_ss_o => spi_flash_ss_o,
      spi_flash_ss_t => spi_flash_ss_t,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p
    );
spi_flash_io0_iobuf: component IOBUF
     port map (
      I => spi_flash_io0_o,
      IO => spi_flash_io0_io,
      O => spi_flash_io0_i,
      T => spi_flash_io0_t
    );
spi_flash_io1_iobuf: component IOBUF
     port map (
      I => spi_flash_io1_o,
      IO => spi_flash_io1_io,
      O => spi_flash_io1_i,
      T => spi_flash_io1_t
    );
spi_flash_ss_iobuf: component IOBUF
     port map (
      I => spi_flash_ss_o,
      IO => spi_flash_ss_io,
      O => spi_flash_ss_i,
      T => spi_flash_ss_t
    );
end STRUCTURE;
