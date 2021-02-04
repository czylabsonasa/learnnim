import strscans, strutils, sequtils, sugar, algorithm

var n,k:int
discard scanf(stdin.readLine(),"$i$s$i",n,k)
var T = stdin.readLine().split().map(x=>parseInt(x))
var P = stdin.readLine().split().map(x=>parseInt(x))

var s=0
for i in 0 ..< n:
  s += T[i]
  T[i] = s

for i in 0 ..< k:
  let p = P[i]
  if 0 == p:
    P[i]=1
    continue
  let r = p mod s
  if 0 == r:
    P[i]=n
    continue
  P[i]=lowerBound(T,r)+1 

P.join(" ").echo
