
module arbiter (clk,REQ,GNT,G_frame,G_irdy, 1'b1);

input clk,G_frame,G_irdy;
input [7:0] REQ;
output[7:0] GNT;
//integer i=0;
//reg [2:0] array [0:7];

always@(posedge clk)
begin

if (REQ!=8'hff && G_frame==1)
begin
(@negedge clk)
begin
GNT=REQ;
end
end

end

////////here we start to change frame from 1 to 0
if(GNT!=8'hff && G_frame=1)
begin
@(negedge clk)
begin
G_frame=0;
end
end

endmodule

