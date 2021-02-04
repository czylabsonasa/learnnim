import strscans
var a,b,k:int
discard scanf(stdin.readLine, "$i$s$i$s$i",a,b,k)

if k<=a: 
  a=a-k
else:
  k=k-a
  a=0
  b=max(0,b-k)

echo a," ",b
