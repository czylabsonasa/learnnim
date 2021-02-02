import strscans
# init Charge, num of Stops, time of Arriving
var iC, nS, tA: int 
discard scanf(stdin.readLine(),"$i $i $i", iC, nS, tA)
var p, a, b, aC: int
p = 0
aC = iC
for _ in 1 .. nS:
  discard scanf(stdin.readLine(),"$i $i", a, b)
  aC -= (a - p); if aC < 1: break
  aC += (b - a); if aC > iC: aC = iC
  p = b

echo( 
  if aC > (tA - p): "Yes"
  else: "No"
)
  
