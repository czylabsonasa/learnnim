proc minValue*(digits: seq[int]): int =
  var frek=[0,0,0,0,0,0,0,0,0,0]
  for it in digits: frek[it]=1
  #var num=0
  for it in 1..9: 
    if frek[it]>0: result=10*result+it
  #return num

echo minValue(@[1,2,3,1,2,3,1,2,3,0])==123
echo minValue(@[9,1,2,3,1,2,3,1,2,3,9])==1239
    
