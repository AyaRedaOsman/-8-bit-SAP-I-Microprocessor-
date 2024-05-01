module ram (
    input CE_n,
    input [3:0]address,
    output reg [7:0]data_out
);

	reg [7:0] ram_block [15:0];
	
	initial begin
		$readmemh("Program_Machine_Code.txt",ram_block,0,15);
	
	end

	always@(*)
		begin
			if(CE_n)
				begin
					data_out = 8'bzzzzzzzz;
				end
			else
				begin
					data_out = ram_block[address];
				end
		end

endmodule