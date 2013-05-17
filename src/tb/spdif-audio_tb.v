// Testbench spdif-audio

module spdif_audio_tb();

	wire  clk;
	wire  rst;

	wire  mclk;
	wire  fs;
	wire  sclk;
	wire  din;
	wire  dout;

	wire  ch_data;
	wire  ch_num;
	wire  ch_data_valid;


clk_rst_gen clk_rst_gen_inst(
	.oclk   ( ckl  ),
	.orst   ( rst  )
);

verif verif_inst(
	.imclk  ( mclk ),
	.ifs    ( fs   ),
	.isclk  ( sclk ),
	.idin   ( din  ),
	.odout  ( dout ),
);

data_gen data_gen_inst(
	.iclk            ( clk           ),
	.irst            ( rst           ),
	.och_data        ( ch_data       ),
	.och_num         ( ch_num        ),
	.och_data_valid  ( ch_data_valid ),
);

endmodule


