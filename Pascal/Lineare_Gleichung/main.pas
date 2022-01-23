program Lineare_Gleichung;

var a,b: real;

begin
	writeln('ax+b=0');
	write('Geben Sie a ein: ');read(a);
	write('Geben Sie b ein: ');read(b);
	
	if a = 0 then
		begin
			if b = 0 then writeln('L = R')
			else writeln('L = {}'); 
		end
	else writeln('L = {',-b/a:0:2,'}');
end.


