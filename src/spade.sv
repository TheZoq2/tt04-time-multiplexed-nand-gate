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
    (* src = "src/main.spade:41,5" *)
    reg[6:0] \s1_addr ;
    (* src = "src/main.spade:41,5" *)
    reg[8:0] \s1_write ;
    (* src = "src/main.spade:41,5" *)
    reg[8:0] \s1_write_raw ;
    (* src = "src/main.spade:41,5" *)
    reg \s1_out ;
    logic[7:0] _e_62;
    logic[6:0] addr_n1;
    logic \b ;
    logic _e_182;
    logic _e_184;
    logic _e_185;
    logic _e_186;
    logic _e_187;
    logic _e_65;
    (* src = "src/main.spade:34,33" *)
    logic[8:0] _e_64;
    logic _e_189;
    logic _e_70;
    logic[6:0] _e_71;
    logic _e_72;
    (* src = "src/main.spade:35,22" *)
    logic[8:0] _e_69;
    (* src = "src/main.spade:33,25" *)
    logic[8:0] \write_raw ;
    (* src = "src/main.spade:38,63" *)
    logic[8:0] _e_76;
    (* src = "src/main.spade:38,38" *)
    logic[127:0] \mem ;
    (* src = "src/main.spade:40,19" *)
    logic \out ;
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
    assign _e_182 = \write [8] == 1'd0;
    assign _e_184 = 1;
    assign _e_185 = 1;
    assign _e_186 = _e_184 && _e_185;
    assign _e_187 = _e_182 && _e_186;
    assign _e_65 = 1;
    assign _e_64 = {_e_65, addr_n1, \b };
    assign _e_189 = \write [8] == 1'd1;
    assign _e_70 = 0;
    assign _e_71 = 0;
    assign _e_72 = 0;
    assign _e_69 = {_e_70, _e_71, _e_72};
    always_comb begin
        priority casez ({_e_187, _e_189})
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
    assign output__ = \s1_out ;
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
    (* src = "src/main.spade:61,5" *)
    reg[7:0] \s1_ui_in ;
    (* src = "src/main.spade:61,5" *)
    reg[7:0] \s1_uio_in ;
    (* src = "src/main.spade:61,5" *)
    reg \s1_ena ;
    (* src = "src/main.spade:61,5" *)
    reg \s1_rst_n ;
    (* src = "src/main.spade:82,5" *)
    reg[7:0] \s2_ui_in ;
    (* src = "src/main.spade:82,5" *)
    reg[7:0] \s2_uio_in ;
    (* src = "src/main.spade:82,5" *)
    reg \s2_ena ;
    (* src = "src/main.spade:82,5" *)
    reg \s2_rst_n ;
    (* src = "src/main.spade:82,5" *)
    reg \s2_mode ;
    (* src = "src/main.spade:82,5" *)
    reg[6:0] \s2_addr1 ;
    (* src = "src/main.spade:82,5" *)
    reg \s2_commit_raw ;
    (* src = "src/main.spade:82,5" *)
    reg[6:0] \s2_addr2 ;
    (* src = "src/main.spade:82,5" *)
    reg \s2_commit_old ;
    (* src = "src/main.spade:82,5" *)
    reg \s2_commit ;
    (* src = "src/main.spade:82,5" *)
    reg[6:0] \s2_read_addr ;
    (* src = "src/main.spade:82,5" *)
    reg \s2_wb ;
    (* src = "src/main.spade:82,5" *)
    reg[8:0] \s2_write ;
    logic[7:0] _e_90;
    (* src = "src/main.spade:62,32" *)
    logic[7:0] _e_88;
    logic[7:0] _e_91;
    (* src = "src/main.spade:62,32" *)
    logic[7:0] _e_87;
    logic[7:0] _e_92;
    (* src = "src/main.spade:62,32" *)
    logic _e_86;
    (* src = "src/main.spade:62,55" *)
    logic[6:0] _e_93;
    (* src = "src/main.spade:62,32" *)
    logic[7:0] _e_97;
    logic \mode ;
    logic[6:0] \addr1 ;
    logic[7:0] _e_103;
    (* src = "src/main.spade:63,38" *)
    logic[7:0] _e_101;
    logic[7:0] _e_104;
    (* src = "src/main.spade:63,38" *)
    logic[7:0] _e_100;
    logic[7:0] _e_105;
    (* src = "src/main.spade:63,38" *)
    logic _e_99;
    (* src = "src/main.spade:63,62" *)
    logic[6:0] _e_106;
    (* src = "src/main.spade:63,38" *)
    logic[7:0] _e_110;
    logic \commit_raw ;
    logic[6:0] \addr2 ;
    (* src = "src/main.spade:65,18" *)
    reg \commit_old ;
    (* src = "src/main.spade:66,36" *)
    logic _e_116;
    (* src = "src/main.spade:66,22" *)
    logic \commit ;
    logic _e_190;
    (* src = "src/main.spade:68,25" *)
    logic[6:0] \read_addr ;
    (* src = "src/main.spade:74,24" *)
    logic _e_129;
    (* src = "src/main.spade:75,19" *)
    logic[7:0] _e_134;
    (* src = "src/main.spade:75,13" *)
    logic[8:0] _e_133;
    (* src = "src/main.spade:78,13" *)
    logic[8:0] _e_138;
    (* src = "src/main.spade:74,21" *)
    logic[8:0] \write ;
    (* src = "src/main.spade:81,23" *)
    logic \opb ;
    (* src = "src/main.spade:85,24" *)
    logic _e_147;
    (* src = "src/main.spade:85,18" *)
    reg \opa ;
    (* src = "src/main.spade:88,26" *)
    logic _e_156;
    (* src = "src/main.spade:88,24" *)
    logic \wb ;
    logic[7:0] _e_164;
    logic[7:0] _e_166;
    (* src = "src/main.spade:90,22" *)
    logic[7:0] _e_161;
    logic[7:0] _e_168;
    logic[7:0] _e_170;
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
        \s2_read_addr  <= \read_addr ;
    end
    always @(posedge \clk ) begin
        \s2_wb  <= \wb ;
    end
    always @(posedge \clk ) begin
        \s2_write  <= \write ;
    end
    assign _e_90 = 7;
    assign _e_88 = \s1_ui_in  >> _e_90;
    assign _e_91 = 1;
    assign _e_87 = _e_88 & _e_91;
    assign _e_92 = 1;
    assign _e_86 = _e_87 == _e_92;
    assign _e_93 = \s1_ui_in [6:0];
    assign _e_97 = {_e_86, _e_93};
    assign \mode  = _e_97[7];
    assign \addr1  = _e_97[6:0];
    assign _e_103 = 7;
    assign _e_101 = \s1_uio_in  >> _e_103;
    assign _e_104 = 1;
    assign _e_100 = _e_101 & _e_104;
    assign _e_105 = 1;
    assign _e_99 = _e_100 == _e_105;
    assign _e_106 = \s1_uio_in [6:0];
    assign _e_110 = {_e_99, _e_106};
    assign \commit_raw  = _e_110[7];
    assign \addr2  = _e_110[6:0];
    always @(posedge \clk ) begin
        \commit_old  <= \commit_raw ;
    end
    assign _e_116 = !\commit_old ;
    assign \commit  = \commit_raw  && _e_116;
    assign _e_190 = !\mode ;
    always_comb begin
        priority casez ({_e_190, \mode })
            2'b1?: \read_addr  = \addr1 ;
            2'b01: \read_addr  = \addr2 ;
            2'b?: \read_addr  = 'x;
        endcase
    end
    assign _e_129 = \mode  && \commit ;
    assign _e_134 = {\addr2 , \wb };
    assign _e_133 = {1'd0, _e_134};
    assign _e_138 = {1'd1, 8'bX};
    assign \write  = _e_129 ? _e_133 : _e_138;
    (* src = "src/main.spade:81,23" *)
    \tto4_tmng::main::regfile  regfile_0(\clk , \read_addr , \write , \opb );
    assign _e_147 = \s2_mode  ? \opb  : \opa ;
    always @(posedge \clk ) begin
        \opa  <= _e_147;
    end
    assign _e_156 = \opa  && \opb ;
    assign \wb  = !_e_156;
    assign _e_164 = 1;
    assign _e_166 = 0;
    assign _e_161 = \wb  ? _e_164 : _e_166;
    assign \uo_out_mut  = _e_161;
    assign _e_168 = 0;
    assign \uio_out_mut  = _e_168;
    assign _e_170 = 0;
    assign \uio_oe_mut  = _e_170;
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
    (* src = "src/main.spade:112,5" *)
    (* src = "src/main.spade:112,5" *)
    \tto4_tmng::main::top_impl  top_impl_0(\clk , \ui_in , \uo_out_mut , \uio_in , \uio_out_mut , \uio_oe_mut , \ena , \rst_n );
endmodule