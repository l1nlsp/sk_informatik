program Quadratische_Gleichung;

var a,b,c,D: real;

begin
	writeln('ax^2+bx+c=0');
	write('Geben Sie a ein: ');read(a);
	write('Geben Sie b ein: ');read(b);
	write('Geben Sie c ein: ');read(c);
	
	if a = 0 then
		begin
			if b = 0 then
				begin
					if c = 0 then writeln('L = R')
					else writeln('L={}');
				end
			else writeln('x=',-c/b:0:2); 
		end
	else 
		begin
			D := Sqr(b)-4*a*c;
			if D < 0 then writeln('L={}')
			else 
				begin
					if D = 0 then writeln('x=',-b/(2*a):0:2)
					else 
						writeln('x1=',(-b+sqrt(sqr(b)-4*a*c))/(2*a):0:2,
						' ,x2=',(-b-sqrt(sqr(b)-4*a*c))/(2*a):0:2);
				end;
		end;
end.


