library verilog;
use verilog.vl_types.all;
entity NanoControlador_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        address         : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        ula_op          : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end NanoControlador_vlg_sample_tst;
