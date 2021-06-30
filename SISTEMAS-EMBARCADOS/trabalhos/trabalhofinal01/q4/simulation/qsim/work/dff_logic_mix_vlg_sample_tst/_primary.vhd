library verilog;
use verilog.vl_types.all;
entity dff_logic_mix_vlg_sample_tst is
    port(
        clk_preset      : in     vl_logic;
        clk_reset       : in     vl_logic;
        d_preset        : in     vl_logic_vector(3 downto 0);
        d_reset         : in     vl_logic_vector(3 downto 0);
        preset          : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dff_logic_mix_vlg_sample_tst;
