import algorithm, strutils, sequtils, sugar

let op = @['+','-']
let OPS = product( @[op,op,op] )
let jegyek = stdin.readLine.strip.map(x=>ord(x)-ord('0'))

proc getVal(v:seq[char]):(int,seq[char])=
  var val = jegyek[0]
  var alak = @[chr(ord('0')+jegyek[0])]
  for i in 0 .. 2 :
    if v[i] == '+' : 
      val += jegyek[i+1]
      alak.add('+')
    else: 
      val -= jegyek[i+1]
      alak.add('-')
    alak.add(chr(ord('0')+jegyek[i+1]))
  (val, alak)

  
for v in OPS:
  let (val, alak) = getVal(v)  
  #echo alak.join
  if 7==val:
    echo alak.join()&"=7"
    break
