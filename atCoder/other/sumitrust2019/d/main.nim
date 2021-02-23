import strutils, sets

let S = stdin.readAll.split()[1] ;

var t1 : HashSet[string] ; t1.init
var t2 : HashSet[string] ; t2.init
var t3 : HashSet[string] ; t3.init
for v in S:
  let sv = $v
  for w in t2:
    t3.incl(w & sv)
  for w in t1:
    t2.incl(w & sv)
  t1.incl(sv)

t3.len.echo
