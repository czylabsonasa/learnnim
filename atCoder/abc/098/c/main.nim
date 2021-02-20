# attention
# E = jobbra

import strutils, sequtils
let N = stdin.readLine.parseInt

type Dir = enum E, W
let S = stdin.readLine.strip.mapIt(if it=='E':E else:W)

var
  le : array[Dir,int]
  ri : array[Dir,int]
  ans = N+1
  
for i in 0 ..< N:
  ri[S[i]] += 1

for i in 0 ..< N:
  ri[S[i]] -= 1
  ans = min(le[W]+ri[E], ans)  
  le[S[i]] += 1
  
ans.echo
