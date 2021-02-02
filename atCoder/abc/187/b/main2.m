# tle
1;
v = fscanf(stdin, "%d");
n = v(1);
pts = reshape( v(2:end), [2,n]);
ans = 0;
for i = 1:n-1
  t=abs(pts(:,i+1:end)-pts(:,i));
  ans += sum(t(1,:)>=t(2,:));
end

fprintf(stdout, "%d\n", ans);
