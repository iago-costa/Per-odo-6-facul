library verilog;
use verilog.vl_types.all;
entity NanoControlador_vlg_check_tst is
    port(
        C               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end NanoControlador_vlg_check_tst;
