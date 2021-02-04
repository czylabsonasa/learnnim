import strscans

var y,x:int; discard scanf(stdin.readLine(),"$i$s$i",y,x)
var k,n:int; discard scanf(stdin.readLine(),"$i$s$i",k,n)

max(max(0, k-y)+n-(x-y), 0).echo
