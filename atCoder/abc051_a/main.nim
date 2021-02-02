import sequtils, sugar, strutils
echo(
  stdin.readLine().map(x=>(if x==',':' ' else: x)).join()
)
