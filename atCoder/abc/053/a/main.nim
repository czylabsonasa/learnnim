import strutils
echo(
  if stdin.readLine().parseInt()<1200: 
    "ABC"
  else:
    "ARC"
)
