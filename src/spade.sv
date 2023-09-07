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
    logic _e_367;
    logic _e_369;
    logic _e_370;
    logic _e_371;
    logic _e_372;
    logic _e_65;
    (* src = "src/main.spade:33,33" *)
    logic[8:0] _e_64;
    logic _e_374;
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
    logic[6:0] _e_376;
    logic _e_375;
    logic _e_86;
    logic[6:0] _e_378;
    logic _e_377;
    logic _e_88;
    logic _e_379;
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
    assign _e_367 = \write [8] == 1'd0;
    assign _e_369 = 1;
    assign _e_370 = 1;
    assign _e_371 = _e_369 && _e_370;
    assign _e_372 = _e_367 && _e_371;
    assign _e_65 = 1;
    assign _e_64 = {_e_65, addr_n1, \b };
    assign _e_374 = \write [8] == 1'd1;
    assign _e_70 = 0;
    assign _e_71 = 0;
    assign _e_72 = 0;
    assign _e_69 = {_e_70, _e_71, _e_72};
    always_comb begin
        priority casez ({_e_372, _e_374})
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
    assign _e_376 = 0;
    assign _e_375 = \s1_addr  == _e_376;
    assign _e_86 = 0;
    assign _e_378 = 1;
    assign _e_377 = \s1_addr  == _e_378;
    assign _e_88 = 1;
    assign _e_379 = 1;
    always_comb begin
        priority casez ({_e_375, _e_377, _e_379})
            3'b1??: _e_83 = _e_86;
            3'b01?: _e_83 = _e_88;
            3'b001: _e_83 = \s1_out ;
            3'b?: _e_83 = 'x;
        endcase
    end
    assign output__ = _e_83;
endmodule

