import strutils, sequtils, sugar

let n = stdin.readLine.parseInt
let p = stdin.readLine.split.map(x=>parseInt(x))

var ans = 0
for i in 1 .. (n-2):
  if (p[i-1]<p[i] and p[i]<p[i+1]) or (p[i-1]>p[i] and p[i]>p[i+1]):
    ans += 1

ans.echo
