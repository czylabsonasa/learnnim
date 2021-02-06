import strutils, strscans, sequtils, sugar

var n,m,x:int
discard scanf(stdin.readLine,"$i$s$i$s$i",n,m,x)
var a = stdin.readLine.split.map(x=>parseInt(x))
a.add(n+11)

var ans = 0
while a[ans]<x:
  ans += 1

echo(min(ans,m-ans))
