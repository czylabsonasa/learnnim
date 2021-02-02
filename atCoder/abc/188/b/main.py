from sys import stdin
v = [int(v) for v in stdin.read().split()]
n = v[0]
i,j,s = 1,n+1,0
while i <= n:
  s += v[i]*v[j]
  i,j = i+1,j+1
print( "Yes" if s == 0 else "No" )
 
