# abc 52 c
# naive prime sieve 

import strutils, sequtils
let n = stdin.readLine().parseInt()
# echo n
var 
  d,ans:int
  ip:seq[byte] = repeat[byte](1,n+1) # lassabb
  #ip = newSeq[byte](n+1)


d=4
while d<=n: 
  ip[d]=0
  d+=2

d=1
while true:
  d+=2; if d>n: break
  if ip[d]==0: continue
  var dd=d*d; if dd>n: break
  while dd<=n:
    ip[dd]=0
    dd+=2*d  



proc comp(p:int):int=
  var 
    pp=p
    q:int
  while true:
    q = n div pp
    if q == 0: break
    result += q
    pp *= p
  result+=1
  
ans = comp(2)
for p in 3 .. n:
  if ip[p]==1:
    ans = (ans * comp(p)) mod 1000000007      

echo ans
# for i in 2 .. n:
  # echo i," ",ip[i]," ",comp(i)
