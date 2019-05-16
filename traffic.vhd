----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:05:03 05/17/2019 
-- Design Name: 
-- Module Name:    traffic - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity traffic is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           light_a : out  STD_LOGIC_VECTOR (2 downto 0);
           light_b : out  STD_LOGIC_VECTOR (2 downto 0));
end traffic;

architecture Behavioral of traffic is

begin


end Behavioral;

