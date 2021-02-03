import strutils, math
let n = stdin.readLine().parseFloat()
let x = ceil(n / 1.08)
echo(
  if floor(x*1.08).int==n.int:
    $(x.int)
  else:
    ":("
)
