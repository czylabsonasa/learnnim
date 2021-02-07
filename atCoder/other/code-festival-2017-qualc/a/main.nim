# can you get ac?
import strutils
echo(
  if stdin.readLine.find("AC")<0:
    "No"
  else:
    "Yes"
)
