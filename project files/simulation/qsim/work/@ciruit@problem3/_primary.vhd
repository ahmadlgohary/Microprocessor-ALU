library verilog;
use verilog.vl_types.all;
entity CiruitProblem3 is
    port(
        even            : out    vl_logic_vector(0 to 6);
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        R1BI            : out    vl_logic_vector(0 to 3);
        reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        R2BI            : out    vl_logic_vector(0 to 3);
        R_first4        : out    vl_logic_vector(0 to 6);
        R_LAST4         : out    vl_logic_vector(0 to 6);
        sign            : out    vl_logic_vector(0 to 6);
        Student_ID      : out    vl_logic_vector(0 to 6)
    );
end CiruitProblem3;
