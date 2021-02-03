import strutils
let S = stdin.readLine()
echo(
  1+S.rfind('Z')-S.find('A')
)
