import strscans

var n, k:int
discard scanf(stdin.readLine(),"$i$s$i",n,k)

let r = n mod k
min(r,k-r).echo
