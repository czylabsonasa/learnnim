import strscans, strutils, sequtils, sugar

var n,k: int
discard scanf(stdin.readLine,"$i$s$i",n,k)

var ans = 0
for f in stdin.readLine.split.map(x=>parseInt(x)):
  if f>=k: ans+=1

ans.echo
