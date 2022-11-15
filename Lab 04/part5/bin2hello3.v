module bin2hello3 (X, SSD);
  input [3:0] X;
  output reg [0:6] SSD;

  always begin
    case (X)
      4:SSD=7'b1111111;
      5:SSD=7'b1111111;
      6:SSD=7'b1111111;
      7:SSD=7'b1001000;
      8:SSD=7'b0110000;
      0:SSD=7'b0110000;
      1:SSD=7'b1110001;
      2:SSD=7'b1110001;
      3:SSD=7'b0000001;
    endcase
  end
endmodule