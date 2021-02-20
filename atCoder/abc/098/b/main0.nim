# cut and count
# ez NEM a feladat megoldasa

import strutils, sets, sequtils

let N = stdin.readLine.parseint
let S = stdin.readLine.strip.mapIt(it) 

var
  oda = newSeq[int](N)
  vissza = newSeq[int](N)
  tmp : HashSet[char]
  i, ans: int

i = 0
while i<N:
  tmp.incl(S[i])
  oda[i] = tmp.len
  i += 1

tmp.clear
i = N-1
while i>=0:
  tmp.incl(S[i])
  vissza[i]=tmp.len
  i -= 1

ans = 0
i = 0
while i < (N-1):
  ans = max(min(oda[i], vissza[i+1]), ans)
  i += 1
  
ans.echo

