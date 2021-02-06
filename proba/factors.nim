# how many prime factors the num has?
import strutils
var x = stdin.readLine.parseint

proc simp(n:var int;d:int):int=
  while 0 == n mod d:
    result = 1
    n = n div d

var ans = 0
while true:
  ans += simp(x,2)
  ans += simp(x,3)
  if x == 1: break
  if x < 35: ans += 1; break

  
  var lp = @[3]
  var t = 5
  while t*t<=x:
    var tip=true # t is prime
    for v in lp:
      if v*v>t: break
      if t mod v == 0: tip=false; break
    if true==tip:
      lp.add(t)
      ans += simp(x,t)
    t += 2
  if x>1: ans += 1
  break

ans.echo
