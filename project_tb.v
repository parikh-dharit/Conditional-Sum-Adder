module project_tb();

	reg Cin;
	reg [15:0] x;
	reg [15:0] y;
	
	wire [15:0] Sum;
	wire Cout;
	reg [15:0] temp_sum;
	reg  temp_Cout;
	wire flag;
	condSumAdder16 instance1(Sum, Cout, x, y, Cin);
	initial
	begin
		#50   Cin=1'b0;
			flag=1'b0;
		
	end
	always @(*)
	begin
		for(x=16'b0000_0000_0000_0000;x<16'b1111_1111_1111_1111;x=x+16'b0000_0000_0000_0001)
		begin
			for(y=16'b0000_0000_0000_0000;y<16'b1111_1111_1111_1111;y=y+16'b0000_0000_0000_0001)
			begin
			{temp_Cout,temp_sum}=x+y;
			if({temp_Cout,temp_sum}=={Cout,Sum})
			begin	
				flag=1'b1;
			end
			else
			begin
			flag=1'b0;
			end
		end
	end
		
	end
endmodule