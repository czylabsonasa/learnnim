import strutils
let IN = stdin.readAll().splitWhitespace()
var (n, x, s) = (parseInt(IN[0]), parseInt(IN[1]), IN[2])
#echo n, " ", x, " ", s
for c in s:
  x += (if c == 'o': 1 else: -1)
  if x<0 : x=0
echo x

  
