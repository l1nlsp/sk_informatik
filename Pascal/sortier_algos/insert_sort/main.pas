program insert_sort;

{C l1nlsp 2022}

{insert sort for random numbers between 1 and 11}

const max : Integer = 10;
var 
  i,j,n,tmp_pos:Integer;
  arr: array[1..10] of Integer;

procedure i_sort;
  Begin
    for i:=1 to max do
      Begin
        {generate random number}
        n:=Random(10)+1;
        j:=0;
        Repeat
          inc(j);
        Until (arr[j]>n) Or (arr[j] = 0);
        tmp_pos:=j;
        {falls arr[j] nicht leer, laufen}
        while arr[j] <> 0 do inc(j);
        {freien Platz gefunden, daher alle inhalte ab Position rutschen}
        while j > tmp_pos do 
          Begin
            arr[j]:=arr[j-1];
            dec(j);
          End;
        {random number in n einsortieren}
        arr[tmp_pos]:=n;
        {print the random number}
        write('/',n);
      End;
  End;

Begin
  Randomize;
  i_sort;
  {print ordered array}
  writeln();
  for i:=1 to max do write('/',arr[i]);
End.
