x,y = parse.(Int, read(stdin,String) |> split )
if max(x,y)-min(x,y)<3 "Yes" else "No" end |> println
