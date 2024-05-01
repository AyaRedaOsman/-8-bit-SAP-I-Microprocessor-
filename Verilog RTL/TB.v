module TB();
	reg clk,clr;
	wire [7:0] topOUT;
	
	
	Top_Module DUT (.clk(clk),.clr(clr),.topOUT(topOUT));
	initial begin
		clk <=0;
		clr <=1;
		#10;
		clr <=0;
		#10;
		clr <=1;
	
		#500;
		
		$display ("OUT = 0x%0h",topOUT);
	
		#50
		$stop;
	end
	
	
	always #5 clk=~clk;
	

endmodule