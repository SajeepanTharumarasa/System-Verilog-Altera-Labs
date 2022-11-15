module part5 (SW, HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0, KEY);
  input [3:0] KEY;
  input [17:0] SW;
  output [0:6] HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0;
  
  reg [15:0] R;
  wire [15:0] Q;

  flippyfloppy F0 (~KEY[1], SW[0], Q[0], ~KEY[0]);
  flippyfloppy F1 (~KEY[1], SW[1], Q[1], ~KEY[0]);
  flippyfloppy F2 (~KEY[1], SW[2], Q[2], ~KEY[0]);
  flippyfloppy F3 (~KEY[1], SW[3], Q[3], ~KEY[0]);
  flippyfloppy F4 (~KEY[1], SW[4], Q[4], ~KEY[0]);
  flippyfloppy F5 (~KEY[1], SW[5], Q[5], ~KEY[0]);
  flippyfloppy F6 (~KEY[1], SW[6], Q[6], ~KEY[0]);
  flippyfloppy F7 (~KEY[1], SW[7], Q[7], ~KEY[0]);
  flippyfloppy F8 (~KEY[1], SW[8], Q[8], ~KEY[0]);
  flippyfloppy F9 (~KEY[1], SW[9], Q[9], ~KEY[0]);
  flippyfloppy F10 (~KEY[1], SW[10], Q[10], ~KEY[0]);
  flippyfloppy F11 (~KEY[1], SW[11], Q[11], ~KEY[0]);
  flippyfloppy F12 (~KEY[1], SW[12], Q[12], ~KEY[0]);
  flippyfloppy F13 (~KEY[1], SW[13], Q[13], ~KEY[0]);
  flippyfloppy F14 (~KEY[1], SW[14], Q[14], ~KEY[0]);
  flippyfloppy F15 (~KEY[1], SW[15], Q[15], ~KEY[0]);
  
  always
    R = Q;

  hex_ssd H0 (SW[3:0], HEX0);
  hex_ssd H1 (SW[7:4], HEX1);
  hex_ssd H2 (SW[11:8], HEX2);
  hex_ssd H3 (SW[15:12], HEX3);
  hex_ssd H4 (R[3:0], HEX4);
  hex_ssd H5 (R[7:4], HEX5);
  hex_ssd H6 (R[11:8], HEX6);
  hex_ssd H7 (R[15:12], HEX7);

endmodule