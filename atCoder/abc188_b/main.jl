v = parse.(Int, read(stdin,String) |> split )
if sum(v[2:2+v[1]-1].*v[2+v[1]:end])==0 "Yes" else "No" end |> println
