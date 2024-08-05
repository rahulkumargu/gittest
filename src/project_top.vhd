----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.07.2024 11:57:55
-- Design Name: 
-- Module Name: project_top - Behavioral
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
--use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project_top is
Port ( 
clk : in std_logic;
a : in std_logic;
b : out std_logic
);
end project_top;

architecture Behavioral of project_top is

signal count: integer := 0 ;

begin
b <= not(a) ;

process(clk)
begin
if(clk'event and clk = '1') then
    count <= count + 2  ;
end if;
end process;
end Behavioral;
