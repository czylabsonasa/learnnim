discard stdin.readLine()
var 
  ps = 0
  x = 0
for v in stdin.readLine():
  ps += (if v=='I': 1 else: -1)
  x = max(x, ps)
x.echo
