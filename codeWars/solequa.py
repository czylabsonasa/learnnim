import math
def sol_equa(n):
  high=int(math.sqrt(float(n)))
  m = n % 4
  if m == 0: low = 2
  elif m == 1: low = 1
  else: low = high+1
  result=[]
  for d in range(low, high+1, 2):
    if 0 == n % d and 0 == (d + (n // d)) % 2:
      x = (d + (n // d)) // 2
      if 0 == (x-d)%2:
        y = (x-d) // 2
        result.append([x,y])
  return result

true
while True:
  n=int(input())
  if n<0: break
  print(sol_equa(n))
