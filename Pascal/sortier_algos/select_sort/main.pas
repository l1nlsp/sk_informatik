program select_sort;

{C l1nlsp 2022}

{select sort by bringing the biggest number to the back}

const max: Integer = 10;
var
  i:Integer;
  arr: array[1..10] of Integer;

procedure randomizer;
  Begin
    {generate random numbers and print them}
    for i:=1 to max do 
      Begin
        arr[i]:=Random(99)+1;
        write('/',arr[i]);
      End;
    writeln();
  End;

procedure s_sort;
  var j,tmp,tmp_index: Integer;
  Begin
    i:=max;
    while i > 1 do
      Begin
        tmp_index:=1;
        tmp:=arr[1];
        for j:=2 to i do
          Begin
            if (arr[tmp_index]<arr[j]) then
              Begin
                tmp:=arr[j];
                tmp_index:=j;
              End;
          End;
        {tauschen}
        arr[tmp_index]:=arr[i];
        arr[i]:=tmp;
        dec(i);
      End;
  End;

Begin
  Randomize;
  randomizer;
  s_sort;

  {print sorted array}
  for i:=1 to max do write('/',arr[i]);
End.
