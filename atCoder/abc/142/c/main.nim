import strutils, sequtils, sugar
let n = stdin.readLine.parseInt
let IN = stdin.readLine.split.map(x=>parseInt(x))

var NI = newSeq[int](n)
for i in 0 ..< n:
  NI[IN[i]-1]=i+1

echo(
  NI.join(" ")
)
