import strscans
var a,b,c: int
discard scanf(stdin.readLine, "$i$s$i$s$i", a, b, c)
echo(
  if a+b<c: "No"
  else: "Yes"
)