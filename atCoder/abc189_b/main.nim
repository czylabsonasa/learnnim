import strutils, sequtils, sugar
proc r2i():auto=
  let l = stdin.readLine().split().map(x=>parseInt(x))
  result = (l[0],l[1])
  
var (n,x) = r2i()
x *= 100

var s = 0
var i = 1
while i <= n:
  var (v,p) = r2i()
  s += v * p
  if s > x: break 
  i += 1

if i > n: i = -1
echo i

