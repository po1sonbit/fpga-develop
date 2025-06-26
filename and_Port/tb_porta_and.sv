module tb_porta_and;
logic a, b, c, sel, s;
porta_and uut(
    .a(a),
    .b(b),
    .c(c),
    .sel(sel),
    .s(s)
);

initial
    begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_porta_and);
        a = 0;
        b = 0;
        c = 0;
        sel = 0;
        #15;
        a = 1;
        b = 1;
        c = 0;
        sel = 1;
        #10;
        a = 0;
        b = 1;
        c = 1;
        sel = 1;
        #15;
        a = 1;
        b = 0;
        c = 0;
        sel = 1;
        #10;
        a = 1;
        b = 1;
        c = 1;
        sel = 1;
        #10;
        $finish;
    end
endmodule
