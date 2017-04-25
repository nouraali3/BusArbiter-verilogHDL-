
module BA (req,frame,irdy,trdy,clk,gnt)


input req [0:7];
input reg frame,irdy,trdy;
input clk;
output reg gnt [0:7];

always@(req) // gnt
begin
//check frame if =1 gnt[i]=1
end

always@(req or Address) //frame
begin
end

always@(Data) //i and t
begin
end

endmodule

module tbArbiter



endmodule
