import strutils
let x = stdin.readLine.parseint

var ans = -1
while true:
  if x == 2 or x == 3: ans = x; break
  if x == 4 or x == 5: ans = 5; break

  var lp = @[3]
  var t = 5
  while lp[^1]<x:
    var tip=true
    for v in lp:
      if v*v>t: break
      if t mod v == 0: tip=false; break
    if true==tip:
      lp.add(t)
    t += 2
  ans = lp[^1]
  break

ans.echo
