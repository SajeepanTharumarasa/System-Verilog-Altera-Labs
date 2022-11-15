module bin2hello4 (X, SSD);
  input [3:0] X;
  output reg [0:6] SSD;

  always begin
    case (X)
      5:SSD=7'b1111111;
      6:SSD=7'b1111111;
      7:SSD=7'b1111111;
      8:SSD=7'b1001000;
      0:SSD=7'b1001000;
      1:SSD=7'b0110000;
      2:SSD=7'b1110001;
      3:SSD=7'b1110001;
      4:SSD=7'b0000001;
    endcase
  end
endmodule