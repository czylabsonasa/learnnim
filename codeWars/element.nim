var
let
const
[1,2,3]
array - statikus - stack
  array[-10 .. 10, int]
seq - dinamikus - heap - gc
  @[] - seq construcor
  lista=sequtils.newSeq[int](3)
  lista.add(123)
  
&
  "ab" == "a" & "b"
for
in
proc
sugar
x=>x*x


azonosítók: csak az első betűnél van case + underscore nem számít
  almásPite==almáspite==almás_pite de != Almáspite
  style insensitivity
  
strutils
  toUpper == to_upper

main() implicit

??? 
  There’s no way to include three double-
  quote characters in a triple-quoted string literal.

???
  binary zero

proc(a:string):auto=a & "."  

INim: 
  nem kezeli: var a:seq[int]; let a0=a[0]



builtin set:
  set[int8,int16]
  {1,2,3} * {1,2,4} == {1,2}

sequtils: filter, map

max(a,b) és max([a,b,c])
