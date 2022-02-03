program Fakultaet;

var n,i:integer;
var p:real;

Begin
  p:=1;

  write('Geben Sie n ein: ');
  read(n);

  for i:=2 to n do 
    p:=p*i;

  writeln('n! = ',p:0:2);
end.
