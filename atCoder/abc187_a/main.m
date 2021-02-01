v = fscanf(stdin, "%d");
a = v(1); b = v(2);
d2s=@(x) sum(num2str(x)-'0');
fprintf(stdout, "%d\n", max(d2s(v(1)), d2s(v(2)) ));
