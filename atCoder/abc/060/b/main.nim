import strscans, math
var a,b,c: int
discard scanf(stdin.readLine, "$i$s$i$s$i", a, b, c)
echo(
  if 0 == c mod gcd(a,b): "YES"
  else: "NO" 
) 
