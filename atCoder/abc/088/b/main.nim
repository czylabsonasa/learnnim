# card game for two

import strutils, sequtils, sugar, algorithm

let n = stdin.readLine.parseInt() 
let a = stdin.readAll.splitWhitespace.
  map(x=>parseInt(x)).sorted(order=Descending)

var 
  A = [0,0]
  j = 0
for v in a:
  A[j] += v
  j = 1 - j

echo A[0]-A[1]
