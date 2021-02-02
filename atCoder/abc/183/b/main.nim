import strutils, sequtils, sugar
var IN = stdin.readAll().splitWhitespace().
  map(x => parseFloat(x))
# echo IN
var (sx, sy, tx, ty) = (IN[0], IN[1], IN[2], IN[3])  

echo(
if sx == tx or ty == 0.0:
  tx
else:
  sx + sy * (tx - sx)/(ty + sy)
)
