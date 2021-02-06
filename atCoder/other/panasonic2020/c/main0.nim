import strscans, math
var a,b,c:float
discard scanf(stdin.readLine,"$f$s$f$s$f",a,b,c)
echo(
  if sqrt(a)+sqrt(b)<sqrt(c):
    "Yes"
  else:
    "No"
)
