import strutils, sequtils, sugar, sets

let n = stdin.readLine.parseInt
let E = stdin.readLine.split.map(x=>parseInt(x))

var S = toHashSet[int](E)

var ans = n
while ans>0 and S.len>0:
  ans-=1
  S.excl(E[ans])

(ans+1).echo
