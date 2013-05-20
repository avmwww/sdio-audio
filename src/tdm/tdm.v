// TDM module


module tdm (
	input  wire        iclk,
	input  wire        irst,
	input  wire [31:0] idata,
	input  wire        idata_en,
	output wire        odata
);

	wire [31:0] fe_data;
	wire        fe_data_en;
	wire [31:0  be_data;
	wire        be_data_en;

tdm_fe tdm_fe_inst (
	.iclk           ( iclk     ),
	.irst           ( irst     ),
	.idata          ( idata    ),
	.idata_en       ( idata_en ),
//	.iout_data_dis  ( dout_dis ),
	.odata          ( fe_data  ),
	.odata_en       ( fe_data_en),
);

fifo1024x32 fifo1024x32_inst (
	.clk         ( iclk ),
	.srst        ( irst ),
	.din         ( fe_data    ),
	.wr_en       ( fe_data_en ),
	.rd_en       ( fifo_data_en),
	.dout        ( fifo_data   ),
//	.full        ( ),
//	.almost_full ( ),
//	.empty       ( ),
//	.valid       ( ),
//	.prog_full   ( )
);

tdm_be tdm_be_inst (
	.iclk        ( iclk         ),
	.irst        ( irst         ),
	.idin        ( fifo_data    ),
	.odin_en     ( fifo_data_en ),
	.idout_en    ( be_data_en   ),
	.odout       ( be_data      )
);

tdm_sh tdm_sh_inst (
	.iclk        ( iclk       ),
	.irst        ( irst       ),
	.idata       ( be_data    ),
	.odata_en    ( be_data_en ),
	.odout       ( odata      )
);


endmodule
