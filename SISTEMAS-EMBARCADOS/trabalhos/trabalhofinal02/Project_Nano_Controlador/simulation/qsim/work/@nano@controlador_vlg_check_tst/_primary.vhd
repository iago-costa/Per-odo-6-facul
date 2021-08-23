library verilog;
use verilog.vl_types.all;
entity NanoControlador_vlg_check_tst is
    port(
        C               : in     vl_logic_vector(7 downto 0);
        c_inst          : in     vl_logic;
        n_inst          : in     vl_logic;
        v_inst          : in     vl_logic;
        z_inst          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end NanoControlador_vlg_check_tst;
