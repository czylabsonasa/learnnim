import strscans
var h,w:int
discard scanf(stdin.readLine,"$i$s$i",h,w)
echo(
if h == 1 or w == 1:
  1
else:
  # some of the num is even -> half
  # each are odd -> h*w=2q+1 -> q+1
  (h*w+1) div 2
)
