import strscans
var 
  n:int
  res = 0


discard scanf(stdin.readLine, "$i", n)

if 0 == n mod 2: 
  n = (n div 2) div 5
  while n > 0:
    res += n
    n = n div 5

res.echo
