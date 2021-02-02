# bonyulultabb de általánosabb is
import sequtils, sugar, strutils
let num = stdin.readLine().strip().map(x=>ord(x)-ord('0'))
#echo digits
const inf = 100000
var akt = @[0, inf, inf]
let n = num.len
for i in 0 ..< n:
  # delete it:
  var prev = akt
  # delete
  akt = akt.map(x=>x+1)
  let c = num[i] mod 3
  # keep it
  for r in 0 .. 2:
    let rr = (r + c) mod 3
    akt[rr] = min(akt[rr],prev[r])

# echo akt
echo(
  if akt[0]>=n: -1
  else: akt[0]
)
