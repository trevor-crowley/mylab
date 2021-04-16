`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Florent W.
// 
// Create Date: 04/17/2018 02:14:06 PM
// Design Name: 
// Module Name: tb_read_file
// Project Name: Xilinx Video Beginner Series 3
// Target Devices: N/A (Simulation only) 
// Tool Versions: 2018.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_read_file();

reg[8*11:1] file_name = "image_2.ppm";
integer     input_file;
reg[8*10:1] line_in = 0;
reg[8*2:1]  file_type;
integer     hsize_s;
integer     vsize_s;
reg[8:1]    space_char;
integer     max_encoding;
integer     red,green,blue;
integer     pixel_number = 1;



initial begin
    
    
    input_file = $fopen(file_name,"r");
    
    // Read and Check if file type is P3 (ASCII PPM)
    $fgets(line_in,input_file);
    $sscanf(line_in,"%s",file_type);
    $display("Note: File type : %s",file_type);
    
    // Get the picture size
    // The width and weight need to be on the same line
    // separated with a space character
    $fgets(line_in,input_file);
    $sscanf(line_in,"%d%c%d",hsize_s,space_char,vsize_s);
    // Print the width in the console
    $display("Note: Width: %0d",hsize_s);
    // Print the height in the console
    $display("Note: Height: %0d",vsize_s);
    
    // Get max encoding value and print it in the console
     $fgets(line_in,input_file);
     $sscanf(line_in,"%d",max_encoding);
     $display("Note: Max encoding: %0d",vsize_s);
     
     while (!$feof(input_file)) begin
        //Read Red Component
        $fgets(line_in,input_file);
        $sscanf(line_in,"%d",red);
        
        //Read Green Component
        $fgets(line_in,input_file);
        $sscanf(line_in,"%d",green);
        
        //Read Blue Component
        $fgets(line_in,input_file);
        $sscanf(line_in,"%d",blue);
        
        // Diplay Pixel Value
        $display("Note: Pixel#%0d: Red Value: %0d, Green Value %0d, Blue Value: %0d",pixel_number, red, green, blue);
        pixel_number=pixel_number+1;
        
     end
     
     // Close the file
     $fclose(input_file);

end

endmodule
