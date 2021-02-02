import strscans, math
var a,b: int
discard scanf(stdin.readLine(), "$i$s$i", a, b)
# (b div a + (if b mod a > 0: 1 else: 0)).echo
((b-a)/(a-1)+1).ceil.int.echo