a,b=input().split()
ds=lambda x: sum(int(c) for c in x) 
print(max(ds(a), ds(b)))
