import sequtils, sugar, strutils, sets
echo stdin.readAll().splitWhitespace().map(x=>parseInt(x)).toHashSet().len()
