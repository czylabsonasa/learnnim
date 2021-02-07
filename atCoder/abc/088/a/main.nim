# infinite coins
import strscans

var n,a: int
discard scanf(stdin.readAll,"$s$i$s$i",n,a)

echo (if a >= n mod 500: "Yes" else: "No")
