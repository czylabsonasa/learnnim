import strscans
var a,b: int
discard scanf(stdin.readAll, "$i $i", a, b)
# echo a, b
proc d2s(x:int):int=
  var y=x
  while y>0:
    result += (y mod 10)
    y = y div 10
echo max( d2s(a), d2s(b) )
