import strscans, sets, strutils
var G:HashSet[string]; init(G)

var n:int; 
discard scanf(stdin.readLine(), "$i", n)
var ans="satisfiable"
for i in 1 .. n:
  let s=stdin.readLine().strip()
  if s in G: continue
  if s[0]=='!':
    if s[1 .. ^1] in G:
      ans=s[1 .. ^1]
      break
  else:
    if ("!" & s) in G:
      ans=s
      break
  G.incl(s)
    
echo ans
