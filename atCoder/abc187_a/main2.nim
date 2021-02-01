import math, strutils, sequtils, sugar
let v = stdin.readAll().split()
let (a,b) = (v[0],v[1])
proc d2i(x:char):int=ord(x)-ord('0')
[sum(a.map(x=>d2i(x))), sum(b.map(x=>d2i(x)))].max.echo
