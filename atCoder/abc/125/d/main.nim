import strutils, sets

let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: 
  if s.len>0: yield s)
let rInt = proc: int = rStr().parseInt
let rIntSeq = proc(n:int):seq[int] = (result=newSeq[int](n); for i in 0 ..< n: result[i]=rInt())

let n = rInt()
let A = rIntSeq(n)
var 
  akt = [0,0]
  prev = [0,0]

akt = [A[0]+A[1], -(A[0]+A[1])]
for it in 2 ..< n :
  prev = akt
  akt[0] = A[it] + max(prev)
  akt[1] = -A[it] + max(prev[0] - 2*A[it-1], prev[1] + 2*A[it-1])

max(akt).echo
