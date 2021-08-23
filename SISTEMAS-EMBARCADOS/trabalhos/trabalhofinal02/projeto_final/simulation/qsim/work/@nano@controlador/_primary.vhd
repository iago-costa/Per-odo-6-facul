library verilog;
use verilog.vl_types.all;
entity NanoControlador is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        ula_op          : in     vl_logic_vector(3 downto 0);
        C               : out    vl_logic_vector(7 downto 0);
        enable          : in     vl_logic;
        clk             : in     vl_logic;
        address         : in     vl_logic_vector(3 downto 0)
    );
end NanoControlador;
