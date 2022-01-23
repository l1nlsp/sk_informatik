program euklidischer_algorithmus;

var m,n,differenz,ggt_wert: integer;

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
	writeln('ggT von zwei natuerlichen Nummern finden: m und n.');
	writeln('Geben Sie m ein: ');
	read(m);
	writeln('Geben Sie n ein: ');
	read(n);

	differenz := m-n;

	if differenz > 0 then
		begin
			ggt_wert := ggt(m,n);
		end
	else
		begin
			ggt_wert := ggt(n,m);
		end;

	if ggt_wert = 1 then
		begin
			writeln(m,' und ',n,' sind teilerfremd.');
		end
	else
		begin
			writeln('ggt(',m,',',n,') = ',ggt_wert);
		end;
end.
