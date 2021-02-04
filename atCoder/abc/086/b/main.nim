import strutils, math
let c = stdin.readLine().split().join().parseInt()
let roc = c.float.sqrt.floor.int
echo(
  if roc*roc == c: "Yes"
  else: "No"
)
