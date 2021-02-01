# tle
1;
function ans=solve(v)
  n = v(1);
  pts = reshape( v(2:end), [2,n]);
  ans = 0;
  for i = 1:n-1
    pi = pts(:,i);
    for j = i+1:n
      pj = pts(:,j);
      if abs(pi(2) - pj(2))>abs(pi(1) - pj(1)) continue end
      ans += 1;
    end
  end
end

v = fscanf(stdin, "%d");
fprintf(stdout, "%d\n", solve(v));
