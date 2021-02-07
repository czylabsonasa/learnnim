# similar arrays
import strutils, sequtils, sugar

let n = stdin.readLine.parseInt
let a = stdin.readLine.splitWhitespace.map(x=>parseInt(x))

var (nO,nE) = 
  if 1 == a[0] mod 2: (1,2) else: (2,1)

for i in 1 ..< n:
  (nO,nE) = if 1 == a[i] mod 2: 
    (nO,3*nE + 2*nO) 
  else: 
    (2*nO,3*nE + nO)  

nE.echo
