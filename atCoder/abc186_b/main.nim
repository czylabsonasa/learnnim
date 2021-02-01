import strutils, sequtils, sugar, math
var v = stdin.readAll().split().filter(x=>len(x)>0).map(x=>parseint(x))
let (h, w) = (v[0],v[1])
v = v[ 2 .. ^1 ]
echo sum(v)-min(v)*h*w
