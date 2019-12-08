-- this VHDL code shows how binary numbers would be added together, but only maintaining the same number of bits, hense why
-- it is only a half adder. (10 + 10 == 00 in half adder)

Entity HalfAdder is
  port(X, Y: in bit; Sum, Cout: out bit);
End Entity HalfAdder;
  
Architecture behavior OF HalfAdder IS
Begin
  Sum <= (X xor Y);
  Cout <= (X and Y);
End Architecture behavior;
