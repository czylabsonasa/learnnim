import strutils
let IN = stdin.readline().split()
let (a,op,b) = (IN[0].parseInt(), IN[1], IN[2].parseInt())
var ans: int
while true:
  if op=="+": 
    ans = a+b
    break
  if op=="-":
    ans = a-b
    break
  if op=="*":
    ans = a*b
    break
  if op=="/":
    ans = a div b
    break
  if op=="%":
    ans = a mod b
    break
  break
echo ans
