import strutils, sequtils, sugar

let butt = stdin.readAll().splitWhitespace().map(x=>parseInt(x))

var 
  volt = newSeq[bool](butt[0]+1)
  ans = 0
  loc = 1

while true:
  if 2 == loc: break
  if true == volt[loc]:
    ans = -1
    break
  volt[loc] = true
  loc = butt[loc]
  ans += 1

ans.echo
