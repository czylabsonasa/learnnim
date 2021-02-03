import strutils, sugar, math
let IN = collect(newSeq): 
  for v in stdin.readAll().splitWhitespace():
    parseInt(v)
let n = IN[0]
let s = sum(IN[1 .. ^1])/n
let S = 
  if s - floor(s)>0.5:
    s.ceil.int
  else:
    s.floor.int
var ans = 0
for i in 1 .. n:
  ans += (IN[i]-S)^2

ans.echo
