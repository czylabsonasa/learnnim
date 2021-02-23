import sequtils,strutils,math,algorithm,tables


#~ let rStr = iterator: string {.closure.} = (for s in stdin.readAll.split: 
  #~ if s.len>0: yield s)
#~ let rInt = proc: int = rStr().parseInt
#~ let rIntSeq = proc(n:int):seq[int] = (result=newSeq[int](n); for i in 0 ..< n: result[i]=rInt())
#~ let rFlo = proc: float64 = rStr().parseFloat


#~ let X = rIntSeq(rInt()) 
#~ X.echo


#~ let n,m = rInt()
#~ (n,m).echo



#~ for v in rStr:
  #~ v.echo


let mkCnt = proc() : auto =
  var c {.global.} : int
  result = proc() : int =
    c += 1
    result = c


let cnt1 = mkCnt()
let cnt2 = mkCnt()
for i in 1 .. 10: 
  cnt1().echo

for i in 1 .. 10: 
  cnt2().echo
