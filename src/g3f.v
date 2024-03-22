module g3f(
	input SE,
	output Qa, Qb, Qc,
	output P0, P1, P2
);

wire w0;
reg w1;
reg w2;
reg w3;

assign	Qa = w2;
assign	Qb = w3;
assign	Qc = w1;
assign	P0 = w2;
assign	P1 = w1;

always@(posedge SE)
begin
	begin
	w2 = w0;
	end
end

assign	w0 =  ~w1;


always@(posedge SE)
begin
	begin
	w3 = w2;
	end
end


always@(posedge SE)
begin
	begin
	w1 = w3;
	end
end

assign	P2 =  ~w3;


endmodule
