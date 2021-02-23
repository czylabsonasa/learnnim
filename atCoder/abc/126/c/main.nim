import sequtils,strutils,math,algorithm,tables

let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: 
  if s.len>0: yield s)
let rInt = proc: int = rStr().parseInt

let N,K = rInt()
 
var 
  A = N+1
  B : int
  po2 = 1
  f = 1.0/float(N)
  P : float
  
while N*po2 < K:
  po2 *= 2
  f *= 0.5
  
while true :

  let (q, r) = (K div po2, K mod po2)  
  B = A
  A = q + (if r>0: 1 else: 0)
  #echo(A,"..<",B," ",po2)
  P += float(B-A)*f
  if q==0: break
  po2 *= 2
  f *= 0.5

formatFloat(P,precision=15).echo
