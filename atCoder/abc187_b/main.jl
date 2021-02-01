let
  v = parse.(Int, read(stdin, String)|>split)
  n = v[1]
  pts = reshape( v[2:end], (2,n))
  ans = 0
  for i in 1:n-1
    xi, yi = pts[:,i]
    for j in i+1:n
      (abs(yi - pts[2,j])>abs(xi - pts[1,j])) && continue
      ans += 1
    end
  end
  println(ans)
end
