
module tdm(
);

fifo1024x32 fifo1024x32_inst (
	.clk,
	.srst        ( ),
	.din         ( ),
	.wr_en       ( ),
	.rd_en       ( ),
	.dout        ( ),
	.full        ( ),
	.almost_full ( ),
	.empty       ( ),
	.valid       ( ),
	.prog_full   ( )
);

endmodule
