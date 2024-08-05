----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.08.2024 12:23:20
-- Design Name: 
-- Module Name: tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is

component project_top is
Port ( 
clk : in std_logic;
a : in std_logic;
b : out std_logic
);
end component;

signal clk : std_logic := '0' ;
signal b : std_logic := '0' ;
begin

process
begin
clk  <=  '1' ;
wait for 10 ns ;
clk  <=  '0' ;
wait for 10 ns ;
end process ;
project_top_inst : project_top
Port map( 
clk => clk,
a => '0',
b => b
);



end Behavioral;
