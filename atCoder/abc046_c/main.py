# a,b -> elozo allapot szavazatszamai
# A,B aktualis arany -> kA,kB >= a,b 
# a legkisebb ilyen k
# wa
# pythonban is rossz a float-os
# eps(1)

from math import ceil
from numpy import float128
n = int(input())

a, b = 1, 1 # az elso elott feltesszuk hogy 1-1
for _ in range(n):
  A,B = [float128(v) for v in input().split()]
  k = int(ceil(max(a/A, b/B)))
  a, b = int(k*A), int(k*B)

print(a+b)
