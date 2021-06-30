library verilog;
use verilog.vl_types.all;
entity dff_logic_d_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dff_logic_d_vlg_sample_tst;
