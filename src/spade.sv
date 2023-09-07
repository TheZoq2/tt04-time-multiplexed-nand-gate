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
    logic _e_404;
    logic _e_406;
    logic _e_407;
    logic _e_408;
    logic _e_409;
    logic _e_65;
    (* src = "src/main.spade:33,33" *)
    logic[8:0] _e_64;
    logic _e_411;
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
    logic[6:0] _e_413;
    logic _e_412;
    logic _e_86;
    logic[6:0] _e_415;
    logic _e_414;
    logic _e_88;
    logic _e_416;
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
    assign _e_404 = \write [8] == 1'd0;
    assign _e_406 = 1;
    assign _e_407 = 1;
    assign _e_408 = _e_406 && _e_407;
    assign _e_409 = _e_404 && _e_408;
    assign _e_65 = 1;
    assign _e_64 = {_e_65, addr_n1, \b };
    assign _e_411 = \write [8] == 1'd1;
    assign _e_70 = 0;
    assign _e_71 = 0;
    assign _e_72 = 0;
    assign _e_69 = {_e_70, _e_71, _e_72};
    always_comb begin
        priority casez ({_e_409, _e_411})
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
    assign _e_413 = 0;
    assign _e_412 = \s1_addr  == _e_413;
    assign _e_86 = 0;
    assign _e_415 = 1;
    assign _e_414 = \s1_addr  == _e_415;
    assign _e_88 = 1;
    assign _e_416 = 1;
    always_comb begin
        priority casez ({_e_412, _e_414, _e_416})
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
    logic _e_418;
    logic _e_419;
    logic _e_420;
    logic[7:0] _e_116;
    (* src = "src/main.spade:64,23" *)
    logic[7:0] _e_114;
    logic[7:0] _e_120;
    logic[7:0] _e_122;
    (* src = "src/main.spade:64,38" *)
    logic[7:0] _e_117;
    (* src = "src/main.spade:64,23" *)
    logic[7:0] _e_113;
    logic _e_422;
    (* src = "src/main.spade:63,24" *)
    logic[7:0] _e_109;
    (* src = "src/main.spade:63,14" *)
    reg[7:0] \content ;
    assign \next  = \push [0:0];
    assign _e_418 = \push [1] == 1'd0;
    assign _e_419 = 1;
    assign _e_420 = _e_418 && _e_419;
    assign _e_116 = 1;
    assign _e_114 = \content  << _e_116;
    assign _e_120 = 1;
    assign _e_122 = 0;
    assign _e_117 = \next  ? _e_120 : _e_122;
    assign _e_113 = _e_114 | _e_117;
    assign _e_422 = \push [1] == 1'd1;
    always_comb begin
        priority casez ({_e_420, _e_422})
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

