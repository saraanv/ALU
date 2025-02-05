library verilog;
use verilog.vl_types.all;
entity prj is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        ALUOp           : in     vl_logic_vector(2 downto 0);
        Result          : out    vl_logic_vector(7 downto 0);
        mul_result      : out    vl_logic_vector(15 downto 0);
        div_result      : out    vl_logic_vector(7 downto 0)
    );
end prj;
