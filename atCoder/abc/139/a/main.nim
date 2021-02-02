import strutils
let IN = stdin.readAll().splitWhitespace()
let (S, T) = 
  (IN[0], IN[1])
var ans = 0
for i in 0 ..< S.len:
  ans += (if S[i] == T[i]: 1 else: 0)
echo ans
