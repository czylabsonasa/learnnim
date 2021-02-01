import strutils, sequtils,
  sugar, algorithm 
  
proc olvas():auto=stdin.readLine().split().map(x=>parseInt(x))

let IN = olvas()
var n,k: int
n = IN[0]; k = IN[1]

var A:seq[seq[int]]
for _ in 0 ..< n:
  A.add(olvas())

# scope proba:
# proc proba()=
  # for i in 0 ..< n:
    # echo A[ i ]
# proba()


var perm = newSeq[int](n-1)
for i in 0 ..< n-1: perm[i] = i+1

proc comp():int=
  var c = 0
  var p = 0
  for i in 0 ..< (n-1):
    c += A[p][perm[i]]
    p = perm[i]
  c + A[perm[n-2]][0]
  

var num = 0
while true:
  if comp()==k: num += 1
  # echo perm  
  if false == nextPermutation(perm): break

echo num
