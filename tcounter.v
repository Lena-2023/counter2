                    module testbench();

reg clk;
reg [7:0] get;

//testbench testbench(.clk(clk), .get(get));

initial
begin
    $dumpfile("bench.vcd");
    $dumpvars(0,testbench);

    $display("starting testbench!!!!");
	
	clk <= 0; 
	repeat (3000) begin
		#10;
		clk <= 1;
		#10;
		clk <= 0; 
	end
	
    $display("finished OK!");
    //$finish;
end


//initial
//begin
	
initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
get = 8'b0; 
#20;
get = get+1;


end


	
	/*get <= 0;
	#100;
	get <= 1;
	#25;
	get <= 0;

	#100;
	get <= 1;
	#25;
	get <= 0;

	#100;
	get <= 1;
	#25;
	get <= 0;

	#100;
	get <= 1;
	#25;
	get <= 0;

	#100;
	get <= 1;
	#25;
	get <= 0;

	#100;
	get <= 1;
	#25;
	get <= 0;

	#100;
	get <= 1;
	#25;
	get <= 0;
	*/
	
//end 
             //убрать коомент

	
endmodule