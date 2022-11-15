module part5 (CLOCK_50, HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0);
  input CLOCK_50;
  output [0:6] HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0;

  wire [25:0] CYCLES;
  wire [3:0] SECONDS;
  reg secclk;

  counter_modk C0 (CLOCK_50, 1, CYCLES);
  defparam C0.n = 26;
  defparam C0.k = 50000000;

  always @ (posedge CLOCK_50)
    if (CYCLES == 0)
      secclk = 0;
    else
      secclk = 1;

  counter_modk C1 (secclk, 1, SECONDS);
  defparam C1.n = 4;
  defparam C1.k = 7;

  bin2hello7 (SECONDS, HEX6);
  bin2hello6 (SECONDS, HEX5);
  bin2hello5 (SECONDS, HEX4);
  bin2hello4 (SECONDS, HEX3);
  bin2hello3 (SECONDS, HEX2);
  bin2hello2 (SECONDS, HEX1);
  bin2hello1 (SECONDS, HEX0);
  bin2hello0 (SECONDS, HEX7);

endmodule