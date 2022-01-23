program Aufsummation;

var s,n,i: integer;

begin
	writeln('Bitte die obere Grenze fuer die Aufsummation eingeben, n > 1:');
	read(n);

	s := 0;
	i := 1;
	while n+1 > i do 
		begin
			s := s + i;
			i := i + 1;
		end;

	write(s);
end.


