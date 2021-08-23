library verilog;
use verilog.vl_types.all;
entity NanoControlador is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        ula_op          : in     vl_logic_vector(2 downto 0);
        C               : out    vl_logic_vector(7 downto 0);
        n_inst          : out    vl_logic;
        z_inst          : out    vl_logic;
        c_inst          : out    vl_logic;
        v_inst          : out    vl_logic
    );
end NanoControlador;
