program Quadrat_Wurzel_Heron;

var a,x: real;

begin
	writeln('Wurzel von einer Nummer "a" nach Heron finden:');
	write('a eingeben: ');
	read(a);

	x := a;
	repeat
		x := (x+a/x)/2;
	until abs(sqr(x)-a)/a < exp(-6*ln(10));

	writeln('sqrt(',a:0:2,') = ',x:0:2);
end.


