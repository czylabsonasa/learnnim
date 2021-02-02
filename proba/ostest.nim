# az abcxxx_y okat neveztem at vele
import os, strutils

#[
for i in 1 .. 10:
  createDir("A" & $i)
]#

let tar = "_abc"
createDir(tar)
for f in walkDirs("abc*"):
  let r = f.split("_")
  let g = r[0][3 .. ^1] # szam
  let h = r[1]
  let F = [tar,g,h].join("/")
  echo("renaming: ", f, "->", F )
  if not dirExists(F): 
    createDir(F)
    moveDir(f, F)
