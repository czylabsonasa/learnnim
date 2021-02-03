import strutils, sequtils
let IN=stdin.readAll().splitWhitespace()
let 
  n=parseInt(IN[0])
  A=parseInt(IN[1])
  B=parseInt(IN[2])
  S=IN[3]
var 
  f=A+B
  o=0
  ans=["No"].cycle(n)

for i in 0 ..< n:
  if S[i]=='c': continue
  if S[i]=='a':  
    if f>0:
      ans[i]="Yes"
      f -= 1
      continue
  if f>0 and o<B: # S[i]=='b'
    ans[i]="Yes"
    f -= 1
    o += 1

ans.join("\n").echo
  
