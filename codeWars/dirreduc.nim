proc dirReduc*(arr: seq[string]): seq[string] =
  proc opp(a,b:string):bool=
    if a=="NORTH": return b=="SOUTH"
    if a=="SOUTH": return b=="NORTH"
    if a=="EAST": return b=="WEST"
    if a=="WEST": return b=="EAST"
      
  for it in arr:
    if result.high >= 0 and true==opp(it,result[result.high]):
      #discard result.pop()
      discard result.pop()
    else:
      result.add(it)
      
let pool = [ 
  @["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"],
  @["NORTH", "WEST", "SOUTH", "EAST"],
  @["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"]
  ]

for it in pool: echo dirReduc(it)
