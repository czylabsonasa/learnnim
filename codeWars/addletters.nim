import math, sequtils, sugar
proc addLetters*(letters: seq[char]): char =
  result='z'
  if 0<letters.len():
    let s=letters.map(x=>ord(x)-ord('a')+1).sum()
    let r=s mod 26
    if 0<r:
      result=chr(ord('a')-1+r)

echo addLetters(@['z','a'])
