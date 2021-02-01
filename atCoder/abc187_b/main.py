n = int(input())
pts=[]
for i in range(n): 
  x,y=[int(v) for v in input().split()]
  pts.append((x,y))

ans = 0
for i in  range(n-1):
  (xi, yi) = pts[i]
  for j in range(i+1,n):
    (xj, yj) = pts[j]
    if abs(yi - yj)>abs(xi - xj): continue
    ans += 1

print(ans)
