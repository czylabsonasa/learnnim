import sequtils,strutils,math,algorithm,tables

let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: (if s.len>0: yield s) )
let rInt = proc: int = rStr().parseInt
let rIntSeq = proc(n:int):seq[int] = (result=newSeq[int](n); for i in 0 ..< n: result[i]=rInt())

let N,K = rInt()
let ctab = toCountTable[int](rIntSeq(N))

var 
  ans = 0
  i : int

let F = ctab.len
if F>K:
  var frek = newSeq[int](F)

  for kv in pairs(ctab):
    frek[i] = kv[1]
    i += 1
  
  frek.sort()
  for i in 0 ..< F-K:
    ans += frek[i]

ans.echo
