import sequtils, threadpool, std/monotimes
proc sumUp(S: seq[int]; a,d,b: int):int=
  var a = a
  while a <= b:
    result += S[a]
    a += d

let N = 10000000
let X = (1 .. N).toSeq

var T:int64
var s: int


T=ticks(getMonoTime())
s = sumUp(X, 0, 1, N-1)
T=ticks(getMonoTime())-T
echo T 
echo s == N*(N+1) div 2


T=ticks(getMonoTime())
var r1 = spawn sumUp(X, 0, 2, N-1)
var r2 = spawn sumUp(X, 1, 2, N-1)
s = ^r1 + ^r2
T=ticks(getMonoTime())-T
echo T 
echo s == N*(N+1) div 2


