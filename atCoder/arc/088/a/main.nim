import strscans

var x,y:int
discard scanf(stdin.readLine,"$i$s$i",x,y)

var cnt=1
while 2*x<=y:
  cnt+=1
  x=2*x

cnt.echo
