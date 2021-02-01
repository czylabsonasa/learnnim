import sequtils
proc noSpace*(x: string): string = 
   x.filter(x => (x != ' '))

echo noSpace("asd asd asd")
