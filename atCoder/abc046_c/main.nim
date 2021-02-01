# a,b -> elozo allapot szavazatszamai
# A,B aktualis arany -> kA,kB >= a,b 
# a legkisebb ilyen k
# wa
import strscans, math
var
  n, a, b, A, B, k: int

discard scanf(stdin.readLine(),"$i",n)

(a, b) = (1, 1) # az elso elott feltesszuk hogy 1-1
for _ in 1 .. n:
  discard scanf(stdin.readLine(),"$i$s$i",A,B)
  k = max(a/A, b/B).ceil.int
  (a, b) = (k*A, k*B)
echo a+b
