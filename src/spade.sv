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
        input[6:0] addr_i,
        input[8:0] write_i,
        output output__
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
    logic[6:0] \addr ;
    assign \addr  = addr_i;
    logic[8:0] \write ;
    assign \write  = write_i;
    (* src = "src/main.spade:40,5" *)
    reg[6:0] \s1_addr ;
    (* src = "src/main.spade:40,5" *)
    reg[8:0] \s1_write ;
    (* src = "src/main.spade:40,5" *)
    reg[8:0] \s1_write_raw ;
    (* src = "src/main.spade:40,5" *)
    reg \s1_out ;
    logic[7:0] _e_62;
    logic[6:0] addr_n1;
    logic \b ;
    logic _e_198;
    logic _e_200;
    logic _e_201;
    logic _e_202;
    logic _e_203;
    logic _e_65;
    (* src = "src/main.spade:33,33" *)
    logic[8:0] _e_64;
    logic _e_205;
    logic _e_70;
    logic[6:0] _e_71;
    logic _e_72;
    (* src = "src/main.spade:34,22" *)
    logic[8:0] _e_69;
    (* src = "src/main.spade:32,25" *)
    logic[8:0] \write_raw ;
    (* src = "src/main.spade:37,63" *)
    logic[8:0] _e_76;
    (* src = "src/main.spade:37,38" *)
    logic[127:0] \mem ;
    (* src = "src/main.spade:39,19" *)
    logic \out ;
    logic[6:0] _e_207;
    logic _e_206;
    logic _e_86;
    logic[6:0] _e_209;
    logic _e_208;
    logic _e_88;
    logic _e_210;
    (* src = "src/main.spade:41,9" *)
    logic _e_83;
    always @(posedge \clk ) begin
        \s1_addr  <= \addr ;
    end
    always @(posedge \clk ) begin
        \s1_write  <= \write ;
    end
    always @(posedge \clk ) begin
        \s1_write_raw  <= \write_raw ;
    end
    always @(posedge \clk ) begin
        \s1_out  <= \out ;
    end
    assign _e_62 = \write [7:0];
    assign addr_n1 = _e_62[7:1];
    assign \b  = _e_62[0];
    assign _e_198 = \write [8] == 1'd0;
    assign _e_200 = 1;
    assign _e_201 = 1;
    assign _e_202 = _e_200 && _e_201;
    assign _e_203 = _e_198 && _e_202;
    assign _e_65 = 1;
    assign _e_64 = {_e_65, addr_n1, \b };
    assign _e_205 = \write [8] == 1'd1;
    assign _e_70 = 0;
    assign _e_71 = 0;
    assign _e_72 = 0;
    assign _e_69 = {_e_70, _e_71, _e_72};
    always_comb begin
        priority casez ({_e_203, _e_205})
            2'b1?: \write_raw  = _e_64;
            2'b01: \write_raw  = _e_69;
            2'b?: \write_raw  = 'x;
        endcase
    end
    assign _e_76 = {\write_raw };
    always @(posedge \clk ) begin
        if (_e_76[8]) begin
            \mem [_e_76[7:1]] <= _e_76[0];
        end
    end
    assign \out  = \mem [\addr ];
    assign _e_207 = 0;
    assign _e_206 = \s1_addr  == _e_207;
    assign _e_86 = 0;
    assign _e_209 = 1;
    assign _e_208 = \s1_addr  == _e_209;
    assign _e_88 = 1;
    assign _e_210 = 1;
    always_comb begin
        priority casez ({_e_206, _e_208, _e_210})
            3'b1??: _e_83 = _e_86;
            3'b01?: _e_83 = _e_88;
            3'b001: _e_83 = \s1_out ;
            3'b?: _e_83 = 'x;
        endcase
    end
    assign output__ = _e_83;
endmodule

