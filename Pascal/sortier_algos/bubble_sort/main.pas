program bubble_sort;

{C l1nlsp 2022}

{bubble sort array of 10 items, for numbers from 1 to 100}

const max:Integer =10;
var
  i,j,tmp:Integer;
  arr: array[1..10] of Integer;

procedure randomizer;
  Begin
    for i:=1 to max do arr[i]:=Random(99)+1;
    {Print array}
    for i:=1 to max do write('|',arr[i]);
    writeln();
  End;

procedure bubble_sort;
  Begin
    {-1 damit wir die index nicht ueberschreiten}
    i:=max-1;
    while i >= 1 do
      Begin
        for j:=1 to i do
          Begin
            if (arr[j]>arr[j+1]) then
              Begin
                tmp:=arr[j];
                arr[j]:=arr[j+1];
                arr[j+1]:=tmp;
              End;
          End;
        dec(i);
      End;
  End;

Begin
  Randomize;
  randomizer;
  bubble_sort;

  {post array}
  for i:=1 to max do write('|',arr[i]);
End.
