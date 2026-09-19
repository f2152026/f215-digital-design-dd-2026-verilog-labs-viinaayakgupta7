// tb.v
// Starter testbench template -- YOU complete this file.
//
// Goal: apply all 8 combinations of I0, I1, S (5 time units apart) to DUT
// and observe the output. Fill in every TODO below.

module tb;

  // TODO: declare the three DUT inputs as the appropriate variable type.
  // Use exactly these names: t_i0, t_i1, t_s (needed by $monitor below).
  reg t_gt,t_lt,t_eq;
  // TODO: declare the DUT output as the appropriate net type.
  // Use exactly this name: t_y (needed by $monitor below).
  reg [1:0] t_a,t_b;
  reg exp_gt, exp_lt, exp_eq;

  integer errors = 0;
  // TODO: instantiate DUT here, connecting t_i0, t_i1, t_s, t_y to its ports
  comp2 DUT (t_a,t_b,t_gt,t_lt,t_eq);


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
    t_a = 2'b00; t_b = 2'b00; exp_gt = 0; exp_lt = 0; exp_eq = 1;
    #5 t_a = 2'b00; t_b = 2'b01; exp_gt = 0; exp_lt = 1; exp_eq = 0;
    #5 t_a = 2'b00; t_b = 2'b10; exp_gt = 0; exp_lt = 1; exp_eq = 0;
    #5 t_a = 2'b00; t_b = 2'b11; exp_gt = 0; exp_lt = 1; exp_eq = 0;
    #5 t_a = 2'b01; t_b = 2'b00; exp_gt = 1; exp_lt = 0; exp_eq = 0;
    #5 t_a = 2'b01; t_b = 2'b01; exp_gt = 0; exp_lt = 0; exp_eq = 1;
    #5 t_a = 2'b01; t_b = 2'b10; exp_gt = 0; exp_lt = 1; exp_eq = 0;
    #5 t_a = 2'b01; t_b = 2'b11; exp_gt = 0; exp_lt = 1; exp_eq = 0;
    #5 t_a = 2'b10; t_b = 2'b00; exp_gt = 1; exp_lt = 0; exp_eq = 0;
    #5 t_a = 2'b10; t_b = 2'b01; exp_gt = 1; exp_lt = 0; exp_eq = 0;
    #5 t_a = 2'b10; t_b = 2'b10; exp_gt = 0; exp_lt = 0; exp_eq = 1;
    #5 t_a = 2'b10; t_b = 2'b11; exp_gt = 0; exp_lt = 1; exp_eq = 0;
    #5 t_a = 2'b11; t_b = 2'b00; exp_gt = 1; exp_lt = 0; exp_eq = 0;
    #5 t_a = 2'b11; t_b = 2'b01; exp_gt = 1; exp_lt = 0; exp_eq = 0;
    #5 t_a = 2'b11; t_b = 2'b10; exp_gt = 1; exp_lt = 0; exp_eq = 0;
    #5 t_a = 2'b11; t_b = 2'b11; exp_gt = 0; exp_lt = 0; exp_eq = 1;
    #5 $finish;

  end

  
  always @(t_a, t_b) begin
    #1;
    if ({t_gt,t_lt,t_eq} !== {exp_gt,exp_lt,exp_eq}) begin
      $display("FAIL at time %0t: A=%b B=%b  got GT=%b LT=%b EQ=%b  expected GT=%b LT=%b EQ=%b",
           $time, t_a, t_b, t_gt, t_lt, t_eq, exp_gt, exp_lt, exp_eq);
      errors = errors + 1;
    end
  end
  final begin
    $display("Total errors: %d", errors);
  end


endmodule
