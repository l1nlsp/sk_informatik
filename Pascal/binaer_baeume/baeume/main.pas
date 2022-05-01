program BinaerBaum;
uses Crt;

// Globale Variablen und Typen

Type 
  ZBbaum = ^Bbaum;
  Bbaum = record
                wurzel: integer;
                li: ZBbaum;
                re: ZBbaum;
           end;

Var bb: ZBbaum;
    i, zahl: integer;
// Proceduren

procedure bb_erstellen(Var bb: ZBbaum);
  var BinBaum: ZBbaum;
Begin
  new(BinBaum);
  BinBaum^.wurzel := -1; {-1 ist ein PlaceHolder fuer einen leeren Kasten}
  BinBaum^.li := NIL;
  BinBaum^.re := NIL;
  bb := BinBaum;  
End;

procedure el_anhaengen(wert: integer; bb: ZBbaum);
Begin
  {Keine Doppelung}
  if (bb^.wurzel = -1) OR (wert = bb^.wurzel) then bb^.wurzel := wert
  else
      if(wert < bb^.wurzel) then
        begin
          if bb^.li = NIL then bb_erstellen(bb^.li);
          el_anhaengen(wert, bb^.li);
        end
      else
        begin
          if bb^.re = NIL then bb_erstellen(bb^.re);
          el_anhaengen(wert,bb^.re);
        end;
End;

procedure bb_auflisten(bb: ZBbaum);
{pre-order}
Begin
  write(bb^.wurzel,'-');
  if bb^.li <> NIL then 
  begin
    write('l');
    bb_auflisten(bb^.li);
  end;
  if bb^.re <> NIL then
  begin
    write('r');
    bb_auflisten(bb^.re);
  end;
End;

function el_suchen(wert: integer;bb: ZBbaum):boolean;
var treffer : boolean;
Begin
  treffer := false;
  if wert = bb^.wurzel then treffer := true;
  if NOT treffer then
    begin
      if (bb^.li <> NIL) AND (wert < bb^.wurzel) then treffer := el_suchen(wert, bb^.li);
      if (bb^.re <> NIL) AND (wert > bb^.wurzel) then treffer := el_suchen(wert, bb^.re);
    end;
  el_suchen := treffer;
End;

{
procedure el_loeschen(wert, bb: ZBbaum);
Begin
End;
}
// Programm
BEGIN
  Randomize;
  ClrScr;
  bb_erstellen(bb);
  i := 0;
  while i < 9 do
    Begin
      zahl:=Random(25);
      el_anhaengen(zahl,bb);
      bb_auflisten(bb);
      writeln();
      i:=i+1;
    End;

  
END.
