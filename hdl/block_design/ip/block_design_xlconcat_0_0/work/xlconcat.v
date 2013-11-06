//------------------------------------------------------------------------
//--
//--  Filename      : xlconcat.v
//--
//--  Date          : 06/05/12
//-
//-  Description   : Verilog description of a concat block.  This
//-                  block does not use a core.
//-
//-----------------------------------------------------------------------

module xlconcat (In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15,dout);
parameter IN0_WIDTH = 1;
input 	[IN0_WIDTH -1:0] In0;
parameter IN1_WIDTH = 1;
input 	[IN1_WIDTH -1:0] In1;
parameter IN2_WIDTH = 1;
input 	[IN2_WIDTH -1:0] In2;
parameter IN3_WIDTH = 1;
input 	[IN3_WIDTH -1:0] In3;
parameter IN4_WIDTH = 1;
input 	[IN4_WIDTH -1:0] In4;
parameter IN5_WIDTH = 1;
input 	[IN5_WIDTH -1:0] In5;
parameter IN6_WIDTH = 1;
input 	[IN6_WIDTH -1:0] In6;
parameter IN7_WIDTH = 1;
input 	[IN7_WIDTH -1:0] In7;
parameter IN8_WIDTH = 1;
input 	[IN8_WIDTH -1:0] In8;
parameter IN9_WIDTH = 1;
input 	[IN9_WIDTH -1:0] In9;
parameter IN10_WIDTH = 1;
input 	[IN10_WIDTH -1:0] In10;
parameter IN11_WIDTH = 1;
input 	[IN11_WIDTH -1:0] In11;
parameter IN12_WIDTH = 1;
input 	[IN12_WIDTH -1:0] In12;
parameter IN13_WIDTH = 1;
input 	[IN13_WIDTH -1:0] In13;
parameter IN14_WIDTH = 1;
input 	[IN14_WIDTH -1:0] In14;
parameter IN15_WIDTH = 1;
input 	[IN15_WIDTH -1:0] In15;
parameter dout_width = 2;
output [dout_width-1:0] dout;
parameter NUM_PORTS =2;


generate if (NUM_PORTS == 1)
begin : C_NUM_1
    assign dout = In0; 	
end
endgenerate

generate if (NUM_PORTS == 2)
begin : C_NUM_2
    assign dout = {In0,In1}; 	
end
endgenerate

generate if (NUM_PORTS == 3)
begin:C_NUM_3
	assign dout = {In0, In1, In2}; 	
end
endgenerate

generate if (NUM_PORTS == 4)
begin:C_NUM_4
    assign dout = {In0, In1, In2, In3}; 	
end
endgenerate

generate if (NUM_PORTS == 5)
begin:C_NUM_5
    assign dout = {In0, In1, In2, In3, In4}; 	
end
endgenerate

generate if (NUM_PORTS == 6)
begin:C_NUM_6
    assign dout = {In0, In1, In2, In3, In4, In5}; 	
end
endgenerate

generate if (NUM_PORTS == 7)
begin:C_NUM_7
    assign dout = {In0, In1, In2, In3, In4, In5, In6}; 	
end
endgenerate

generate if (NUM_PORTS == 8)
begin:C_NUM_8
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7}; 	
end
endgenerate

generate if (NUM_PORTS == 9)
begin:C_NUM_9
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8}; 	
end
endgenerate

generate if (NUM_PORTS == 10)
begin:C_NUM_10
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8, In9}; 	
end
endgenerate

generate if (NUM_PORTS == 11)
begin:C_NUM_11
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10}; 	
end
endgenerate

generate if (NUM_PORTS == 12)
begin:C_NUM_12
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11}; 	
end
endgenerate

generate if (NUM_PORTS == 13)
begin:C_NUM_13
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12}; 	
end
endgenerate

generate if (NUM_PORTS == 14)
begin:C_NUM_14
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13}; 	
end
endgenerate

generate if (NUM_PORTS == 15)
begin:C_NUM_15
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14}; 	
end
endgenerate

generate if (NUM_PORTS == 16)
begin:C_NUM_16
    assign dout = {In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15}; 	
end
endgenerate

endmodule