import strutils, sugar, sequtils, math
proc r():auto=
  stdin.readLine().split().map(x=>parseInt(x))

var
  n, s, m, p, x: int
  t, l: seq[int]
  
n = r()[0]
t = r()
s = t.sum()
m = r()[0]

for _ in 1 .. m:
  l = r()
  (p, x) = (l[0], l[1])
  echo s - t[p-1] + x
