program Aufmultiplikation;

var n,i:integer;
var s,a_i:real;

Begin

  s := 1;
  i := 0;

  write('Bitte geben sie die Anzahl der Multiplikanden an: ');
  read(n);

  while (i < n) do
    Begin
      write(i+1,'. Multiplikand: ');
      read(a_i);
      s := s * a_i;
      
      i := i+1
    end;
  
  writeln('Das Ergebnis ist: ',s:0:2);

end.
