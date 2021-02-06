import strscans, math
var a,b,c:int
discard scanf(stdin.readLine,"$i$s$i$s$i",a,b,c)
echo(
  if (c-a-b)>0 and (c-a-b)^2>4*a*b:
  #if sqrt(a)+sqrt(b)<sqrt(c):
    "Yes"
  else:
    "No"
)
