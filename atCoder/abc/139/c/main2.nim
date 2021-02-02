# Word-counting like

import strutils, sugar, sequtils
discard stdin.readLine()
let nums = stdin.readLine().split().map(x=>parseInt(x))

var
  prev = -1 # positive inp numbers
  h = 0 # local
  gh = 0 # global
for akt in nums:
  if akt > prev:
    h = 0
  prev = akt
  h += 1
  gh = max(gh, h)
    
echo( gh-1 )
