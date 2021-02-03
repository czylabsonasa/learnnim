import strscans
var n,m:int
discard scanf(stdin.readLine(),"$i$s$i",n,m)

var 
  G=newSeq[seq[int]](n)
  a,b:int

for i in 0 ..< m:
  discard scanf(stdin.readLine(),"$i$s$i",a,b)
  G[a-1].add(b-1)
  G[b-1].add(a-1)

# for i in 0 ..< n:
  # echo G[i]

var
  used=newSeq[byte](n)
  ans:int
  
proc gen(p,level:int):void=
  if level==n:
    #if 0 in G[p]: ans+=1 # for circle
    ans+=1
    return
  for q in G[p]:
    if byte(0)==used[q]:
      used[q]=1
      gen(q,level+1)
      used[q]=0

used[0]=1
ans=0
gen(0,1)
ans.echo
