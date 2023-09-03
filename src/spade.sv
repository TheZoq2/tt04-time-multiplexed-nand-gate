module \std::io::rising_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::io::rising_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::io::rising_edge );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:3,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/stdlib/io.spade:4,14" *)
    logic _e_6;
    (* src = "<compiler dir>/stdlib/io.spade:4,5" *)
    logic _e_4;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_6 = !\sync2 ;
    assign _e_4 = \sync1  && _e_6;
    assign output__ = _e_4;
endmodule

module \std::io::falling_edge  (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "std::io::falling_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \std::io::falling_edge );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \sync1 ;
    assign \sync1  = sync1_i;
    (* src = "<compiler dir>/stdlib/io.spade:9,14" *)
    reg \sync2 ;
    (* src = "<compiler dir>/stdlib/io.spade:10,14" *)
    logic _e_14;
    (* src = "<compiler dir>/stdlib/io.spade:10,5" *)
    logic _e_12;
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign _e_14 = !\sync1 ;
    assign _e_12 = \sync2  && _e_14;
    assign output__ = _e_12;
endmodule

module \tto4_tmng::main::regfile  (
        input clk_i,
        input[4:0] opa_i,
        input[4:0] opb_i,
        input[6:0] write_i,
        output[1:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::main::regfile" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::main::regfile );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic[4:0] \opa ;
    assign \opa  = opa_i;
    logic[4:0] \opb ;
    assign \opb  = opb_i;
    logic[6:0] \write ;
    assign \write  = write_i;
    (* src = "src/main.spade:16,5" *)
    reg[4:0] \s1_opa ;
    (* src = "src/main.spade:16,5" *)
    reg[4:0] \s1_opb ;
    (* src = "src/main.spade:16,5" *)
    reg[6:0] \s1_write ;
    (* src = "src/main.spade:16,5" *)
    reg[6:0] \s1_write_raw ;
    (* src = "src/main.spade:16,5" *)
    reg \s1_outa ;
    (* src = "src/main.spade:16,5" *)
    reg \s1_outb ;
    logic[5:0] _e_62;
    logic[4:0] \addr ;
    logic \b ;
    logic _e_149;
    logic _e_151;
    logic _e_152;
    logic _e_153;
    logic _e_154;
    logic _e_65;
    (* src = "src/main.spade:8,33" *)
    logic[6:0] _e_64;
    logic _e_156;
    logic _e_70;
    logic[4:0] _e_71;
    logic _e_72;
    (* src = "src/main.spade:9,22" *)
    logic[6:0] _e_69;
    (* src = "src/main.spade:7,25" *)
    logic[6:0] \write_raw ;
    (* src = "src/main.spade:12,62" *)
    logic[6:0] _e_76;
    (* src = "src/main.spade:12,37" *)
    logic[31:0] \mem ;
    (* src = "src/main.spade:14,20" *)
    logic \outa ;
    (* src = "src/main.spade:15,20" *)
    logic \outb ;
    (* src = "src/main.spade:17,10" *)
    logic[1:0] _e_87;
    always @(posedge \clk ) begin
        \s1_opa  <= \opa ;
    end
    always @(posedge \clk ) begin
        \s1_opb  <= \opb ;
    end
    always @(posedge \clk ) begin
        \s1_write  <= \write ;
    end
    always @(posedge \clk ) begin
        \s1_write_raw  <= \write_raw ;
    end
    always @(posedge \clk ) begin
        \s1_outa  <= \outa ;
    end
    always @(posedge \clk ) begin
        \s1_outb  <= \outb ;
    end
    assign _e_62 = \write [5:0];
    assign \addr  = _e_62[5:1];
    assign \b  = _e_62[0];
    assign _e_149 = \write [6] == 1'd0;
    assign _e_151 = 1;
    assign _e_152 = 1;
    assign _e_153 = _e_151 && _e_152;
    assign _e_154 = _e_149 && _e_153;
    assign _e_65 = 1;
    assign _e_64 = {_e_65, \addr , \b };
    assign _e_156 = \write [6] == 1'd1;
    assign _e_70 = 0;
    assign _e_71 = 0;
    assign _e_72 = 0;
    assign _e_69 = {_e_70, _e_71, _e_72};
    always_comb begin
        priority casez ({_e_154, _e_156})
            2'b1?: \write_raw  = _e_64;
            2'b01: \write_raw  = _e_69;
            2'b?: \write_raw  = 'x;
        endcase
    end
    assign _e_76 = {\write_raw };
    always @(posedge \clk ) begin
        if (_e_76[6]) begin
            \mem [_e_76[5:1]] <= _e_76[0];
        end
    end
    assign \outa  = \mem [\opa ];
    assign \outb  = \mem [\opb ];
    assign _e_87 = {\s1_outa , \s1_outb };
    assign output__ = _e_87;
endmodule

module tt_um_thezoq2_tmng (
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe,
        input ena,
        input clk,
        input rst_n
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tt_um_thezoq2_tmng" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, tt_um_thezoq2_tmng);
        end
    end
    `endif
    logic[7:0] \uo_out_mut ;
    assign uo_out = \uo_out_mut ;
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    logic[15:0] \control_word ;
    (* src = "src/main.spade:39,25" *)
    logic[4:0] \addra ;
    logic[15:0] _e_101;
    (* src = "src/main.spade:40,31" *)
    logic[15:0] _e_99;
    (* src = "src/main.spade:40,25" *)
    logic[4:0] \addrb ;
    logic[15:0] _e_106;
    (* src = "src/main.spade:41,36" *)
    logic[15:0] _e_104;
    (* src = "src/main.spade:41,30" *)
    logic[4:0] \addr_write ;
    logic[15:0] _e_113;
    (* src = "src/main.spade:43,22" *)
    logic[15:0] _e_111;
    logic[15:0] _e_114;
    (* src = "src/main.spade:43,22" *)
    logic[15:0] _e_110;
    logic[15:0] _e_115;
    (* src = "src/main.spade:43,22" *)
    logic _e_109;
    (* src = "src/main.spade:44,15" *)
    logic[5:0] _e_118;
    (* src = "src/main.spade:44,9" *)
    logic[6:0] _e_117;
    (* src = "src/main.spade:47,9" *)
    logic[6:0] _e_122;
    (* src = "src/main.spade:43,17" *)
    logic[6:0] \write ;
    (* src = "src/main.spade:50,22" *)
    logic[1:0] _e_131;
    logic \opa ;
    logic \opb ;
    (* src = "src/main.spade:52,22" *)
    logic _e_133;
    (* src = "src/main.spade:52,20" *)
    logic \nand_out ;
    logic[7:0] _e_141;
    logic[7:0] _e_143;
    (* src = "src/main.spade:54,18" *)
    logic[7:0] _e_138;
    logic[7:0] _e_145;
    logic[7:0] _e_147;
    assign \control_word  = {\ui_in , \uio_in };
    assign \addra  = \control_word [4:0];
    assign _e_101 = 5;
    assign _e_99 = \control_word  >> _e_101;
    assign \addrb  = _e_99[4:0];
    assign _e_106 = 10;
    assign _e_104 = \control_word  >> _e_106;
    assign \addr_write  = _e_104[4:0];
    assign _e_113 = 15;
    assign _e_111 = \control_word  >> _e_113;
    assign _e_114 = 1;
    assign _e_110 = _e_111 & _e_114;
    assign _e_115 = 1;
    assign _e_109 = _e_110 == _e_115;
    assign _e_118 = {\addr_write , \nand_out };
    assign _e_117 = {1'd0, _e_118};
    assign _e_122 = {1'd1, 6'bX};
    assign \write  = _e_109 ? _e_117 : _e_122;
    (* src = "src/main.spade:50,22" *)
    \tto4_tmng::main::regfile  regfile_0(\clk , \addra , \addrb , \write , _e_131);
    assign \opa  = _e_131[1];
    assign \opb  = _e_131[0];
    assign _e_133 = \opa  && \opb ;
    assign \nand_out  = !_e_133;
    assign _e_141 = 1;
    assign _e_143 = 0;
    assign _e_138 = \nand_out  ? _e_141 : _e_143;
    assign \uo_out_mut  = _e_138;
    assign _e_145 = 0;
    assign \uio_out_mut  = _e_145;
    assign _e_147 = 0;
    assign \uio_oe_mut  = _e_147;
endmodule