import strutils, algorithm

proc olv():string=stdin.readLine

var mind:seq[(string,int)]
let n = olv().parseInt
for v in 0 ..< n:
  mind.add((olv(),1))
let m = olv().parseInt
for v in 0 ..< m:
  mind.add((olv(),-1))

mind.sort
mind.add(("",0))

var 
  gopt = 0
  lopt = 0
  prev = ""
  
for v in mind:
  var akt = v[0]
  if akt == prev:
    lopt += v[1]
  else:
    gopt=max(gopt,lopt)
    lopt=v[1]
    prev=v[0]

gopt.echo