module \tto4_tmng::fpgatest::simple_test_driver  (
        input clk_i,
        input rst_i,
        output[15:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "tto4_tmng::fpgatest::simple_test_driver" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, \tto4_tmng::fpgatest::simple_test_driver );
        end
    end
    `endif
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[31:0] _e_251;
    logic[31:0] _e_255;
    (* src = "src/fpgatest.spade:20,57" *)
    logic _e_253;
    logic[31:0] _e_257;
    logic[31:0] _e_262;
    (* src = "src/fpgatest.spade:24,15" *)
    logic[32:0] _e_260;
    (* src = "src/fpgatest.spade:24,9" *)
    logic[31:0] _e_259;
    (* src = "src/fpgatest.spade:20,54" *)
    logic[31:0] _e_252;
    (* src = "src/fpgatest.spade:20,14" *)
    reg[31:0] \second_counter ;
    logic _e_267;
    (* src = "src/fpgatest.spade:27,32" *)
    logic[12:0] _e_266;
    logic \one ;
    logic _e_424;
    logic _e_425;
    logic _e_426;
    logic[31:0] _e_277;
    (* src = "src/fpgatest.spade:30,20" *)
    logic _e_275;
    logic[9:0] _e_280;
    (* src = "src/fpgatest.spade:31,21" *)
    logic[12:0] _e_279;
    (* src = "src/fpgatest.spade:30,17" *)
    logic[12:0] _e_274;
    logic[9:0] \duration ;
    logic one_n1;
    logic _e_428;
    logic _e_429;
    logic _e_430;
    logic _e_431;
    logic _e_432;
    logic[9:0] _e_291;
    (* src = "src/fpgatest.spade:38,20" *)
    logic _e_289;
    logic[9:0] _e_294;
    (* src = "src/fpgatest.spade:39,21" *)
    logic[12:0] _e_293;
    logic[9:0] _e_301;
    (* src = "src/fpgatest.spade:42,52" *)
    logic[10:0] _e_299;
    (* src = "src/fpgatest.spade:42,46" *)
    logic[9:0] _e_298;
    (* src = "src/fpgatest.spade:42,21" *)
    logic[12:0] _e_297;
    (* src = "src/fpgatest.spade:38,17" *)
    logic[12:0] _e_288;
    logic[9:0] duration_n1;
    logic one_n2;
    logic _e_434;
    logic _e_435;
    logic _e_436;
    logic _e_437;
    logic _e_438;
    logic[9:0] _e_310;
    (* src = "src/fpgatest.spade:46,20" *)
    logic _e_308;
    (* src = "src/fpgatest.spade:47,43" *)
    logic _e_313;
    (* src = "src/fpgatest.spade:47,21" *)
    logic[12:0] _e_312;
    logic[9:0] _e_320;
    (* src = "src/fpgatest.spade:50,51" *)
    logic[10:0] _e_318;
    (* src = "src/fpgatest.spade:50,45" *)
    logic[9:0] _e_317;
    (* src = "src/fpgatest.spade:50,21" *)
    logic[12:0] _e_316;
    (* src = "src/fpgatest.spade:46,17" *)
    logic[12:0] _e_307;
    (* src = "src/fpgatest.spade:28,9" *)
    logic[12:0] _e_269;
    (* src = "src/fpgatest.spade:27,14" *)
    reg[12:0] \state ;
    logic \_ ;
    logic _e_440;
    logic _e_441;
    logic _e_442;
    logic[7:0] _e_327;
    logic[7:0] _e_328;
    (* src = "src/fpgatest.spade:57,38" *)
    logic[15:0] _e_326;
    logic[9:0] __n1;
    logic _e_330;
    logic _e_444;
    logic _e_445;
    logic _e_446;
    logic _e_447;
    logic _e_448;
    logic[7:0] _e_333;
    logic[7:0] _e_334;
    (* src = "src/fpgatest.spade:58,48" *)
    logic[15:0] _e_332;
    logic[9:0] __n2;
    logic _e_336;
    logic _e_450;
    logic _e_451;
    logic _e_453;
    logic _e_454;
    logic[7:0] _e_339;
    logic[7:0] _e_340;
    (* src = "src/fpgatest.spade:59,47" *)
    logic[15:0] _e_338;
    logic[9:0] __n3;
    logic _e_342;
    logic _e_456;
    logic _e_457;
    logic _e_458;
    logic _e_459;
    logic _e_460;
    logic[7:0] _e_345;
    logic[7:0] _e_346;
    (* src = "src/fpgatest.spade:61,47" *)
    logic[15:0] _e_344;
    logic[9:0] __n4;
    logic _e_348;
    logic _e_462;
    logic _e_463;
    logic _e_465;
    logic _e_466;
    logic[7:0] _e_351;
    logic[7:0] _e_352;
    (* src = "src/fpgatest.spade:62,46" *)
    logic[15:0] _e_350;
    (* src = "src/fpgatest.spade:56,26" *)
    logic[15:0] _e_355;
    logic[7:0] \addr1 ;
    logic[7:0] \addr2 ;
    (* src = "src/fpgatest.spade:64,5" *)
    logic[15:0] _e_356;
    assign _e_251 = 32'd0;
    assign _e_255 = 32'd0;
    assign _e_253 = \second_counter  == _e_255;
    assign _e_257 = 32'd100000000;
    assign _e_262 = 32'd1;
    assign _e_260 = $signed(\second_counter ) - $signed(_e_262);
    assign _e_259 = _e_260[31:0];
    assign _e_252 = _e_253 ? _e_257 : _e_259;
    always @(posedge \clk , posedge \rst ) begin
        if (\rst ) begin
            \second_counter  <= _e_251;
        end
        else begin
            \second_counter  <= _e_252;
        end
    end
    assign _e_267 = 0;
    assign _e_266 = {2'd0, _e_267, 10'bX};
    assign \one  = \state [10:10];
    assign _e_424 = \state [12:11] == 2'd0;
    assign _e_425 = 1;
    assign _e_426 = _e_424 && _e_425;
    assign _e_277 = 32'd0;
    assign _e_275 = \second_counter  == _e_277;
    assign _e_280 = 10;
    assign _e_279 = {2'd1, _e_280, \one };
    assign _e_274 = _e_275 ? _e_279 : \state ;
    assign \duration  = \state [10:1];
    assign one_n1 = \state [0:0];
    assign _e_428 = \state [12:11] == 2'd1;
    assign _e_429 = 1;
    assign _e_430 = 1;
    assign _e_431 = _e_428 && _e_429;
    assign _e_432 = _e_431 && _e_430;
    assign _e_291 = 0;
    assign _e_289 = \duration  == _e_291;
    assign _e_294 = 10;
    assign _e_293 = {2'd2, _e_294, one_n1};
    assign _e_301 = 1;
    assign _e_299 = $signed(\duration ) - $signed(_e_301);
    assign _e_298 = _e_299[9:0];
    assign _e_297 = {2'd1, _e_298, one_n1};
    assign _e_288 = _e_289 ? _e_293 : _e_297;
    assign duration_n1 = \state [10:1];
    assign one_n2 = \state [0:0];
    assign _e_434 = \state [12:11] == 2'd2;
    assign _e_435 = 1;
    assign _e_436 = 1;
    assign _e_437 = _e_434 && _e_435;
    assign _e_438 = _e_437 && _e_436;
    assign _e_310 = 0;
    assign _e_308 = duration_n1 == _e_310;
    assign _e_313 = !one_n2;
    assign _e_312 = {2'd0, _e_313, 10'bX};
    assign _e_320 = 1;
    assign _e_318 = $signed(duration_n1) - $signed(_e_320);
    assign _e_317 = _e_318[9:0];
    assign _e_316 = {2'd2, _e_317, one_n2};
    assign _e_307 = _e_308 ? _e_312 : _e_316;
    always_comb begin
        priority casez ({_e_426, _e_432, _e_438})
            3'b1??: _e_269 = _e_274;
            3'b01?: _e_269 = _e_288;
            3'b001: _e_269 = _e_307;
            3'b?: _e_269 = 'x;
        endcase
    end
    always @(posedge \clk , posedge \rst ) begin
        if (\rst ) begin
            \state  <= _e_266;
        end
        else begin
            \state  <= _e_269;
        end
    end
    assign \_  = \state [10:10];
    assign _e_440 = \state [12:11] == 2'd0;
    assign _e_441 = 1;
    assign _e_442 = _e_440 && _e_441;
    assign _e_327 = 0;
    assign _e_328 = 0;
    assign _e_326 = {_e_327, _e_328};
    assign __n1 = \state [10:1];
    assign _e_330 = \state [0:0];
    assign _e_444 = \state [12:11] == 2'd1;
    assign _e_445 = 1;
    assign _e_446 = !_e_330;
    assign _e_447 = _e_444 && _e_445;
    assign _e_448 = _e_447 && _e_446;
    assign _e_333 = 0;
    assign _e_334 = 1;
    assign _e_332 = {_e_333, _e_334};
    assign __n2 = \state [10:1];
    assign _e_336 = \state [0:0];
    assign _e_450 = \state [12:11] == 2'd1;
    assign _e_451 = 1;
    assign _e_453 = _e_450 && _e_451;
    assign _e_454 = _e_453 && _e_336;
    assign _e_339 = 1;
    assign _e_340 = 1;
    assign _e_338 = {_e_339, _e_340};
    assign __n3 = \state [10:1];
    assign _e_342 = \state [0:0];
    assign _e_456 = \state [12:11] == 2'd2;
    assign _e_457 = 1;
    assign _e_458 = !_e_342;
    assign _e_459 = _e_456 && _e_457;
    assign _e_460 = _e_459 && _e_458;
    assign _e_345 = 128;
    assign _e_346 = 128;
    assign _e_344 = {_e_345, _e_346};
    assign __n4 = \state [10:1];
    assign _e_348 = \state [0:0];
    assign _e_462 = \state [12:11] == 2'd2;
    assign _e_463 = 1;
    assign _e_465 = _e_462 && _e_463;
    assign _e_466 = _e_465 && _e_348;
    assign _e_351 = 129;
    assign _e_352 = 128;
    assign _e_350 = {_e_351, _e_352};
    always_comb begin
        priority casez ({_e_442, _e_448, _e_454, _e_460, _e_466})
            5'b1????: _e_355 = _e_326;
            5'b01???: _e_355 = _e_332;
            5'b001??: _e_355 = _e_338;
            5'b0001?: _e_355 = _e_344;
            5'b00001: _e_355 = _e_350;
            5'b?: _e_355 = 'x;
        endcase
    end
    assign \addr1  = _e_355[15:8];
    assign \addr2  = _e_355[7:0];
    assign _e_356 = {\addr1 , \addr2 };
    assign output__ = _e_356;
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
    logic[9:0] _e_362;
    logic[9:0] _e_366;
    (* src = "src/fpgatest.spade:83,50" *)
    logic _e_364;
    logic[9:0] _e_371;
    (* src = "src/fpgatest.spade:83,72" *)
    logic[10:0] _e_369;
    (* src = "src/fpgatest.spade:83,66" *)
    logic[9:0] _e_368;
    (* src = "src/fpgatest.spade:83,47" *)
    logic[9:0] _e_363;
    (* src = "src/fpgatest.spade:83,14" *)
    reg[9:0] \rst_count ;
    logic[9:0] _e_376;
    (* src = "src/fpgatest.spade:84,15" *)
    logic \rst ;
    logic[7:0] \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    logic _e_389;
    (* src = "src/fpgatest.spade:100,16" *)
    logic _e_390;
    (* src = "src/fpgatest.spade:92,13" *)
    (* src = "src/fpgatest.spade:103,22" *)
    logic[15:0] \driver_out ;
    (* src = "src/fpgatest.spade:104,23" *)
    logic[7:0] _e_398;
    (* src = "src/fpgatest.spade:105,24" *)
    logic[7:0] _e_401;
    assign _e_362 = 5;
    assign _e_366 = 0;
    assign _e_364 = \rst_count  != _e_366;
    assign _e_371 = 1;
    assign _e_369 = $signed(\rst_count ) - $signed(_e_371);
    assign _e_368 = _e_369[9:0];
    assign _e_363 = _e_364 ? _e_368 : \rst_count ;
    initial begin
        \rst_count  = 'b0000000101;
    end
    always @(posedge \clk ) begin
        \rst_count  <= _e_363;
    end
    assign _e_376 = 0;
    assign \rst  = \rst_count  != _e_376;
    
    
    assign _e_389 = 1;
    assign _e_390 = !\rst ;
    (* src = "src/fpgatest.spade:92,13" *)
    tt_um_thezoq2_tmng tt_um_thezoq2_tmng_0(\ui_in , \uo_out_mut , \uio_in , \uio_out_mut , \uio_oe_mut , \clk , _e_389, _e_390);
    (* src = "src/fpgatest.spade:103,22" *)
    \tto4_tmng::fpgatest::simple_test_driver  simple_test_driver_0(\clk , \rst , \driver_out );
    assign _e_398 = \driver_out [15:8];
    assign \ui_in_drive_mut  = _e_398;
    assign _e_401 = \driver_out [7:0];
    assign \uio_in_drive_mut  = _e_401;
endmodule