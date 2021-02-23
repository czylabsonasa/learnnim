import sequtils,strutils,math,algorithm,tables

let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: 
  if s.len>0: yield s)
let rInt = proc: int = rStr().parseInt

let N,A,B = rInt()

(if A>B or (A<B and N==1): 0 else: 1+max(N-2,0)*(B-A) ).echo
