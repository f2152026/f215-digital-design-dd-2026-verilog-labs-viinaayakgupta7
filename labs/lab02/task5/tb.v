// tb.v
// Starter testbench template -- YOU complete this file.
//
// Goal: apply all 8 combinations of I0, I1, S (5 time units apart) to DUT
// and observe the output. Fill in every TODO below.

module tb;

  // TODO: declare the three DUT inputs as the appropriate variable type.
  // Use exactly these names: t_i0, t_i1, t_s (needed by $monitor below).
  reg t_op;
  // TODO: declare the DUT output as the appropriate net type.
  // Use exactly this name: t_y (needed by $monitor below).
  reg [3:0] t_a,t_b;
  reg [3:0] t_r;
  reg [3:0] exp_r;

  integer errors = 0;
  // TODO: instantiate DUT here, connecting t_i0, t_i1, t_s, t_y to its ports
  alu DUT (t_a,t_b,t_op,t_r);


  // Waveform dump configuration
  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, DUT);
    end
  end

  initial begin
    // TODO: apply all 8 combinations of t_i0, t_i1, t_s, 5 time units apart,
    // then $finish. (Same pattern you used in Lab 1's tb.v.)
    t_a = 4'b0000; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b0000; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b0000; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b0000; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b0000; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b0000; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b0000; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b0000; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0000; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0000; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0000; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0000; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0000; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0000; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0000; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0000; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1111;

    #5 t_a = 4'b0001; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b0001; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b0001; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b0001; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b0001; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b0001; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b0001; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0001; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0001; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0001; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0001; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0001; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0001; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0001; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0001; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b0001; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0000;

    #5 t_a = 4'b0010; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b0010; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b0010; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b0010; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b0010; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b0010; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0010; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0010; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0010; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0010; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0010; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0010; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0010; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0010; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b0010; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b0010; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0001;

    #5 t_a = 4'b0011; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b0011; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b0011; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b0011; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b0011; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0011; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0011; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0011; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0011; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0011; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0011; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0011; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0011; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b0011; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b0011; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b0011; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0010;
    
    #5 t_a = 4'b0100; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b0100; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b0100; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b0100; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0100; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0100; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0100; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0100; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0100; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0100; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0100; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0100; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b0100; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b0100; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b0100; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b0100; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0011;

    #5 t_a = 4'b0101; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b0101; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b0101; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0101; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0101; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0101; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0101; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0101; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0101; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0101; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0101; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b0101; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b0101; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b0101; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b0101; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b0101; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0100;

    #5 t_a = 4'b0110; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b0110; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0110; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0110; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0110; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0110; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0110; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0110; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0110; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0110; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b0110; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b0110; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b0110; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b0110; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b0110; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b0110; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0101;

    #5 t_a = 4'b0111; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b0111; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b0111; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b0111; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b0111; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b0111; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b0111; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b0111; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b0111; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b0111; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b0111; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b0111; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b0111; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b0111; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b0111; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b0111; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0110;

    #5 t_a = 4'b1000; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b1000; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b1000; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b1000; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b1000; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b1000; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b1000; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b1000; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1000; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1000; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1000; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1000; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1000; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1000; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1000; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1000; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b0111;

    #5 t_a = 4'b1001; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b1001; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b1001; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b1001; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b1001; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b1001; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b1001; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1001; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1001; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1001; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1001; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1001; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1001; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1001; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1001; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b1001; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1000;

    #5 t_a = 4'b1010; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b1010; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b1010; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b1010; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b1010; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b1010; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1010; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1010; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1010; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1010; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1010; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1010; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1010; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1010; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b1010; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b1010; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1001;

    #5 t_a = 4'b1011; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b1011; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b1011; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b1011; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b1011; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1011; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1011; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1011; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1011; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1011; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1011; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1011; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1011; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b1011; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b1011; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b1011; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1010;

    #5 t_a = 4'b1100; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b1100; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b1100; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b1100; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1100; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1100; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1100; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1100; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1100; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1100; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1100; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1100; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b1100; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b1100; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b1100; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b1100; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1011;

    #5 t_a = 4'b1101; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b1101; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b1101; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1101; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1101; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1101; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1101; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1101; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1101; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1101; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1101; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b1101; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b1101; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b1101; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b1101; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b1101; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1100;

    #5 t_a = 4'b1110; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1110;
    #5 t_a = 4'b1110; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1110; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1110; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1110; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1110; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1110; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1110; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1110; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1110; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b1110; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b1110; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b1110; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b1110; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b1110; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b1110; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1101;

    #5 t_a = 4'b1111; t_b = 4'b0000; t_op = 1'b0; exp_r = 4'b1111;
    #5 t_a = 4'b1111; t_b = 4'b0001; t_op = 1'b0; exp_r = 4'b0000;
    #5 t_a = 4'b1111; t_b = 4'b0010; t_op = 1'b0; exp_r = 4'b0001;
    #5 t_a = 4'b1111; t_b = 4'b0011; t_op = 1'b0; exp_r = 4'b0010;
    #5 t_a = 4'b1111; t_b = 4'b0100; t_op = 1'b0; exp_r = 4'b0011;
    #5 t_a = 4'b1111; t_b = 4'b0101; t_op = 1'b0; exp_r = 4'b0100;
    #5 t_a = 4'b1111; t_b = 4'b0110; t_op = 1'b0; exp_r = 4'b0101;
    #5 t_a = 4'b1111; t_b = 4'b0111; t_op = 1'b0; exp_r = 4'b0110;
    #5 t_a = 4'b1111; t_b = 4'b1000; t_op = 1'b0; exp_r = 4'b0111;
    #5 t_a = 4'b1111; t_b = 4'b1001; t_op = 1'b0; exp_r = 4'b1000;
    #5 t_a = 4'b1111; t_b = 4'b1010; t_op = 1'b0; exp_r = 4'b1001;
    #5 t_a = 4'b1111; t_b = 4'b1011; t_op = 1'b0; exp_r = 4'b1010;
    #5 t_a = 4'b1111; t_b = 4'b1100; t_op = 1'b0; exp_r = 4'b1011;
    #5 t_a = 4'b1111; t_b = 4'b1101; t_op = 1'b0; exp_r = 4'b1100;
    #5 t_a = 4'b1111; t_b = 4'b1110; t_op = 1'b0; exp_r = 4'b1101;
    #5 t_a = 4'b1111; t_b = 4'b1111; t_op = 1'b0; exp_r = 4'b1110;


    #5 t_a = 4'b0000; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0000; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0000; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0000; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0000; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0000; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0000; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0000; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0000; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b0000; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b0000; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b0000; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b0000; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b0000; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b0000; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b0000; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0001;

    #5 t_a = 4'b0001; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b0001; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0001; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0001; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0001; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0001; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0001; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0001; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0001; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0001; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b0001; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b0001; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b0001; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b0001; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b0001; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b0001; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0010;

    #5 t_a = 4'b0010; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b0010; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b0010; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0010; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0010; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0010; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0010; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0010; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0010; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0010; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0010; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b0010; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b0010; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b0010; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b0010; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b0010; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0011;

    #5 t_a = 4'b0011; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b0011; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b0011; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b0011; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0011; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0011; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0011; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0011; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0011; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0011; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0011; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0011; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b0011; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b0011; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b0011; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b0011; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0100;
    
    #5 t_a = 4'b0100; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b0100; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b0100; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b0100; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b0100; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0100; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0100; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0100; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0100; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0100; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0100; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0100; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0100; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b0100; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b0100; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b0100; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0101;

    #5 t_a = 4'b0101; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b0101; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b0101; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b0101; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b0101; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b0101; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0101; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0101; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0101; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0101; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0101; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0101; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0101; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0101; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b0101; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b0101; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0110;

    #5 t_a = 4'b0110; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b0110; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b0110; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b0110; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b0110; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b0110; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b0110; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0110; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0110; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0110; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0110; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0110; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0110; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0110; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0110; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b0110; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0111;

    #5 t_a = 4'b0111; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b0111; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b0111; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b0111; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b0111; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b0111; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b0111; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b0111; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b0111; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b0111; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b0111; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b0111; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b0111; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b0111; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b0111; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b0111; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1000;

    #5 t_a = 4'b1000; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1000; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1000; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1000; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1000; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1000; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1000; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1000; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1000; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b1000; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b1000; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b1000; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b1000; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b1000; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b1000; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b1000; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1001;

    #5 t_a = 4'b1001; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b1001; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1001; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1001; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1001; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1001; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1001; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1001; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1001; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1001; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b1001; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b1001; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b1001; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b1001; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b1001; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b1001; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1010;

    #5 t_a = 4'b1010; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b1010; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b1010; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1010; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1010; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1010; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1010; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1010; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1010; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1010; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1010; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b1010; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b1010; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b1010; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b1010; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b1010; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1011;

    #5 t_a = 4'b1011; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b1011; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b1011; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b1011; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1011; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1011; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1011; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1011; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1011; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1011; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1011; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1011; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b1011; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b1011; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b1011; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b1011; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1100;

    #5 t_a = 4'b1100; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b1100; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b1100; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b1100; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b1100; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1100; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1100; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1100; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1100; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1100; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1100; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1100; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1100; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b1100; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b1100; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b1100; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1101;

    #5 t_a = 4'b1101; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b1101; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b1101; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b1101; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b1101; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b1101; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1101; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1101; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1101; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1101; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1101; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1101; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1101; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1101; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b1101; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b1101; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1110;

    #5 t_a = 4'b1110; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b1110; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b1110; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b1110; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b1110; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b1110; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b1110; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1110; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1110; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1110; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1110; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1110; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1110; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1110; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1110; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0000;
    #5 t_a = 4'b1110; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b1111;

    #5 t_a = 4'b1111; t_b = 4'b0000; t_op = 1'b1; exp_r = 4'b1111;
    #5 t_a = 4'b1111; t_b = 4'b0001; t_op = 1'b1; exp_r = 4'b1110;
    #5 t_a = 4'b1111; t_b = 4'b0010; t_op = 1'b1; exp_r = 4'b1101;
    #5 t_a = 4'b1111; t_b = 4'b0011; t_op = 1'b1; exp_r = 4'b1100;
    #5 t_a = 4'b1111; t_b = 4'b0100; t_op = 1'b1; exp_r = 4'b1011;
    #5 t_a = 4'b1111; t_b = 4'b0101; t_op = 1'b1; exp_r = 4'b1010;
    #5 t_a = 4'b1111; t_b = 4'b0110; t_op = 1'b1; exp_r = 4'b1001;
    #5 t_a = 4'b1111; t_b = 4'b0111; t_op = 1'b1; exp_r = 4'b1000;
    #5 t_a = 4'b1111; t_b = 4'b1000; t_op = 1'b1; exp_r = 4'b0111;
    #5 t_a = 4'b1111; t_b = 4'b1001; t_op = 1'b1; exp_r = 4'b0110;
    #5 t_a = 4'b1111; t_b = 4'b1010; t_op = 1'b1; exp_r = 4'b0101;
    #5 t_a = 4'b1111; t_b = 4'b1011; t_op = 1'b1; exp_r = 4'b0100;
    #5 t_a = 4'b1111; t_b = 4'b1100; t_op = 1'b1; exp_r = 4'b0011;
    #5 t_a = 4'b1111; t_b = 4'b1101; t_op = 1'b1; exp_r = 4'b0010;
    #5 t_a = 4'b1111; t_b = 4'b1110; t_op = 1'b1; exp_r = 4'b0001;
    #5 t_a = 4'b1111; t_b = 4'b1111; t_op = 1'b1; exp_r = 4'b0000;
    
    #5 $finish;

  end

  always @(t_a, t_b, t_op) begin
    #1; 
    if (t_r !== exp_r) begin
      $display("FAIL at time %0t: A=%b B=%b and operator=%b got Result=%b expected Result=%b",
               $time, t_a, t_b, t_op, t_r, exp_r);
      errors = errors + 1;
    end
  end
  final begin
    $display("Total errors: %d", errors);
  end

endmodule
