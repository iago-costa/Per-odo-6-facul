library verilog;
use verilog.vl_types.all;
entity dff_logic_mix is
    port(
        clk_reset       : in     vl_logic;
        clk_preset      : in     vl_logic;
        preset          : in     vl_logic;
        reset           : in     vl_logic;
        d_preset        : in     vl_logic_vector(3 downto 0);
        q_preset        : out    vl_logic_vector(3 downto 0);
        d_reset         : in     vl_logic_vector(3 downto 0);
        q_reset         : out    vl_logic_vector(3 downto 0)
    );
end dff_logic_mix;
