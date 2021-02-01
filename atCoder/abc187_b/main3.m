# felig vektorizalva: ok
1;
v = fscanf(stdin, "%d");
n = v(1);
pts = reshape( v(2:end), [2,n]);
X = pts(1,:); # nem lett gyorsabb a szetszedestol
Y = pts(2,:);
ans = 0;
for i = 1:n-1
  ans += sum(abs(X(i+1:end)-X(i))>=abs(Y(i+1:end)-Y(i)));
end

fprintf(stdout, "%d\n", ans);
