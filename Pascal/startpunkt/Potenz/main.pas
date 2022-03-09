program Potenz;
{Gerundet zu zwei Nachkommastellen}

var basis,exponent:real;

function pow(basis,exponent:real):real;
  begin
    pow := exp(exponent*ln(basis));
  end;

Begin
  write('Geben Sie die Basis an: ');
  read(basis);

  write('Geben Sie den Exponent an: ');
  read(exponent);

  writeln(pow(basis,exponent):0:2);
end.
