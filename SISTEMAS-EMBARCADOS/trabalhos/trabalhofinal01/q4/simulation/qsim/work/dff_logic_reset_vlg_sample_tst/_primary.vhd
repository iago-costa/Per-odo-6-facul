library verilog;
use verilog.vl_types.all;
entity dff_logic_reset_vlg_sample_tst is
    port(
        clk_reset       : in     vl_logic;
        d_reset         : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dff_logic_reset_vlg_sample_tst;
