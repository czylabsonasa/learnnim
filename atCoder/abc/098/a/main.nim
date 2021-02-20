# add s ub mul
import strscans
var A,B:int
discard scanf(stdin.readLine, "$i$s$i", A, B)

[A+B,A-B,A*B].max.echo
