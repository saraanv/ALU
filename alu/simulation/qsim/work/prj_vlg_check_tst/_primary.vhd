library verilog;
use verilog.vl_types.all;
entity prj_vlg_check_tst is
    port(
        Result          : in     vl_logic_vector(7 downto 0);
        div_result      : in     vl_logic_vector(7 downto 0);
        mul_result      : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end prj_vlg_check_tst;
