import strscans
var x,y: int
discard scanf(stdin.readAll(),"$i $i",x,y)
echo(
  if max(x,y)-min(x,y)<3: "Yes"
  else: "No"
)
