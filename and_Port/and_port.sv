module porta_and(
    input logic a, b, c, sel,
    output logic s
);

always_comb begin
    if(sel == 0)
        s = a&b;
    else
        s = c;
end

endmodule