module \tto4_tmng::main::top_impl  (
        input clk_i,
        input[7:0] ui_in_i,
        output[7:0] uo_out_o,
        input[7:0] uio_in_i,
        output[7:0] uio_out_o,
        output[7:0] uio_oe_o,
        input ena_i,
        input rst_n_i
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::main::top_impl" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::main::top_impl );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic[7:0] \ui_in ;
    assign \ui_in  = ui_in_i;
    logic[7:0] \uo_out_mut ;
    assign uo_out_o = \uo_out_mut ;
    logic[7:0] \uio_in ;
    assign \uio_in  = uio_in_i;
    logic[7:0] \uio_out_mut ;
    assign uio_out_o = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe_o = \uio_oe_mut ;
    logic \ena ;
    assign \ena  = ena_i;
    logic \rst_n ;
    assign \rst_n  = rst_n_i;
    (* src = "src/main.spade:64,5" *)
    reg[7:0] \s1_ui_in ;
    (* src = "src/main.spade:64,5" *)
    reg[7:0] \s1_uio_in ;
    (* src = "src/main.spade:64,5" *)
    reg \s1_ena ;
    (* src = "src/main.spade:64,5" *)
    reg \s1_rst_n ;
    (* src = "src/main.spade:80,5" *)
    reg[7:0] \s2_ui_in ;
    (* src = "src/main.spade:80,5" *)
    reg[7:0] \s2_uio_in ;
    (* src = "src/main.spade:80,5" *)
    reg \s2_ena ;
    (* src = "src/main.spade:80,5" *)
    reg \s2_rst_n ;
    (* src = "src/main.spade:80,5" *)
    reg \s2_mode ;
    (* src = "src/main.spade:80,5" *)
    reg[6:0] \s2_addr1 ;
    (* src = "src/main.spade:80,5" *)
    reg \s2_commit_raw ;
    (* src = "src/main.spade:80,5" *)
    reg[6:0] \s2_addr2 ;
    (* src = "src/main.spade:80,5" *)
    reg \s2_commit_old ;
    (* src = "src/main.spade:80,5" *)
    reg \s2_commit ;
    (* src = "src/main.spade:80,5" *)
    reg \s2_wb ;
    (* src = "src/main.spade:80,5" *)
    reg[8:0] \s2_write ;
    logic[7:0] _e_97;
    (* src = "src/main.spade:65,32" *)
    logic[7:0] _e_95;
    logic[7:0] _e_98;
    (* src = "src/main.spade:65,32" *)
    logic[7:0] _e_94;
    logic[7:0] _e_99;
    (* src = "src/main.spade:65,32" *)
    logic _e_93;
    (* src = "src/main.spade:65,55" *)
    logic[6:0] _e_100;
    (* src = "src/main.spade:65,32" *)
    logic[7:0] _e_104;
    logic \mode ;
    logic[6:0] \addr1 ;
    logic[7:0] _e_110;
    (* src = "src/main.spade:66,38" *)
    logic[7:0] _e_108;
    logic[7:0] _e_111;
    (* src = "src/main.spade:66,38" *)
    logic[7:0] _e_107;
    logic[7:0] _e_112;
    (* src = "src/main.spade:66,38" *)
    logic _e_106;
    (* src = "src/main.spade:66,62" *)
    logic[6:0] _e_113;
    (* src = "src/main.spade:66,38" *)
    logic[7:0] _e_117;
    logic \commit_raw ;
    logic[6:0] \addr2 ;
    (* src = "src/main.spade:68,18" *)
    reg \commit_old ;
    (* src = "src/main.spade:69,36" *)
    logic _e_123;
    (* src = "src/main.spade:69,22" *)
    logic \commit ;
    (* src = "src/main.spade:72,24" *)
    logic _e_129;
    (* src = "src/main.spade:73,19" *)
    logic[7:0] _e_134;
    (* src = "src/main.spade:73,13" *)
    logic[8:0] _e_133;
    (* src = "src/main.spade:76,13" *)
    logic[8:0] _e_138;
    (* src = "src/main.spade:72,21" *)
    logic[8:0] \write ;
    (* src = "src/main.spade:79,23" *)
    logic \opb ;
    (* src = "src/main.spade:83,27" *)
    logic _e_148;
    (* src = "src/main.spade:83,24" *)
    logic _e_147;
    (* src = "src/main.spade:83,18" *)
    reg \opa ;
    (* src = "src/main.spade:86,26" *)
    logic _e_157;
    (* src = "src/main.spade:86,24" *)
    logic \wb ;
    logic[7:0] _e_165;
    logic[7:0] _e_167;
    (* src = "src/main.spade:88,22" *)
    logic[7:0] _e_162;
    logic[7:0] _e_169;
    logic[7:0] _e_171;
    always @(posedge \clk ) begin
        \s1_ui_in  <= \ui_in ;
    end
    always @(posedge \clk ) begin
        \s1_uio_in  <= \uio_in ;
    end
    always @(posedge \clk ) begin
        \s1_ena  <= \ena ;
    end
    always @(posedge \clk ) begin
        \s1_rst_n  <= \rst_n ;
    end
    always @(posedge \clk ) begin
        \s2_ui_in  <= \s1_ui_in ;
    end
    always @(posedge \clk ) begin
        \s2_uio_in  <= \s1_uio_in ;
    end
    always @(posedge \clk ) begin
        \s2_ena  <= \s1_ena ;
    end
    always @(posedge \clk ) begin
        \s2_rst_n  <= \s1_rst_n ;
    end
    always @(posedge \clk ) begin
        \s2_mode  <= \mode ;
    end
    always @(posedge \clk ) begin
        \s2_addr1  <= \addr1 ;
    end
    always @(posedge \clk ) begin
        \s2_commit_raw  <= \commit_raw ;
    end
    always @(posedge \clk ) begin
        \s2_addr2  <= \addr2 ;
    end
    always @(posedge \clk ) begin
        \s2_commit_old  <= \commit_old ;
    end
    always @(posedge \clk ) begin
        \s2_commit  <= \commit ;
    end
    always @(posedge \clk ) begin
        \s2_wb  <= \wb ;
    end
    always @(posedge \clk ) begin
        \s2_write  <= \write ;
    end
    assign _e_97 = 7;
    assign _e_95 = \s1_ui_in  >> _e_97;
    assign _e_98 = 1;
    assign _e_94 = _e_95 & _e_98;
    assign _e_99 = 1;
    assign _e_93 = _e_94 == _e_99;
    assign _e_100 = \s1_ui_in [6:0];
    assign _e_104 = {_e_93, _e_100};
    assign \mode  = _e_104[7];
    assign \addr1  = _e_104[6:0];
    assign _e_110 = 7;
    assign _e_108 = \s1_uio_in  >> _e_110;
    assign _e_111 = 1;
    assign _e_107 = _e_108 & _e_111;
    assign _e_112 = 1;
    assign _e_106 = _e_107 == _e_112;
    assign _e_113 = \s1_uio_in [6:0];
    assign _e_117 = {_e_106, _e_113};
    assign \commit_raw  = _e_117[7];
    assign \addr2  = _e_117[6:0];
    always @(posedge \clk ) begin
        \commit_old  <= \commit_raw ;
    end
    assign _e_123 = !\commit_old ;
    assign \commit  = \commit_raw  && _e_123;
    assign _e_129 = \mode  && \commit ;
    assign _e_134 = {\addr2 , \wb };
    assign _e_133 = {1'd0, _e_134};
    assign _e_138 = {1'd1, 8'bX};
    assign \write  = _e_129 ? _e_133 : _e_138;
    (* src = "src/main.spade:79,23" *)
    \tto4_tmng::main::regfile  regfile_0(\clk , \addr1 , \write , \opb );
    assign _e_148 = !\s2_mode ;
    assign _e_147 = _e_148 ? \opb  : \opa ;
    always @(posedge \clk ) begin
        \opa  <= _e_147;
    end
    assign _e_157 = \opa  && \opb ;
    assign \wb  = !_e_157;
    assign _e_165 = 1;
    assign _e_167 = 0;
    assign _e_162 = \wb  ? _e_165 : _e_167;
    assign \uo_out_mut  = _e_162;
    assign _e_169 = 0;
    assign \uio_out_mut  = _e_169;
    assign _e_171 = 0;
    assign \uio_oe_mut  = _e_171;
endmodule

module tt_um_thezoq2_tmng (
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe,
        input clk,
        input ena,
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
    (* src = "src/main.spade:113,5" *)
    (* src = "src/main.spade:113,5" *)
    \tto4_tmng::main::top_impl  top_impl_0(\clk , \ui_in , \uo_out_mut , \uio_in , \uio_out_mut , \uio_oe_mut , \ena , \rst_n );
endmodule

module \tto4_tmng::main::top_harness  (
        input[7:0] ui_in,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe,
        input clk,
        input ena,
        input rst_n,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::main::top_harness" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::main::top_harness );
        end
    end
    `endif
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    logic[7:0] \uo_out_mut ;
    (* src = "src/main.spade:131,13" *)
    logic[7:0] _e_195;
    
    (* src = "src/main.spade:131,13" *)
    tt_um_thezoq2_tmng tt_um_thezoq2_tmng_0(\ui_in , \uo_out_mut , \uio_in , \uio_out_mut , \uio_oe_mut , \clk , \ena , \rst_n );
    assign _e_195 = \uo_out_mut ;
    assign output__ = _e_195;
endmodule