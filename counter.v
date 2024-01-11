module counter( 
    
    input wire clk,
    input wire reset,
   
    output reg [7:0] qa
  
);

always @ (posedge clk or posedge reset)

 begin
  if(!reset)
   qa <= 0;
  else
   qa <= qa + 1;
 end
endmodule