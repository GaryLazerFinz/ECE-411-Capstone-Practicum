module TOP(
    
    
    
    input 				clk,                 	// 100MHz clock from on-board oscillator
	input				btnCpuReset,			// red pushbutton input 
	
	output 	[6:0]		seg,					// Seven segment display cathode pins
	output              dp,
	output	[7:0]		an	,					// Seven segment display anode pins	
           input [4:0] SWITCH,
           input [1:0] S, 
           input [3:0] OP,
           output [4:0] SWITCHOUT,
           output [1:0] SOUT,
           output [3:0] OPOUT,
           output [4:0] DOUT,
           output [4:0] ss1,
           output [4:0] ss2,
           output [1:0] ss3,
           output [3:0] ss4,
           input PUSHBUTTON

           );
parameter SIMULATE = 0;
           
               // internal variables
               wire                sysclk;                            // 100MHz clock from on-board oscillator    
               wire                sysreset;                        // system reset signal - asserted high to force reset
               
               wire     [7:0]        decpts = {7'b0000000, clk_1Hz};    // dp0 is toggled by clk_100Hz 
               wire    [7:0]        segs_int;                        // seven segment display segments
               wire                clk_1Hz;                        // 1HZ clock to drive the counter
               
               assign	sysclk = clk;
                   assign     sysreset = ~btnCpuReset;                    // btnCpuReset is asserted low    
                   assign dp = segs_int[7];                            // multiplexed decimal points and segments
                   assign seg = segs_int[6:0];                            // produced by the Seven Segment display driver    

wire [4:0] w0;
wire [4:0] w1;
wire [4:0] w2;
wire [4:0] w3;
wire [4:0] w4;
wire [4:0] w5;
wire [4:0] w6;

wire [3:0] l0;
wire [3:0] l1;
wire [3:0] l2;
wire [3:0] l3;
wire [3:0] l4;
wire [3:0] l5;
wire [3:0] l6;


barrel_shifter v0(
.SWITCH(SWITCH),
.S(S),
.OP(OP),
.SOUT(w0),
.SWITCHOUT(w1),
.OPOUT(w2),
.DOUT(w3),
.ss1(ss1),
.ss2(ss2),
.ss3(ss3),
.ss4(ss4),
.PUSHBUTTON(PUSHBUTTON)
);


BCD n0(
.binary(w0),
.Ones(l0)
);

BCD n1(
.binary(w1),
.Ones(l1),
.Tens(l2)
);

BCD n2(
.binary(w2),
.Ones(l3),
.Tens(l4)
);

BCD n3(
.binary(w3),
.Ones(l5),
.Tens(l6)
);

   clk_divider
    #(
       .CLK_INPUT_FREQ_HZ(32'd100_000_000),
       .TICK_OUT_FREQ_HZ(1),
       . SIMULATE(SIMULATE)
    ) CLKDIV
    (
        .clk(sysclk),
        .reset(sysreset),
        .tick_out(clk_1Hz) 
    );



sevensegment
#(
.RESET_POLARITY_LOW(0),
.SIMULATE(SIMULATE)
)
SSB
(
.d0(l5),
.d1(l6),
.d2(l1),
.d3(l2),
.d4(l0),
.d5(l3),
.d6(l4),
.d7(l7),
		// outputs to seven segment display
.seg(segs_int),            
.an(an),
.dp(decpts),

// clock and reset signals (100 MHz clock, active high reset)
.clk(sysclk),
.reset(sysreset),

// ouput for simulation only
.digits_out()
);
 endmodule