library verilog;
use verilog.vl_types.all;
entity module_vlg_sample_tst is
    port(
        fpga_clk        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end module_vlg_sample_tst;
