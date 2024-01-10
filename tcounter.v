module testbench();

reg clk;
reg reset;
reg [7:0] qa;

testbench testbench1(.clk(clk), .get(get), .qa(qa));

initial
begin
    $dumpfile("bench.vcd");
    $dumpvars(0,testbench);

    $display("starting testbench!!!!");
    
    $monitor(reset,, clk,, qa);
  
        clk <= 0; 
        repeat (3000) 
            
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