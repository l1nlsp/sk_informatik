program kgV;

var m,n,ggt_wert:integer;

function ggt(nummer1,nummer2:integer):integer;
  var rest:integer;
  begin
    rest := nummer1 mod nummer2;
    while rest <> 0 do
      begin
        nummer1 := nummer2;
        nummer2 := rest;
        rest := nummer1 mod nummer2;
      end;
    ggt := nummer2;
  end;

begin
  write('m: ');
  read(m);

  write('n: ');
  read(n);     

  if m>n then 
    ggt_wert := ggt(m,n)
  else
    ggt_wert := ggt(n,m);

  writeln('kgV(',m,',',n,') = ', m*n div ggt_wert)
end.
