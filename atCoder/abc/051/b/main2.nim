import strscans
var s,k,ans: int
discard scanf(stdin.readLine(),"$i$s$i",k,s)

k = min(k,s) # -> *
ans = 0
for z in  max(0,s-2*k) .. k:
  ans += (k+1-abs(s-z-k)) # * negativ is lehet a min nelkul
echo ans
