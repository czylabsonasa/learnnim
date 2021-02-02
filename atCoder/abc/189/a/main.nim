import strutils
let s = stdin.readLine().strip()
let ans = 
  if s[0]==s[1] and s[1]==s[2]:
    "Won"
  else:
    "Lost"
echo ans
