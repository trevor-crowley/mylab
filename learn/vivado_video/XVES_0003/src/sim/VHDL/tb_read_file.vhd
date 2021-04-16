----------------------------------------------------------------------------------
-- Company: Xilinx
-- Engineer: Florent W.
-- 
-- Create Date: 04/13/2018 11:38:06 AM
-- Design Name: 
-- Module Name: tb_read_file - Behavioral
-- Project Name: Xilinx Video Beginner Series 3
-- Target Devices: N/A (Simulation only)
-- Tool Versions: 2018.1
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
use STD.textio.all;
use ieee.std_logic_textio.all;


entity tb_read_file is
end tb_read_file;

architecture Behavioral of tb_read_file is

-----------------------------------------------------------------------------
-- Test Bench Signals For File Reading
-----------------------------------------------------------------------------
constant    file_path_c         : string := "image_2.ppm"; 
file        input_file          : text;
signal      hsize_s, vsize_s    : integer;

begin

read_file_proc: process
    
    variable fopen_status_v     : FILE_OPEN_STATUS;
    variable line_in_v          : line;
    variable magic_number_v     : string(1 to 2);
    variable picure_hsize_v     : integer;
    variable picure_vsize_v     : integer;
    variable red_v              : integer;
    variable green_v            : integer;
    variable blue_v             : integer;
    variable max_encod_value_v  : integer;
    variable pixel_number_v     : integer := 1;
    variable space_v            : character;
    
    
begin

    -- Open the file
    -- Note: The file has to follow a formatting to be supported (PPM, no comment line, 1 component per line)
    FILE_OPEN (fopen_status_v, input_file, file_path_c, READ_MODE);
      
   -- Check if the file opening was successful
    if fopen_status_v = OPEN_OK then 
        report "File opened in read only mode";
    else 
        report "Error while opening the file" severity error;
    end if;
    
    -- Check if file type is P3 (ASCII PPM)
    readline(input_file, line_in_v);
    read(line_in_v,magic_number_v);
    if magic_number_v = "P3" then
        report "File type is P3";
    else
        report "File type not supported" severity error;
    end if;
    
    -- Get the picture size
    -- The width and weight need to be on the same line
    -- separated with a space character
    readline(input_file, line_in_v);
    -- Read the width
    read(line_in_v,picure_hsize_v);
    -- Print the width in the console
    report "width: "&integer'image(picure_hsize_v);
    hsize_s <= picure_hsize_v;
    -- Read the space character
    read(line_in_v,space_v);
    -- Read the height
    read(line_in_v,picure_vsize_v);
    -- Print the height in the console
    report "height: "&integer'image(picure_vsize_v);
    vsize_s <= picure_vsize_v;
    
    -- Get max encoding value and print it in the console
    readline(input_file, line_in_v);
    read(line_in_v,max_encod_value_v);
    report "Max encoding value: "&integer'image(max_encod_value_v);
    
    while not endfile(input_file) loop
    
        -- Read Red component
        readline(input_file, line_in_v);
        read(line_in_v,red_v);
        
        -- Read Green Component
        readline(input_file, line_in_v);
        read(line_in_v,green_v);
        
        -- Read Blue component
        readline(input_file, line_in_v);
        read(line_in_v,blue_v);
        
        -- Diplay Pixel Value
        report "Pixel #"&integer'image(pixel_number_v)&" : red value: "&integer'image(red_v)&
        ", green value: "&integer'image(green_v)&", blue value: "&integer'image(blue_v);
        
        pixel_number_v := pixel_number_v + 1;
                 
    end loop;
    
    -- Close the file
    FILE_CLOSE(input_file);
   
wait;

end process read_file_proc;


end Behavioral;
