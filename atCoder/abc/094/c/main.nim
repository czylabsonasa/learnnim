import strutils, sequtils, sugar, algorithm

let n = stdin.readLine.parseInt
var x = stdin.readLine.split.map(x=>parseInt(x))

let y = x.sorted
let (m0,m1) = (y[(n-1) div 2],y[1 + (n-1) div 2])
for i in 0 ..< n:
  echo( if x[i]<=m0: m1 else: m0 )

