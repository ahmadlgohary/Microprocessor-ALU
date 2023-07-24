library verilog;
use verilog.vl_types.all;
entity CiruitProblem1 is
    port(
        R_first4        : out    vl_logic_vector(0 to 6);
        Clock           : in     vl_logic;
        reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        R_LAST4         : out    vl_logic_vector(0 to 6);
        sign            : out    vl_logic_vector(0 to 6);
        Student_ID      : out    vl_logic_vector(0 to 6)
    );
end CiruitProblem1;
