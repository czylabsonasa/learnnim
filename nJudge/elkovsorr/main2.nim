import algorithm, strutils, sequtils, sugar

proc i2b(x:seq[int],n:int):seq[int]=
  result=newSeq[int](n)
  result.fill(1)
  for v in x: result[v-1]=0

proc b2i(x:seq[int]):seq[int]=
  for v in 0 ..< x.len:
    if x[v]==0: 
      result.add(v+1)

let IN = stdin.readAll().splitWhitespace().map(x=>parseInt(x))
# echo IN

var 
  n = IN[0]
  m = IN[1]
  x = IN[2 .. ^1]
  b: seq[int]
  status: bool
  

b = i2b(x,n)
status = prevPermutation(b)
if false == status:
  b=repeat(1,n-m) & repeat(0, m)  
echo b2i(b).join(" ")


b = i2b(x,n)
status = nextPermutation(b)
if false == status:
  b=repeat(0, m) & repeat(1,n-m) 
echo b2i(b).join(" ")
