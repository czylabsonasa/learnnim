import strscans, sequtils, strutils, sugar, math
var n,m: int
discard scanf(stdin.readLine,"$i$s$i",n,m)

type
  T = 1 .. 16
var 
  S = newSeq[set[T]](m)
  U = newSeq[set[T]](m+1) # parcialis uniok
  a = newSeq[int](m)
  tmp: int
  ans = -1
  opt: int

proc gen(level, a_kolt: int; a_unio:set[T]):void
  if a_unio.len == n:
    opt = a_kolt
    return
  
  

  
for i in 0 ..< m:
  discard scanf(stdin.readLine,"$i$s$i",a[i],tmp)
  for v in stdin.readLine.split.map(x=>parseInt(x)):
    S[i].incl(v)

U[m-1]=S[m-1]
for i in 1 ..< m:
  U[i] = S[i] + U[i-1]

if U.len == n:
  opt = a.sum
  

ans.echo
