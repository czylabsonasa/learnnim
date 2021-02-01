import strutils

proc kitolt(n, S, d:int):auto=
  result = newSeq[bool](n+1)
  if d <= n: result[d]=true
  for i in 0 .. (n div S):
    let ii = S*i
    if true == result[i]:
      for j in ii .. min(ii+S-1, n):
        result[j] = true
    else:
      if ii + d <= n: result[ii + d] = true
        

let n=parseInt(stdin.readLine())
var A10 = kitolt(n,10,7) 
var A8 = kitolt(n,8,7)

var ans=0
for i in 1 .. n:
  if A10[i]==false and A8[i]==false:
    ans += 1
#echo A10
#echo A7
echo ans
