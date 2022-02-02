program Arithmetischer_Mittelwert;

var n,i:integer;
var s,a_i:real;

Begin

  s := 0;
  i := 0;

  write('Bitte geben sie die Anzahl der Summanden an: ');
  read(n);

  while (i < n) do
    Begin
      write(i+1,'. Summand: ');
      read(a_i);
      s := s + a_i;
      
      i := i+1
    end;
  
  writeln('Der Mittelwert ist: ',s/n:0:2);

end.

