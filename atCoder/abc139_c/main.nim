# Word-counting like

import strutils, sugar, sequtils
let IN = stdin.readAll().splitWhitespace().map(x=>parseInt(x))
var
  prev = -1 # positive inp numbers
  h = 0 # local
  gh = 0 # global
for akt in IN[1 .. ^1] & (IN[^1]+1):
  if akt > prev:
    gh = max(gh, h)
    h = 0

  prev = akt
  h += 1
    
echo( gh-1 )
