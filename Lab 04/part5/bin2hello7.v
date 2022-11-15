module bin2hello7 (X, SSD);
  input [3:0] X;
  output reg [0:6] SSD;

  always begin
    case (X)
      0:SSD=7'b1111111;
      1:SSD=7'b1111111;
      2:SSD=7'b1111111;
      3:SSD=7'b1001000;
      4:SSD=7'b0110000;
      5:SSD=7'b1110001;
      6:SSD=7'b1110001;
      7:SSD=7'b0000001;
      8:SSD=7'b1111111;
    endcase
  end
endmodule