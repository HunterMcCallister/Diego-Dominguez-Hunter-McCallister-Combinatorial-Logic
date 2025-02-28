// Implement top level module
module top(
input [7 : 0] sw,
output [5 : 0] led
);


light light_instanc(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
);

adder adder_instanc(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
);

wire cout1;

full_adder full_adder_instanc1(
    .A(sw[4]),
    .B(sw[6]),
    .cin(1'b0),
    .Y(led[3]),
    .cout(cout1)

);

full_adder full_adder_instanc2(
    .A(sw[5]),
    .B(sw[7]),
    .cin(cout1),
    .Y(led[4]),
    .cout(led[5])
);

endmodule