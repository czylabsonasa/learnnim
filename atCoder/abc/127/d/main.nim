import strutils, sequtils, sugar, algorithm, math

proc olv():auto=stdin.readLine.split.map(x=>parseInt(x))
var m,n : int
var v:seq[int] 

v = olv() ; n = v[0] ; m = v[1] 
let A = olv().sorted()
var sA = A.sum
var BC = newSeq[tuple[c:int,b:int]](m)
for it in 0 ..< m:
  v = olv()
  BC[it] = (v[1],v[0])

BC.sort(order=Descending)

var 
  i = 0
  j = 0
  bcStep = 0

while i < n and j < m:
  if BC[j].c <= A[i]:
    break
  bcStep += 1
  if bcStep > BC[j].b:
    j += 1
    bcStep = 0
    continue
  #~ echo(i," ",j)
  #~ echo("A:", A[i]," BC:",BC[j].c,"\n")

  sA -= A[i]
  sA += BC[j].c
  i += 1


sA.echo
