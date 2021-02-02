function solve(n,s,t)
	i=1
	while i <= n
		ii, j = i, 1
		while ii <= n && s[ii]==t[j]
			ii, j = ii+1, j+1 
		end
		(ii>n) && break
		i+=1
	end
	2n-(n+1-i)
end

n, s, t = split(read(stdin, String))
n = parse(Int, n)

# println("n=",n)
# println("s=",s)
# println("t=",t)

solve(n,s,t) |> println
