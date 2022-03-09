program quick_sort;

{C l1nlsp 2022}

type s_array = array of Integer;
var 
  arr: s_array;
  i,arr_len: Integer;

procedure randomizer;
  Begin
    Randomize;
    setLength(arr,arr_len+1);
    for i:=1 to arr_len do arr[i]:=Random(100)+1;
  End;

procedure q_sort(A,E:integer);
  var l,r,p,temp:integer;
  Begin
    {pivot bestimmen} 
    p:=arr[(A+E) div 2];
    l:=A;
    r:=E;
    Repeat
      {kleiner/groesser als p}
      while arr[l]<p do l:=l+1;
      while arr[r]>p do r:=r-1;
      {tauschen}
      if (l<=r) then
        Begin
          temp:=arr[l];
          arr[l]:=arr[r];
          arr[r]:=temp;
          l:=l+1;
          r:=r-1;
        End;
    Until l>r;
    {Rekursion}
    if (A<r) then q_sort(A,r); 
    if (l<E) then q_sort(l,E); 
  End;

Begin
  arr_len:=10;
  randomizer;
  {Initial array}
  for i:=1 to arr_len do write(arr[i],'-');
 
  q_sort(1,arr_len);
  writeln();
  
  {End array}
  for i:=1 to arr_len do write(arr[i],'-');
End.
