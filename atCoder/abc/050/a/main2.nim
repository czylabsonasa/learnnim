import strutils
let IN = stdin.readline().split()
let (a,op,b) = (IN[0].parseInt(), IN[1], IN[2].parseInt())
(case op:
  of "+": a+b
  of "-": a-b
  of "*": a*b
  of "/": a div b
  of "%": a mod b
  else: 0).echo 

