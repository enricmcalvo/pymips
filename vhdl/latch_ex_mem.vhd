-- File: latch_ex_mem.vhd
-- Generated by MyHDL 0.6
-- Date: Fri Nov 19 12:33:50 2010

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_06.all;

entity latch_ex_mem is
    port (
        clk: in unsigned(0 downto 0);
        rst: in unsigned(0 downto 0);
        branch_adder_in: in signed (31 downto 0);
        alu_result_in: in signed (31 downto 0);
        zero_in: in unsigned(0 downto 0);
        data2_in: in signed (31 downto 0);
        wr_reg_in: in signed (31 downto 0);
        Branch_in: in unsigned(0 downto 0);
        MemRead_in: in unsigned(0 downto 0);
        MemWrite_in: in unsigned(0 downto 0);
        RegWrite_in: in unsigned(0 downto 0);
        MemtoReg_in: in unsigned(0 downto 0);
        branch_adder_out: out signed (31 downto 0);
        alu_result_out: out signed (31 downto 0);
        zero_out: out unsigned(0 downto 0);
        data2_out: out signed (31 downto 0);
        wr_reg_out: out signed (31 downto 0);
        Branch_out: out unsigned(0 downto 0);
        MemRead_out: out unsigned(0 downto 0);
        MemWrite_out: out unsigned(0 downto 0);
        RegWrite_out: out unsigned(0 downto 0);
        MemtoReg_out: out unsigned(0 downto 0)
    );
end entity latch_ex_mem;

architecture MyHDL of latch_ex_mem is


begin


LATCH_EX_MEM_LATCH: process (clk, rst) is
begin
    if (rst = 1) then
        branch_adder_out <= "00000000000000000000000000000000";
        alu_result_out <= "00000000000000000000000000000000";
        zero_out <= "0";
        data2_out <= "00000000000000000000000000000000";
        wr_reg_out <= "00000000000000000000000000000000";
        Branch_out <= "0";
        MemRead_out <= "0";
        MemWrite_out <= "0";
        RegWrite_out <= "0";
        MemtoReg_out <= "0";
    elsif rising_edge(clk) then
        branch_adder_out <= branch_adder_in;
        alu_result_out <= alu_result_in;
        zero_out <= zero_in;
        data2_out <= data2_in;
        wr_reg_out <= wr_reg_in;
        Branch_out <= Branch_in;
        MemRead_out <= MemRead_in;
        MemWrite_out <= MemWrite_in;
        RegWrite_out <= RegWrite_in;
        MemtoReg_out <= MemtoReg_in;
    end if;
end process LATCH_EX_MEM_LATCH;

end architecture MyHDL;
