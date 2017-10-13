module barrel_shifter(DOUT,SWITCH,SOUT,OPOUT,SWITCHOUT,S,OP,PUSHBUTTON,ss1,ss2,ss3,ss4);

reg [4:0] DIN; //data input

input [4:0] SWITCH;
input [1:0] S; //shift amount
input [3:0] OP; //op code
output [4:0] DOUT; //data output
output  reg [4:0] SWITCHOUT;
output  reg [1:0] SOUT;
output  reg [3:0] OPOUT;
reg [4:0] DOUT; //data output
output reg [4:0] ss1;
output reg [4:0] ss2;
output reg [1:0] ss3;
output reg [3:0] ss4;
input PUSHBUTTON;



parameter LOLROTATE=4'b0000;
parameter LORROTATE=4'b0001;
parameter LOLSHIFT=4'b0010;
parameter LORSHIFT=4'b0011;
parameter ARLROTATE=4'b1000;
parameter ARRROTATE=4'b1001;
parameter ARLSHIFT=4'b1010;
parameter ARRSHIFT=4'b1011;
parameter LOAD=4'b0100;
parameter LOADD=4'b1100;
parameter HOLD=4'b0101;
parameter HOLDD=4'b1101;

always@ (SWITCH  or S or OP)
begin
SWITCHOUT<=SWITCH;
SOUT<=S;
OPOUT<=OP;
ss1<=SWITCH;
ss2<=DOUT;
ss3<=S;
ss4<=OP;
end


always @(DIN or S or OP or SWITCH or PUSHBUTTON)
if(PUSHBUTTON==1)
 begin
  if (OP==LOLROTATE)

begin
case(S)
2'b01: DOUT<={SWITCH[3:0],SWITCH[4]}; 
2'b10: DOUT<={SWITCH[2:0],SWITCH[4:3]};
2'b11: DOUT<={SWITCH[1:0],SWITCH[4:2]};
endcase

end

else if (OP==LORROTATE)

begin
case(S)
2'b01: DOUT<={SWITCH[0],SWITCH[4:1]};
2'b10: DOUT<={SWITCH[1:0],SWITCH[4:2]};
2'b11: DOUT<={SWITCH[2:0],SWITCH[4:3]};
endcase

end

else if (OP==LOLSHIFT)

begin
case(S)
2'b01: DOUT<={SWITCH[3:0],1'b0};
2'b10: DOUT<={SWITCH[2:0],2'b00};
2'b11: DOUT<={SWITCH[1:0],3'b000};
endcase
end

else if(OP==LORSHIFT)
begin
case(S)
2'b01: DOUT<={1'b0,SWITCH[4:1]};
2'b10: DOUT<={2'b00,SWITCH[4:2]};
2'b11: DOUT<={3'b000,SWITCH[4:3]};
endcase
end

else if(OP==ARLROTATE)
begin
case(S)
2'b01: DOUT<={SWITCH[4],SWITCH[2:0],SWITCH[3]};
2'b10: DOUT<={SWITCH[4],SWITCH[1:0],SWITCH[3:2]};
2'b11: DOUT<={SWITCH[4],SWITCH[0],SWITCH[3:1]};
endcase
end

else if(OP==ARRROTATE)
begin
case(S)
2'b01: DOUT<={SWITCH[4],SWITCH[0],SWITCH[3:1]};
2'b10: DOUT<={SWITCH[4],SWITCH[1:0],SWITCH[3:2]};
2'b11: DOUT<={SWITCH[4],SWITCH[2:0],SWITCH[3]};
endcase
end

else if(OP==ARLSHIFT)
begin
case(S)
2'b01: DOUT<={1'b0,SWITCH[4:1]};
2'b10: DOUT<={2'b00,SWITCH[4:2]};
2'b11: DOUT<={3'b000,SWITCH[4:3]};
endcase
end

else if(OP==ARRSHIFT)
  if(SWITCH[4]==0)
  begin
case(S)
2'b01: DOUT<={SWITCH[4],1'b0,SWITCH[3:1]};
2'b10: DOUT<={SWITCH[4],2'b00,SWITCH[3:2]};
2'b11: DOUT<={SWITCH[4],3'b000,SWITCH[3]};
endcase
end
 else if(SWITCH[4]==1)
  begin
case(S)
2'b01: DOUT<={SWITCH[4],1'b1,SWITCH[3:1]};
2'b10: DOUT<={SWITCH[4],2'b11,SWITCH[3:2]};
2'b11: DOUT<={SWITCH[4],3'b111,SWITCH[3]};
endcase
end

else if (OP==LOAD)
DOUT<=SWITCH;
else if(OP==LOADD)
DOUT<=SWITCH;
else if(OP==HOLD)
begin
end
else if(OP==HOLDD)
begin
end
end
 
 

endmodule
