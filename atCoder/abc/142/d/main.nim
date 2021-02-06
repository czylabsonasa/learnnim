# how many prime factors the num has?
import math, strscans
var x,y:int
discard scanf(stdin.readLine, "$i$s$i", x,y)
 
x=gcd(x,y)
 
proc simp(n:var int;d:int):int=
  while 0 == n mod d:
    result = 1
    n = n div d
 
var ans = 0 # num of prime factors of x
while true:
  ans += simp(x,2)
  ans += simp(x,3)
  if x == 1: break
  if x < 35: ans += 1; break
  
  var 
    t = 5
    delta = 2
  while t*t<=x:
    ans += simp(x,t)
    t += delta
    delta = 6 - delta
 
  if x>1: ans += 1
  break
 
(1+ans).echo # count 1 too
