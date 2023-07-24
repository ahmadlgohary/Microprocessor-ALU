library verilog;
use verilog.vl_types.all;
entity CiruitProblem1_vlg_check_tst is
    port(
        R_first4        : in     vl_logic_vector(0 to 6);
        R_LAST4         : in     vl_logic_vector(0 to 6);
        sign            : in     vl_logic_vector(0 to 6);
        Student_ID      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end CiruitProblem1_vlg_check_tst;
