program Primzahl;

var prim:boolean;
var n,i,faktor1,faktor2: integer;
var wurzel: real;


Begin
  prim := true;
  i := 3;
  
  write('Bitte geben Sie eine ungerade Zahl ein: ');
  read(n);

  wurzel := sqrt(n);

  while (prim = true) and (i <= wurzel) do 
    begin
      if n mod i <> 0 then
        i := i + 2
      else
        begin
          prim := false;
          faktor1 := i;
          faktor2 := n div i;
        end;
    end;

  if prim = true then
    writeln(n,' ist eine Primzahl.')
  else
    writeln(n,' = ',faktor1,' * ',faktor2);
end.
