import strutils
let IN=stdin.readAll().splitWhitespace()
let 
  n=parseInt(IN[0])
  A=parseInt(IN[1])
  B=parseInt(IN[2])
  S=IN[3]
var 
  f=A+B
  o=0
for p in S:
  echo(
    if p=='c': "No"
    elif p=='a':
      if f>0:
        f -= 1
        "Yes"
      else:
        "No"
    else:
      if f>0 and o<B:
        f -= 1
        o += 1
        "Yes"
      else:
        "No"
  )  
    
