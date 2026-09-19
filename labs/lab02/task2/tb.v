// tb.v
// Starter testbench template -- YOU complete this file.

module tb;

  // TODO: declare the inputs and outputs
  localparam WIDTH = 8;
  localparam DEPTH = 8;
  localparam ADDR_W = $clog2(DEPTH);

  reg  [ADDR_W-1:0] t_sel;
  wire [WIDTH-1:0]  t_dout;

  // TODO: instantiate DUT here
  lut #(.WIDTH(WIDTH), .DEPTH(DEPTH)) DUT (
  .sel  (t_sel),
  .dout (t_dout)
  );
  // Waveform dump configuration (DO NOT CHANGE)
  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, DUT);
    end
  end

  integer i;
  initial begin
    // TODO: apply different input combinations
    for (i = 0; i < DEPTH; i = i + 1) begin
      t_sel = i;
      #5;
      if (t_dout !== (i * i))
        $display("MISMATCH: sel=%0d expected=%0d got=%0d", i, i*i, t_dout);
    end
    #5 $finish;
  end


  initial
    $monitor($time, " sel=%b | dout=%b", t_sel,t_dout); // change as required

endmodule
