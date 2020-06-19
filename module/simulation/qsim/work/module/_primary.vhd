library verilog;
use verilog.vl_types.all;
entity module is
    port(
        fpga_clk        : in     vl_logic;
        alu             : out    vl_logic_vector(31 downto 0);
        inst            : out    vl_logic_vector(31 downto 0)
    );
end module;
