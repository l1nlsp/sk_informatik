program bin2dez;

{Grenzen: longint akzeptiert maximal 10 Stellen, danach werden Fehler vorkommen.}

var n:longint;
var ziffer,i:integer;
var dez:real;

Begin
  dez := 0;
  i := 0;

  write('Binaerzahl eingeben: ');
  read(n);

  while n <> 0 do
    begin 
      ziffer := n mod 10;
      dez :=  dez + ziffer*exp(i*ln(2));
      n := n div 10;
      i := i + 1;
    end;

  writeln(dez:0:0)
end.
