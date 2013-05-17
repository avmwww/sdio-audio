// Channel data generation module

module data_gen(
	input  wire iclk,	// clock
	input  wire irst,       // reset

	output wire [31: 0] och_data,   // channel data
	output wire [ 3: 0] och_num,    // channel number
	output wire och_data_valid      // valid data
);

endmodule