module \tto4_tmng::main::decode_extra_control  (
        input clk_i,
        input mode_i,
        input[7:0] uio_in_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::main::decode_extra_control" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::main::decode_extra_control );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \mode ;
    assign \mode  = mode_i;
    logic[7:0] \uio_in ;
    assign \uio_in  = uio_in_i;
    logic[7:0] _e_102;
    (* src = "src/main.spade:55,63" *)
    logic[7:0] _e_100;
    logic[7:0] _e_103;
    (* src = "src/main.spade:55,63" *)
    logic _e_99;
    (* src = "src/main.spade:55,31" *)
    logic _e_94;
    (* src = "src/main.spade:55,14" *)
    reg \push_to_output ;
    (* src = "src/main.spade:57,5" *)
    logic _e_104;
    assign _e_102 = 1;
    assign _e_100 = \uio_in  & _e_102;
    assign _e_103 = 1;
    assign _e_99 = _e_100 == _e_103;
    assign _e_94 = \mode  ? \push_to_output  : _e_99;
    always @(posedge \clk ) begin
        \push_to_output  <= _e_94;
    end
    assign _e_104 = {\push_to_output };
    assign output__ = _e_104;
endmodule

module \tto4_tmng::main::output_fifo  (
        input clk_i,
        input[1:0] push_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::main::output_fifo" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::main::output_fifo );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic[1:0] \push ;
    assign \push  = push_i;
    logic \next ;
    logic _e_381;
    logic _e_382;
    logic _e_383;
    logic[7:0] _e_116;
    (* src = "src/main.spade:64,23" *)
    logic[7:0] _e_114;
    logic[7:0] _e_120;
    logic[7:0] _e_122;
    (* src = "src/main.spade:64,38" *)
    logic[7:0] _e_117;
    (* src = "src/main.spade:64,23" *)
    logic[7:0] _e_113;
    logic _e_385;
    (* src = "src/main.spade:63,24" *)
    logic[7:0] _e_109;
    (* src = "src/main.spade:63,14" *)
    reg[7:0] \content ;
    assign \next  = \push [0:0];
    assign _e_381 = \push [1] == 1'd0;
    assign _e_382 = 1;
    assign _e_383 = _e_381 && _e_382;
    assign _e_116 = 1;
    assign _e_114 = \content  << _e_116;
    assign _e_120 = 1;
    assign _e_122 = 0;
    assign _e_117 = \next  ? _e_120 : _e_122;
    assign _e_113 = _e_114 | _e_117;
    assign _e_385 = \push [1] == 1'd1;
    always_comb begin
        priority casez ({_e_383, _e_385})
            2'b1?: _e_109 = _e_113;
            2'b01: _e_109 = \content ;
            2'b?: _e_109 = 'x;
        endcase
    end
    always @(posedge \clk ) begin
        \content  <= _e_109;
    end
    assign output__ = \content ;
endmodule

module \tto4_tmng::main::top_impl  (
        input clk_i,
        input[7:0] ui_in_i,
        input[7:0] uio_in_i,
        input ena_i,
        input rst_n_i,
        output[8:0] output__
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
    logic[7:0] \uio_in ;
    assign \uio_in  = uio_in_i;
    logic \ena ;
    assign \ena  = ena_i;
    logic \rst_n ;
    assign \rst_n  = rst_n_i;
    (* src = "src/main.spade:85,5" *)
    reg[7:0] \s1_ui_in ;
    (* src = "src/main.spade:85,5" *)
    reg[7:0] \s1_uio_in ;
    (* src = "src/main.spade:85,5" *)
    reg \s1_ena ;
    (* src = "src/main.spade:85,5" *)
    reg \s1_rst_n ;
    (* src = "src/main.spade:103,5" *)
    reg[7:0] \s2_ui_in ;
    (* src = "src/main.spade:103,5" *)
    reg[7:0] \s2_uio_in ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_ena ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_rst_n ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_mode ;
    (* src = "src/main.spade:103,5" *)
    reg[6:0] \s2_addr1 ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_commit_raw ;
    (* src = "src/main.spade:103,5" *)
    reg[6:0] \s2_addr2 ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_extra_control ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_commit_old ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_commit ;
    (* src = "src/main.spade:103,5" *)
    reg \s2_wb ;
    (* src = "src/main.spade:103,5" *)
    reg[8:0] \s2_write ;
    logic[7:0] _e_132;
    (* src = "src/main.spade:86,32" *)
    logic[7:0] _e_130;
    logic[7:0] _e_133;
    (* src = "src/main.spade:86,32" *)
    logic[7:0] _e_129;
    logic[7:0] _e_134;
    (* src = "src/main.spade:86,32" *)
    logic _e_128;
    (* src = "src/main.spade:86,55" *)
    logic[6:0] _e_135;
    (* src = "src/main.spade:86,32" *)
    logic[7:0] _e_139;
    logic \mode ;
    logic[6:0] \addr1 ;
    logic[7:0] _e_145;
    (* src = "src/main.spade:87,38" *)
    logic[7:0] _e_143;
    logic[7:0] _e_146;
    (* src = "src/main.spade:87,38" *)
    logic[7:0] _e_142;
    logic[7:0] _e_147;
    (* src = "src/main.spade:87,38" *)
    logic _e_141;
    (* src = "src/main.spade:87,62" *)
    logic[6:0] _e_148;
    (* src = "src/main.spade:87,38" *)
    logic[7:0] _e_152;
    logic \commit_raw ;
    logic[6:0] \addr2 ;
    (* src = "src/main.spade:89,29" *)
    logic \extra_control ;
    (* src = "src/main.spade:91,18" *)
    reg \commit_old ;
    (* src = "src/main.spade:92,36" *)
    logic _e_163;
    (* src = "src/main.spade:92,22" *)
    logic \commit ;
    (* src = "src/main.spade:94,13" *)
    logic \wb ;
    (* src = "src/main.spade:95,24" *)
    logic _e_169;
    (* src = "src/main.spade:96,19" *)
    logic[7:0] _e_174;
    (* src = "src/main.spade:96,13" *)
    logic[8:0] _e_173;
    (* src = "src/main.spade:99,13" *)
    logic[8:0] _e_178;
    (* src = "src/main.spade:95,21" *)
    logic[8:0] \write ;
    (* src = "src/main.spade:102,23" *)
    logic \reg_out ;
    (* src = "src/main.spade:106,27" *)
    logic _e_188;
    (* src = "src/main.spade:106,24" *)
    logic _e_187;
    (* src = "src/main.spade:106,18" *)
    reg \opa ;
    (* src = "src/main.spade:107,13" *)
    logic \opb ;
    (* src = "src/main.spade:109,26" *)
    logic _e_197;
    (* src = "src/main.spade:109,24" *)
    logic \nand_out ;
    (* src = "src/main.spade:113,16" *)
    logic _e_205;
    (* src = "src/main.spade:113,16" *)
    logic _e_204;
    (* src = "src/main.spade:113,56" *)
    logic[1:0] _e_209;
    (* src = "src/main.spade:113,78" *)
    logic[1:0] _e_212;
    (* src = "src/main.spade:113,13" *)
    logic[1:0] _e_203;
    (* src = "src/main.spade:111,27" *)
    logic[7:0] \output_bits ;
    (* src = "src/main.spade:116,9" *)
    logic[8:0] _e_214;
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
        \s2_extra_control  <= \extra_control ;
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
    assign _e_132 = 7;
    assign _e_130 = \s1_ui_in  >> _e_132;
    assign _e_133 = 1;
    assign _e_129 = _e_130 & _e_133;
    assign _e_134 = 1;
    assign _e_128 = _e_129 == _e_134;
    assign _e_135 = \s1_ui_in [6:0];
    assign _e_139 = {_e_128, _e_135};
    assign \mode  = _e_139[7];
    assign \addr1  = _e_139[6:0];
    assign _e_145 = 7;
    assign _e_143 = \s1_uio_in  >> _e_145;
    assign _e_146 = 1;
    assign _e_142 = _e_143 & _e_146;
    assign _e_147 = 1;
    assign _e_141 = _e_142 == _e_147;
    assign _e_148 = \s1_uio_in [6:0];
    assign _e_152 = {_e_141, _e_148};
    assign \commit_raw  = _e_152[7];
    assign \addr2  = _e_152[6:0];
    (* src = "src/main.spade:89,29" *)
    \tto4_tmng::main::decode_extra_control  decode_extra_control_0(\clk , \mode , \s1_uio_in , \extra_control );
    always @(posedge \clk ) begin
        \commit_old  <= \commit_raw ;
    end
    assign _e_163 = !\commit_old ;
    assign \commit  = \commit_raw  && _e_163;
    assign \wb  = \nand_out ;
    assign _e_169 = \mode  && \commit ;
    assign _e_174 = {\addr2 , \wb };
    assign _e_173 = {1'd0, _e_174};
    assign _e_178 = {1'd1, 8'bX};
    assign \write  = _e_169 ? _e_173 : _e_178;
    (* src = "src/main.spade:102,23" *)
    \tto4_tmng::main::regfile  regfile_0(\clk , \addr1 , \write , \reg_out );
    assign _e_188 = !\s2_mode ;
    assign _e_187 = _e_188 ? \reg_out  : \opa ;
    always @(posedge \clk ) begin
        \opa  <= _e_187;
    end
    assign \opb  = \reg_out ;
    assign _e_197 = \opa  && \opb ;
    assign \nand_out  = !_e_197;
    assign _e_205 = \s2_extra_control ;
    assign _e_204 = _e_205 && \s2_commit ;
    assign _e_209 = {1'd0, \nand_out };
    assign _e_212 = {1'd1, 1'bX};
    assign _e_203 = _e_204 ? _e_209 : _e_212;
    (* src = "src/main.spade:111,27" *)
    \tto4_tmng::main::output_fifo  output_fifo_0(\clk , _e_203, \output_bits );
    assign _e_214 = {\output_bits , \nand_out };
    assign output__ = _e_214;
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
    logic[7:0] _e_219;
    logic[7:0] _e_221;
    (* src = "src/main.spade:146,15" *)
    logic[8:0] \out ;
    (* src = "src/main.spade:148,18" *)
    logic[7:0] _e_230;
    assign _e_219 = 0;
    assign \uio_out_mut  = _e_219;
    assign _e_221 = 0;
    assign \uio_oe_mut  = _e_221;
    (* src = "src/main.spade:146,15" *)
    \tto4_tmng::main::top_impl  top_impl_0(\clk , \ui_in , \uio_in , \ena , \rst_n , \out );
    assign _e_230 = \out [8:1];
    assign \uo_out_mut  = _e_230;
endmodule

module \tto4_tmng::main::impl_harness  (
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
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::main::impl_harness" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::main::impl_harness );
        end
    end
    `endif
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    logic[7:0] \uo_out_mut ;
    (* src = "src/main.spade:166,13" *)
    logic[7:0] _e_245;
    
    (* src = "src/main.spade:166,13" *)
    tt_um_thezoq2_tmng tt_um_thezoq2_tmng_0(\ui_in , \uo_out_mut , \uio_in , \uio_out_mut , \uio_oe_mut , \clk , \ena , \rst_n );
    assign _e_245 = \uo_out_mut ;
    assign output__ = _e_245;
endmodule

module top_fpgatest (
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        input clk,
        output[7:0] ui_in_drive,
        output[7:0] uio_in_drive
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "top_fpgatest" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, top_fpgatest);
        end
    end
    `endif
    logic[7:0] \uo_out_mut ;
    assign uo_out = \uo_out_mut ;
    logic[7:0] \ui_in_drive_mut ;
    assign ui_in_drive = \ui_in_drive_mut ;
    logic[7:0] \uio_in_drive_mut ;
    assign uio_in_drive = \uio_in_drive_mut ;
    logic[9:0] _e_250;
    logic[9:0] _e_254;
    (* src = "src/fpgatest.spade:84,50" *)
    logic _e_252;
    logic[9:0] _e_259;
    (* src = "src/fpgatest.spade:84,72" *)
    logic[10:0] _e_257;
    (* src = "src/fpgatest.spade:84,66" *)
    logic[9:0] _e_256;
    (* src = "src/fpgatest.spade:84,47" *)
    logic[9:0] _e_251;
    (* src = "src/fpgatest.spade:84,14" *)
    reg[9:0] \rst_count ;
    logic[9:0] _e_264;
    (* src = "src/fpgatest.spade:85,15" *)
    logic \rst ;
    logic[7:0] \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    logic _e_277;
    (* src = "src/fpgatest.spade:101,16" *)
    logic _e_278;
    (* src = "src/fpgatest.spade:93,13" *)
    (* src = "src/fpgatest.spade:104,22" *)
    logic[15:0] \driver_out ;
    (* src = "src/fpgatest.spade:105,23" *)
    logic[7:0] _e_286;
    (* src = "src/fpgatest.spade:106,24" *)
    logic[7:0] _e_289;
    assign _e_250 = 5;
    assign _e_254 = 0;
    assign _e_252 = \rst_count  != _e_254;
    assign _e_259 = 1;
    assign _e_257 = $signed(\rst_count ) - $signed(_e_259);
    assign _e_256 = _e_257[9:0];
    assign _e_251 = _e_252 ? _e_256 : \rst_count ;
    initial begin
        \rst_count  = 'b0000000101;
    end
    always @(posedge \clk ) begin
        \rst_count  <= _e_251;
    end
    assign _e_264 = 0;
    assign \rst  = \rst_count  != _e_264;
    
    
    assign _e_277 = 1;
    assign _e_278 = !\rst ;
    (* src = "src/fpgatest.spade:93,13" *)
    tt_um_thezoq2_tmng tt_um_thezoq2_tmng_0(\ui_in , \uo_out_mut , \uio_in , \uio_out_mut , \uio_oe_mut , \clk , _e_277, _e_278);
    (* src = "src/fpgatest.spade:104,22" *)
    \tto4_tmng::generated_driver::simple_test_driver  simple_test_driver_0(\clk , \rst , \driver_out );
    assign _e_286 = \driver_out [15:8];
    assign \ui_in_drive_mut  = _e_286;
    assign _e_289 = \driver_out [7:0];
    assign \uio_in_drive_mut  = _e_289;
endmodule

module \tto4_tmng::generated_driver::simple_test_driver  (
        input clk_i,
        input rst_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::generated_driver::simple_test_driver" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::generated_driver::simple_test_driver );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    (* src = "src/generated_driver.spade:36,5" *)
    reg \s1_rst ;
    (* src = "src/generated_driver.spade:36,5" *)
    reg[47:0] \s1_state ;
    (* src = "src/generated_driver.spade:36,5" *)
    reg[14:0] \s1_read_idx ;
    (* src = "src/generated_driver.spade:36,5" *)
    reg[31:0] \s1_commands ;
    (* src = "src/generated_driver.spade:36,5" *)
    reg[7:0] \s1_a ;
    (* src = "src/generated_driver.spade:36,5" *)
    reg[7:0] \s1_b ;
    logic[31:0] _e_296;
    (* src = "src/generated_driver.spade:13,35" *)
    logic[47:0] _e_295;
    logic[31:0] _e_299;
    logic _e_387;
    logic[31:0] _e_389;
    logic _e_388;
    logic _e_390;
    logic[14:0] _e_302;
    logic[31:0] _e_303;
    (* src = "src/generated_driver.spade:14,41" *)
    logic[47:0] _e_301;
    logic[31:0] \duration ;
    logic _e_392;
    logic _e_393;
    logic _e_394;
    logic[31:0] _e_310;
    (* src = "src/generated_driver.spade:15,56" *)
    logic[32:0] _e_308;
    (* src = "src/generated_driver.spade:15,50" *)
    logic[31:0] _e_307;
    (* src = "src/generated_driver.spade:15,38" *)
    logic[47:0] _e_306;
    logic[14:0] _e_311;
    logic[31:0] _e_312;
    logic _e_396;
    logic[14:0] _e_398;
    logic _e_397;
    logic[31:0] _e_400;
    logic _e_399;
    logic _e_401;
    logic _e_402;
    logic[31:0] _e_316;
    (* src = "src/generated_driver.spade:17,17" *)
    logic[47:0] _e_315;
    logic[14:0] \idx ;
    logic[31:0] _e_318;
    logic _e_404;
    logic _e_405;
    logic[31:0] _e_407;
    logic _e_406;
    logic _e_408;
    logic _e_409;
    logic[14:0] _e_325;
    (* src = "src/generated_driver.spade:20,34" *)
    logic[15:0] _e_323;
    (* src = "src/generated_driver.spade:20,28" *)
    logic[14:0] _e_322;
    logic[31:0] _e_326;
    (* src = "src/generated_driver.spade:20,17" *)
    logic[47:0] _e_321;
    logic[14:0] idx_n1;
    logic[31:0] duration_n1;
    logic _e_411;
    logic _e_412;
    logic _e_413;
    logic _e_414;
    logic _e_415;
    (* src = "src/generated_driver.spade:23,28" *)
    logic[14:0] _e_332;
    logic[31:0] _e_337;
    (* src = "src/generated_driver.spade:23,46" *)
    logic[32:0] _e_335;
    (* src = "src/generated_driver.spade:23,40" *)
    logic[31:0] _e_334;
    (* src = "src/generated_driver.spade:23,17" *)
    logic[47:0] _e_331;
    (* src = "src/generated_driver.spade:13,53" *)
    logic[47:0] _e_297;
    (* src = "src/generated_driver.spade:13,18" *)
    reg[47:0] \state ;
    logic[14:0] idx_n2;
    logic[31:0] \_ ;
    logic _e_417;
    logic _e_418;
    logic _e_419;
    logic _e_420;
    logic _e_421;
    logic[31:0] __n1;
    logic _e_423;
    logic _e_424;
    logic _e_425;
    logic[14:0] _e_346;
    (* src = "src/generated_driver.spade:27,24" *)
    logic[14:0] \read_idx ;
    logic[7:0] _e_350;
    logic[7:0] _e_351;
    (* src = "src/generated_driver.spade:32,26" *)
    logic[15:0] _e_349;
    logic[7:0] _e_353;
    logic[7:0] _e_354;
    (* src = "src/generated_driver.spade:33,2" *)
    logic[15:0] _e_352;
    (* src = "src/generated_driver.spade:32,24" *)
    logic[31:0] \commands ;
    (* src = "src/generated_driver.spade:35,31" *)
    logic _e_358;
    (* src = "src/generated_driver.spade:35,22" *)
    logic[15:0] _e_362;
    logic[7:0] \a ;
    logic[7:0] \b ;
    (* src = "src/generated_driver.spade:37,9" *)
    logic[15:0] _e_363;
    always @(posedge \clk ) begin
        \s1_rst  <= \rst ;
    end
    always @(posedge \clk ) begin
        \s1_state  <= \state ;
    end
    always @(posedge \clk ) begin
        \s1_read_idx  <= \read_idx ;
    end
    always @(posedge \clk ) begin
        \s1_commands  <= \commands ;
    end
    always @(posedge \clk ) begin
        \s1_a  <= \a ;
    end
    always @(posedge \clk ) begin
        \s1_b  <= \b ;
    end
    assign _e_296 = 32'd0;
    assign _e_295 = {1'd0, _e_296, 15'bX};
    assign _e_299 = \state [46:15];
    assign _e_387 = \state [47] == 1'd0;
    assign _e_389 = 32'd100000000;
    assign _e_388 = _e_299 == _e_389;
    assign _e_390 = _e_387 && _e_388;
    assign _e_302 = 0;
    assign _e_303 = 32'd0;
    assign _e_301 = {1'd1, _e_302, _e_303};
    assign \duration  = \state [46:15];
    assign _e_392 = \state [47] == 1'd0;
    assign _e_393 = 1;
    assign _e_394 = _e_392 && _e_393;
    assign _e_310 = 32'd1;
    assign _e_308 = $signed(\duration ) + $signed(_e_310);
    assign _e_307 = _e_308[31:0];
    assign _e_306 = {1'd0, _e_307, 15'bX};
    assign _e_311 = \state [46:32];
    assign _e_312 = \state [31:0];
    assign _e_396 = \state [47] == 1'd1;
    assign _e_398 = 1;
    assign _e_397 = _e_311 == _e_398;
    assign _e_400 = 32'd9;
    assign _e_399 = _e_312 == _e_400;
    assign _e_401 = _e_396 && _e_397;
    assign _e_402 = _e_401 && _e_399;
    assign _e_316 = 32'd0;
    assign _e_315 = {1'd0, _e_316, 15'bX};
    assign \idx  = \state [46:32];
    assign _e_318 = \state [31:0];
    assign _e_404 = \state [47] == 1'd1;
    assign _e_405 = 1;
    assign _e_407 = 32'd9;
    assign _e_406 = _e_318 == _e_407;
    assign _e_408 = _e_404 && _e_405;
    assign _e_409 = _e_408 && _e_406;
    assign _e_325 = 1;
    assign _e_323 = $signed(\idx ) + $signed(_e_325);
    assign _e_322 = _e_323[14:0];
    assign _e_326 = 32'd0;
    assign _e_321 = {1'd1, _e_322, _e_326};
    assign idx_n1 = \state [46:32];
    assign duration_n1 = \state [31:0];
    assign _e_411 = \state [47] == 1'd1;
    assign _e_412 = 1;
    assign _e_413 = 1;
    assign _e_414 = _e_411 && _e_412;
    assign _e_415 = _e_414 && _e_413;
    assign _e_332 = idx_n1[14:0];
    assign _e_337 = 32'd1;
    assign _e_335 = $signed(duration_n1) + $signed(_e_337);
    assign _e_334 = _e_335[31:0];
    assign _e_331 = {1'd1, _e_332, _e_334};
    always_comb begin
        priority casez ({_e_390, _e_394, _e_402, _e_409, _e_415})
            5'b1????: _e_297 = _e_301;
            5'b01???: _e_297 = _e_306;
            5'b001??: _e_297 = _e_315;
            5'b0001?: _e_297 = _e_321;
            5'b00001: _e_297 = _e_331;
            5'b?: _e_297 = 'x;
        endcase
    end
    always @(posedge \clk , posedge \rst ) begin
        if (\rst ) begin
            \state  <= _e_295;
        end
        else begin
            \state  <= _e_297;
        end
    end
    assign idx_n2 = \state [46:32];
    assign \_  = \state [31:0];
    assign _e_417 = \state [47] == 1'd1;
    assign _e_418 = 1;
    assign _e_419 = 1;
    assign _e_420 = _e_417 && _e_418;
    assign _e_421 = _e_420 && _e_419;
    assign __n1 = \state [46:15];
    assign _e_423 = \state [47] == 1'd0;
    assign _e_424 = 1;
    assign _e_425 = _e_423 && _e_424;
    assign _e_346 = 0;
    always_comb begin
        priority casez ({_e_421, _e_425})
            2'b1?: \read_idx  = idx_n2;
            2'b01: \read_idx  = _e_346;
            2'b?: \read_idx  = 'x;
        endcase
    end
    assign _e_350 = 2;
    assign _e_351 = 1;
    assign _e_349 = {_e_350, _e_351};
    assign _e_353 = 130;
    assign _e_354 = 130;
    assign _e_352 = {_e_353, _e_354};
    assign \commands  = {_e_352, _e_349};
    assign _e_358 = \read_idx [0:0];
    assign _e_362 = \commands [_e_358 * 16+:16];
    assign \a  = _e_362[15:8];
    assign \b  = _e_362[7:0];
    assign _e_363 = {\s1_a , \s1_b };
    assign output__ = _e_363;
endmodule