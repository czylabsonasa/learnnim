import strutils, sequtils, algorithm, sugar

let
  n = stdin.readLine.parseInt
  d = stdin.readLine.split.map(x=>parseInt(x)).sorted

echo(
  d[n div 2] - d[n div 2 - 1]
)
 
