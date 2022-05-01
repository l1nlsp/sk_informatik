program zeiger;
uses crt;
{Info-Mail 21}

{3.1/////////////////////////////////////////////}
{
procedure uebung;
type Z_int = ^integer;
     Z_real = ^real;

var z_i: Z_int; z_x: Z_real;
  begin
    new(z_i);
    z_i^ := random(101);

    new(z_x);
    z_x^ := random();

    writeln('i = ',z_i^);
    writeln('x = ',z_x^:0:2);
  end;
}


{3.2////////////////////////////////////////////}
{
procedure uebung;
type Verbund = record
            i: integer;
            x: real;
          end;

type zVerbund = ^Verbund;
var z : zVerbund;
  begin
    new(z);
    z^.i := random(101);
    z^.x := random();

    writeln('i = ',z^.i);
    writeln('x = ',z^.x:0:2);
  end;
}

{3.3/////////////////////////////////////////////}
  {
procedure uebung;
type Verbund = record
            i: integer;
            next: ^Verbund;
          end;
  zVerbund = ^Verbund;
var z1,z2 : zVerbund;
  begin
    new(z1);
    new(z2);
    z1^.i := random(101);
    z2^.i := random(101);

    z1^.next := NIL;
    z2^.next := z1;

    writeln('z1_i = ',z2^.next^.i);
    writeln('z1_i = ',z1^.i);
    writeln('z2_i = ',z2^.i);
  end;
}

{3.4/////////////////////////////////////////}
  {
procedure uebung;
type Zinteger = ^integer;
var n: integer;
    z1,z2: Zinteger;

  procedure hilfsZ(i: integer; var z: Zinteger);
    var h: Zinteger;

    begin
     new(h);
     h^ := i;
     z := h;
    end;

  begin
    n := random(101);
    hilfsZ(n, z1);
    writeln('z1 = ',z1^);

    n := random(101);
    hilfsZ(n, z2);
    writeln('z2 = ',z2^);
  end;
  }

{3.5//////////////////////////////////////}
  {
procedure uebung;
type ZVerbund = ^Verbund; 
     Verbund = record
                i: integer;
                next: ZVerbund;
                end;
var anker: ZVerbund;
    i: integer;

  procedure neuZ(i: integer;var z: ZVerbund);
  var h: ZVerbund;
    begin
      new(h);
      h^.i := i;
      h^.next := z;
      z := h;
    end;

  procedure listZ(z: ZVerbund);
    begin
      if (z^.next = NIL) then writeln('floor: ',z^.i)
        else
          begin
            writeln('-',z^.i);
            listZ(z^.next);
          end;
    end;

  begin
    new(anker);
    anker^.i := 999;
    anker^.next := NIL;

    for i:=1 to 5 do
      begin
        neuZ(random(101), anker);
      end;

    listZ(anker);
  end;
}

{3.6//////////////////////////////////////}
  {
procedure uebung;
type ZVerbund = ^Verbund; 
     Verbund = record
                i: integer;
                next: ZVerbund;
                end;
var anker: ZVerbund;
    i: integer;
    gefunden: boolean;

  procedure neuZ(i: integer;var z: ZVerbund);
  var h: ZVerbund;
    begin
      new(h);
      h^.i := i;
      h^.next := z;
      z := h;
    end;

  procedure listZ(z: ZVerbund);
    begin
      if (z^.next = NIL) then writeln('floor: ',z^.i)
        else
          begin
            writeln('-',z^.i);
            if(z^.i > 90) then gefunden := true;
            listZ(z^.next);
          end;
    end;

  begin
    gefunden := false;

    new(anker);
    anker^.i := 999;
    anker^.next := NIL;

    for i:=1 to 18 do
      begin
        neuZ(random(100), anker);
      end;

    listZ(anker);

    if(gefunden) then writeln('Wert groesser als 90 gefunden.');
  end;
  }


{3.x//////////////////////////////////////}
procedure uebung;
type ZVerbund = ^Verbund; 
     Verbund = record
                i: integer;
                next: ZVerbund;
                end;
var anker: ZVerbund;
    i: integer;
    gefunden: boolean;

  procedure neuZ(i: integer;var z: ZVerbund);
  var h: ZVerbund;
    begin
      new(h);
      h^.i := i;
      h^.next := z;
      z := h;
    end;

  procedure listZ(z: ZVerbund);
    begin
      if (z^.next = NIL) then writeln('floor: ',z^.i)
        else
          begin
            if(z^.i > 90) then gefunden := true;
            writeln('-',z^.i);
            listZ(z^.next);
          end;
    end;

  procedure searchAndDel(var z: ZVerbund);
    begin
      if(z^.next <> NIL) then 
        begin
          if (z^.i > 90)
            then z := z^.next;
          searchAndDel(z^.next);
        end;
      
      end;

  begin
    gefunden := false;

    new(anker);
    anker^.i := 999;
    anker^.next := NIL;

    for i:=1 to 18 do
      begin
        neuZ(random(100), anker);
      end;

    listZ(anker);

    if(gefunden) then
      begin
        writeln('Wert groesser als 90 gefunden.');
        searchAndDel(anker);
        listZ(anker);
      end;
  end;

begin
  ClrScr;
  Randomize;
  uebung();
end.

