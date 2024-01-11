module testbench;

reg clk;
reg reset;
reg [7:0] qa;

//counter cnt1(.clk(clk), .reset(reset), .qa(qa));
//counter cnt1 (clk, reset, qa);

initial
begin
    $dumpfile("bench.vcd");
    $dumpvars(0,testbench);

    $display("starting testbench!!!!");
    
    $monitor(reset,, clk,, qa);
  
        clk <= 0; 
        repeat (300) 
            
        begin
                #10;
                clk <= 1;
                #10;
                clk <= 0; 
        end


    $display("finished OK!");
    //$finish;
end

initial
begin
  reset <= 1;
  #100;
  reset <= 0;
end

endmodule