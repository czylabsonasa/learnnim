import strutils

let S = stdin.readLine.strip
var n = S.len-1
var 
  tbl: array['a' .. 'z', int8]
  m = n div 2 # a vege indexe
  noo = 0 # num of odds
  
proc adm()=
  if tbl[S[n]] == 1:
    tbl[S[n]] = 0
    noo -= 1
  else:
    tbl[S[n]] = 1
    noo += 1  

while true:
  adm(); n -= 1
  adm(); n -= 1
  m -= 1
  if noo == 0 and S[0 .. m] == S[m+1 .. n]:
    break

(2*m+2).echo
    
