program quadrat_wurzel_halbierung;

var a,xl,xr,x: real;

begin
	writeln('Wurzel von einer Nummer "a" nach Halbierung finden:');
	write('a eingeben: ');
	read(a);
	
	xl := 0;
	xr := a+1;

	repeat
		x := (xl+xr)/2;
		if sqr(x) > a then xr := x
		else xl := x;
	until abs(sqr(x)-a)/a < exp(-6*ln(10));

	writeln('sqrt(',a:0:2,') = ',x:0:2);
end.


