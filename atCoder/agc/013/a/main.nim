import sequtils,strutils,math,algorithm,tables

let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: (if s.len>0: yield s) )
let rInt = proc: int = rStr().parseInt
let rIntSeq = proc(n:int):seq[int] = (result=newSeq[int](n); for i in 0 ..< n: result[i]=rInt())

let 
  N = rInt()
  a = newSeqWith(N, rInt())

var 
  ans = 1

if N > 2:
  var p = a[1] - a[0]
  for i in 2 ..< N :
    let a = a[i] - a[i-1]
    if a*p < 0 : 
      ans += 1
      p = 0
    else:
      p = a

ans.echo
