module above
  (
    input a,
    input b,
    input c,
    output sum,
    output carry
  );
  
  wire ha1_sum;
  wire ha2_sum;
  wire ha1_carry;
  wire ha2_carry;
  
  half_adder ha1(
    .a(a),
    .b(b),
    .sum(ha1_sum),
    .carry(ha1_carry)
  );
  
  half_adder ha2(
    .a(c),
    .b(ha1_sum),
    .sum(ha2_sum),
    .carry(ha2_carry)
  );
  
  assign sum = ha2_sum; // bitwise xor
  assign carry = ha1_carry|ha2_carry; // bitwise and
endmodule // half_adder