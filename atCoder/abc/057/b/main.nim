import sequtils,strutils,math,algorithm,tables

let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: 
  if s.len>0: yield s)
let rInt = proc: int = rStr().parseInt

let n,m = rInt()
var 
  A = newSeq[array[ 0 .. 2, int]](n) 
  loc = newSeq[int](n)

for i in 0 ..< n : 
  A[i] = [rInt(), rInt(), int.high]

for j in 1 .. m :
  let b,c = rInt()
  for i in 0 ..< n :
    let t = abs(b-A[i][0])+abs(c-A[i][1])
    if t<A[i][2] :
      A[i][2] = t
      loc[i] = j

loc.join("\n").echo
