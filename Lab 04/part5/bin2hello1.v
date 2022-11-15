module bin2hello1 (X, SSD);
  input [3:0] X;
  output reg [0:6] SSD;

  always begin
    case (X)
      2:SSD=7'b1111111;
      3:SSD=7'b1111111;
      4:SSD=7'b1111111;
      5:SSD=7'b1001000;
      6:SSD=7'b0110000;
      7:SSD=7'b1110001;
      8:SSD=7'b1110001;
      0:SSD=7'b1110001;
      1:SSD=7'b0000001;
    endcase
  end
endmodule