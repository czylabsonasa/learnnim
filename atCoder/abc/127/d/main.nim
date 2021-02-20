import strutils, sequtils, sugar, algorithm
proc olv():auto=stdin.readLine.split.map(x=>parseInt(x))
var m,n : int
let v = olv() ; m = v[0] ; n = v[1] 
let A = olv().sorted()


