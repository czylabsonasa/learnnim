import strscans

var a,b,x:int
discard scanf(stdin.readLine,"$i$s$i$s$i",a,b,x)

echo(
  if a<=x and x<=a+b:
    "YES"
  else:
    "NO"
)
