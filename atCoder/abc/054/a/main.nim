import strscans
var a,b:int
discard scanf(stdin.readLine(),"$i$s$i",a,b)
if a==1: a=14
if b==1: b=14

echo(
  if a>b: "Alice"
  elif a==b: "Draw"
  else: "Bob"
)
