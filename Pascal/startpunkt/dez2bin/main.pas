program dez2bin;

uses SysUtils; {https://programming-idioms.org/idiom/153/concatenate-string-with-integer/1894/pascal}

var n:longint;
var bin:string;


Begin
  bin := '1';

  write('N  eingeben: ');
  read(n);
  
  while n >= 2  do
    begin
      bin := bin + (n mod 2).ToString;
      n := n div 2;
    end;

  writeln(bin);
end.
