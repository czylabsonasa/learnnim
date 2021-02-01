v = fscanf(stdin, "%d");
if sum(v(2:2+v(1)-1).*v(2+v(1):end))==0
  fprintf(stdout,"Yes\n");
else
  fprintf(stdout,"No\n");
end
