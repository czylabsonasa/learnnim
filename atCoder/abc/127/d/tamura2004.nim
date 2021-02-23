import sequtils,strutils,math,algorithm,tables
when true:
  let get = iterator: string {.closure.} = (for s in stdin.readAll.split: yield s)
  let read = proc: int = get().parseInt
  template rep(a,b): seq = newSeqWith(b,a)
  template `min=`(a,b) = (if a > b: a = b)
  template `max=`(a,b) = (if a < b: a = b)
  const inf = 1 shl 30
  template yes(ans) = ["No","Yes"][1-int(ans)]

let
  n, m = read()

var
  a = read().rep(n).sorted(cmp)
  d = (b:read(),c:read()).rep(m).sortedByIt(-it.c)
  i = 0
  ans = 0

block outer:
  for bc in d:
    let (b,c) = bc
    for _ in 1..b:
      if i >= n: break outer 
      a[i].max= c
      i.inc

echo a.sum
