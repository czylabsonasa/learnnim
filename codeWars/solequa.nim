import math
proc solEqua*(n: int): seq[seq[int]] =
  let high=sqrt(float(n)).int
  let low = case n mod 4:
    of 1:
      1
    of 0:
      2
    else:
      high+1
  var d = low
  while d <= high:
    if 0 == n mod d:
      # 2x == d + n div d
      let x = (d + (n div d)) div 2
      if 0 == (x-d) mod 2:
        let y = (x-d) div 2
        result.add(@[x,y])
    d += 2
  #echo n,": ",low, " ", high


import strutils
var l:string
while true:
  l=stdin.readLine()
  let n=parseInt(l)
  if n<0: break
  echo solEqua(n)
  

  
#~ for it in 90000 .. 90005:
  #~ echo "n=", it , " --> ", solEqua(it)
