import sugar, strutils, sequtils
let v = stdin.readAll().split().filter(x=>len(x)>0).map(x=>parseInt(x))
let n = v[0]
var (i,j,s) = (1,n+1,0)

while i <= n:
  s += v[i]*v[j]
  (i,j)=(i+1,j+1)
  
echo(
  if s == 0: "Yes"
  else: "No"
)
