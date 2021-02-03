import strutils,sequtils,sugar

proc olv():auto=stdin.readLine().split().map(x=>parseInt(x))

let IN=olv(); let (n,m,c)=(IN[0],IN[1],IN[2])
let b=olv()
var ans=0
for i in 1 .. n:
  let a=olv()
  var s=0
  for j in 0 ..< m: s += a[j]*b[j]
  if s+c>0: ans += 1

ans.echo
