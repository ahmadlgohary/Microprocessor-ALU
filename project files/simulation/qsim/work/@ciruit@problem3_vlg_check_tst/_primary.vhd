library verilog;
use verilog.vl_types.all;
entity CiruitProblem3_vlg_check_tst is
    port(
        even            : in     vl_logic_vector(0 to 6);
        R1BI            : in     vl_logic_vector(0 to 3);
        R2BI            : in     vl_logic_vector(0 to 3);
        R_first4        : in     vl_logic_vector(0 to 6);
        R_LAST4         : in     vl_logic_vector(0 to 6);
        sign            : in     vl_logic_vector(0 to 6);
        Student_ID      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end CiruitProblem3_vlg_check_tst;
