import strscans
var s,k,ans: int
discard scanf(stdin.readLine(),"$i$s$i",k,s)

ans = 0
for x in 0 .. min(s,k):
  for y in 0 .. min(s-x,k):
    for z in 0 .. min(s-x-y,k):
      if x+y+z==s: ans += 1
echo ans
