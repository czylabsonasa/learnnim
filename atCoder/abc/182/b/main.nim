import strutils, sequtils, sugar, algorithm
# let n  = stdin.readLine().parseInt()
discard stdin.readLine().parseInt()
let nums = stdin.readLine().splitWhitespace().
  map(x => parseInt(x)).sorted()

var (gf, gd)  = (0, 0)
for d in 2 .. nums[^1]:
  var p = -1
  var ok = 0
  var lf = 0
  for v in nums:
    if v != p:
      p = v
      ok = if v mod d == 0: 1 else: 0
    lf += ok
  (gf, gd) = max((gf, gd), (lf, d))

echo gd
