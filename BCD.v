module BCD(
           input[7:0] binary,
           output reg[3:0] Tens,
           output reg[3:0] Ones 
           );

integer i;
always @(binary)
begin
   Tens = 4'd0;
   Ones = 4'd0;
 
    for (i=7;i>=0;i=i-1)
    begin
       if(Tens>=5)
       Tens = Tens +3;
       if(Ones>=5)
       Ones=Ones+3;

Tens=Tens<<1;
Tens[0]=Ones[3];
Ones=Ones<<1;
Ones[0]=binary[i];
end
end
endmodule