import strscans
var a,b,d: int
discard scanf(stdin.readLine, "$i$s$i$s$i", a, b, d)
a = (a div d) + (if a mod d > 0: 1 else: 0) 
b = (b div d)
echo(
  b - a + 1
) 
