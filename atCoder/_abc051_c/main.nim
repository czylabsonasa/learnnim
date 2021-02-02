# later
import strscans, strutils
var sx,sy,tx,ty:int
discard scanf(stdin.readLine(),"$i$s$i$s$i$s$i",sx,sy,tx,ty)
# echo sx," ",sy," ",tx," ",ty
let 
  dx = tx-sx
  dy = ty-sy
echo(
  'R'.repeat(dx) & 'U'.repeat(dy) & 'L'.repeat(dx) & 'D'.repeat(dy)
)
