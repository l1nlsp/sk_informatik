program sin_taylor;

var x,sin,umkreisungen:real;
var i,vorzeichen:integer;

function fak(n:integer):longint;
  var p,i:longint;
  begin
    p:=1;
    for i:=1 to n do p:=p*i;
    fak:=p;
  end;

function pow(b,e:real):real;
  begin
    pow:=exp(e*ln(b));
  end;

Begin
  write('sin(x) berechnen, x in rad eingeben: ');
  read(x);

  sin := 0;
  i:=1;
  vorzeichen:=1;

  {Anzahl von 'Umkreisungen' mit Nachkommastellen bestimmen und diese in radians zwischen 0 und pi umwandeln.}
  umkreisungen := x/pi;
    {mod kann nicht benutzt werden, da es sich um reale Zahlen handelt}
  x := frac(umkreisungen)*pi;
  

  {Summe falls x!=0}
  if x <> 0 then
    {Mit 6 Faktoren berechnen um eine Genauigkeit von 2 Nachkommastellen zu erhalten und einen sicheren Df=[-pi,pi]}
    while i <= 6 do
      begin
        sin:=sin + vorzeichen*pow(abs(x),i*2-1)/fak(i*2-1);
        vorzeichen := vorzeichen*-1;
        i:= i+1;
      end;

  {Vorzeichen anpassen falls x = negativ oder volle umkreisungen = ungerade }
  if (x < 0) or (trunc(umkreisungen) mod 2 <> 0) then sin := -1*sin;

  writeln('Sin(x) = ',sin:0:3);

end.

