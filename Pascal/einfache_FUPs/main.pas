program einfache_FUPs;

var menu:string;
var option,m,n,j:integer; { j ist zwar nicht unbedingt noetig, hilft aber der Lesbarkeit}
var x,b:real;     

function ggT(m,n: longint): longint;
  var rest,nummer1,nummer2: longint;
  begin
    nummer1:=m;
    nummer2:=n;

    if n > m then 
      begin
        nummer1:=n;
        nummer2:=m;
      end;

    rest := nummer1 mod nummer2;
    while rest <> 0 do
      begin
	nummer1 := nummer2;
	nummer2 := rest;
	rest := nummer1 mod nummer2;
      end;
    ggT := nummer2;
  end;

function fak(n:integer):longint;
  var ergebnis:longint;
  var i:integer;
  begin
    ergebnis:=1;
    for i:= 1 to n do ergebnis:=ergebnis*i;
    fak:= ergebnis;
  end;

function kgV(m,n:integer):longint;
  begin
    kgV:=m*n div ggT(m,n);
  end;

function x_hoch_n(x:real;n:integer):real;
  var ergebnis:real;
  var i:integer;
  begin
    ergebnis:=1;
    for i:=1 to abs(n) do ergebnis:=ergebnis*x;
    if n < 0 then x_hoch_n:=1/ergebnis else x_hoch_n:=ergebnis;
  end;

function pot(b,x:real):real;
  begin
    if b <= 0 then pot:= 0 
    else pot:=exp(x*ln(b));
  end;

function fib(n:integer):longint;
  var anminus2,anminus1,an:longint;
  var i:integer;
  begin
    fib:=1;
    if n < 2 then Exit();
    anminus2:=0;
    anminus1:=1;
    for i:=2 to n do
      begin
        an:= anminus2 + anminus1;
        anminus2:=anminus1;
        anminus1:=an;
      end;
    fib:=an;
  end;

function feb(j:longint):integer;
  begin
    if j mod 4 = 0 then
      begin
        if j mod 100 = 0 then 
          begin
            if j mod 400 = 0 then feb:=29
            else feb:=28;
          end
        else feb:=29;
      end
    else feb:=28;
  end;

Begin
  menu := 'Programm auswaehlen:' + LineEnding +
          '[0] fak(n)' + LineEnding +
          '[1] kgV(m,n)' + LineEnding +
          '[2] x_hoch_n(x,n)' + LineEnding +
          '[3] pot(b,x)' + LineEnding +
          '[4] fib(n)' + LineEnding +
          '[5] feb(j)' + LineEnding;

  writeln(menu);
  read(option);

  case (option) of
    0:begin
        write('Geben sie n ein: ');
        read(n);
        write('Fakultaet = ', fak(n));        
      end;
    1:begin
        write('Geben sie m ein: ');  
        read(m);
        write('Geben sie n ein: ');  
        read(n);
        write('kgV = ', kgV(m,n));        
      end;
    2:begin
        write('Geben sie x ein: ');  
        read(x);
        write('Geben sie n ein: ');  
        read(n);
        write(x_hoch_n(x,n):0:4);        
      end;
    3:begin
        write('Geben sie b ein: ');  
        read(b);
        write('Geben sie x ein: ');  
        read(x);
        write(pot(b,x):0:4);        
      end;
    4:begin
        write('Geben sie n ein: ');  
        read(n);
        write('Zahl in der Position ',n,' = ', fib(n));        
      end;
    5:begin
        write('Geben sie das Jahr ein: ');  
        read(j);
        write('Februar hat ', feb(j),' Tage.');        
      end;
  end;
end.
