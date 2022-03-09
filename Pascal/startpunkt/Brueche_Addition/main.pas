program Addition_von_Bruechen;

var Z1,N1,Z2,N2,Zer,Ner,ggt_wert: integer;

function ggt(zaehler,nenner: integer): integer;

var rest: integer;

begin
	rest := zaehler mod nenner;
	while rest <> 0 do
		begin
			zaehler := nenner;
			nenner := rest;
			rest := zaehler mod nenner;
		end;
	ggt := nenner;
end;

begin
	writeln('Erster Bruch');
	read(Z1);writeln('─');read(N1);
	writeln('Zweiter Bruch');
	read(Z2);writeln('─');read(N2);

	{Ergebnis berechen}
	Zer := Z1*N2 + Z2*N1;
	Ner := N2*N1;

	{Bruch mithilfe von ggT vereinfachen}
	if Zer > Ner then ggt_wert := ggt(Zer,Ner)
	else ggt_wert := ggt(Ner,Zer);
	
	if Ner = ggt_wert then writeln(Z1,'/',N1,' + ',Z2,'/',N2,' = ',Zer/ggt_wert:0:0)
	else writeln(Z1,'/',N1,' + ',Z2,'/',N2,' = ',Zer/ggt_wert:0:0,'/',Ner/ggt_wert:0:0);
end.



