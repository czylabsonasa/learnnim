import sequtils,strutils,math,algorithm,tables

let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: (if s.len>0: yield s) )
let rInt = proc: int = rStr().parseInt
let rIntSeq = proc(n:int):seq[int] = (result=newSeq[int](n); for i in 0 ..< n: result[i]=rInt())


var 
  s, t = rStr()
s.sort()
t.sort(order=Descending)

(if s < t :
  "Yes"
else :
  "No").echo
