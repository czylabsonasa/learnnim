import algorithm

let S=stdin.readLine().sorted

echo(
  if S[0]==S[1] and S[1]!=S[2] and S[2]==S[3]: "Yes"
  else: "No"
)
