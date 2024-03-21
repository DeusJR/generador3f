module g3f(
	SE,
	Qa,
	Qb,
	Qc,
	P0,
	P1,
	P2
);

input	SE;
output	Qa;
output	Qb;
output	Qc;
output	P0;
output	P1;
output	P2;

wire	0;
reg	1;
reg	2;
reg	3;

assign	Qa = 2;
assign	Qb = 3;
assign	Qc = 1;
assign	P0 = 2;
assign	P1 = 1;

always@(posedge SE)
begin
	begin
	2 = 0;
	end
end

assign	0 =  ~1;


always@(posedge SE)
begin
	begin
	3 = 2;
	end
end


always@(posedge SE)
begin
	begin
	1 = 3;
	end
end

assign	P2 =  ~3;


endmodule
