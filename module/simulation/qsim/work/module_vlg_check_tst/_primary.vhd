library verilog;
use verilog.vl_types.all;
entity module_vlg_check_tst is
    port(
        alu             : in     vl_logic_vector(31 downto 0);
        inst            : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end module_vlg_check_tst;
