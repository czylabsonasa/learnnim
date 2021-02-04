import strutils
let n = stdin.readLine().parseInt()

var ans = 1
while true:
  if 2*ans>n: break
  ans = 2*ans

ans.echo
