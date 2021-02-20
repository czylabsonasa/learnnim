# cut and count
import strutils, sequtils

let N = stdin.readLine.parseint
let S = stdin.readLine.strip.mapIt(it) 

var
  le : array['a' .. 'z', int] 
  ri : array['a' .. 'z', int] 
  ans, tmp: int

for i in 0 ..< N:
  ri[S[i]] += 1

for i in 0 ..< N:
  le[S[i]] += 1
  ri[S[i]] -= 1
  tmp = 0
  for j in 'a' .. 'z':
    if le[j]>0 and ri[j]>0: tmp += 1

  ans = max(ans, tmp)

ans.echo
