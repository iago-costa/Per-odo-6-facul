library verilog;
use verilog.vl_types.all;
entity dff_logic_reset is
    port(
        clk_reset       : in     vl_logic;
        reset           : in     vl_logic;
        d_reset         : in     vl_logic_vector(7 downto 0);
        q_reset         : out    vl_logic_vector(7 downto 0)
    );
end dff_logic_reset;
