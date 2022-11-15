module bin2hello6 (X, SSD);
  input [3:0] X;
  output reg [0:6] SSD;

  always begin
    case (X)
      7:SSD=7'b1111111;
      8:SSD=7'b1111111;
      0:SSD=7'b1111111;
      1:SSD=7'b1111111;
      2:SSD=7'b1001000;
      3:SSD=7'b0110000;
      4:SSD=7'b1110001;
      5:SSD=7'b1110001;
      6:SSD=7'b0000001;
    endcase
  end
endmodule