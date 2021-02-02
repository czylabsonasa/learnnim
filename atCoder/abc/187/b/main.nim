import strscans

var n, x, y: int
discard scanf(stdin.readLine(), "$i", n)
var pts=newSeq[(int,int)](n)
for i in 0 ..< n: 
  discard scanf(stdin.readLine(), "$i $i", x,y)
  pts[i]=(x,y)

var ans = 0
for i in  0 .. n-2:
  var (xi, yi) = pts[i]
  for j in i+1 .. n-1:
    var (xj, yj) = pts[j]
    if abs(yi - yj)>abs(xi - xj): continue
    ans += 1

echo(ans)
