import strutils
let n = stdin.readLine().parseInt()
let elv = ["SZAM", "BIMM", "BAMM", "BUMM"]
var ans = 0
for k in 1 .. n:
  let akt = stdin.readline().strip()
  let i =(if k mod 3 == 0: 1 else: 0) + (if k mod 5 == 0: 2 else: 0)
  if akt != elv[i]:
    ans = k
    break
echo ans

