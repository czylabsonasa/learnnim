#~ proc toYears*(humanYears: int): tuple[humanYears, catYears, dogYears: int] =
  #~ var (catYears, dogYears) = (15, 15)
  #~ let d = humanYears - 2
  #~ if d>=0:
    #~ (catYears, dogYears) = (24, 24)
    #~ if d>=1:
      #~ (catYears, dogYears) = (24+4*d, 24+5*d)
  #~ result=(humanYears:humanYears, catYears:catYears, dogYears:dogYears)


#~ proc toYears*(humanYears: int): tuple[humanYears, catYears, dogYears: int] =
  #~ case humanYears:
    #~ of 1: (1,15,15)
    #~ of 2: (2,24,24)
    #~ else: (humanYears, 24+(humanYears-2)*4, 24+(humanYears-2)*5)


proc toYears*(humanYears: int): tuple[humanYears, catYears, dogYears: int] =
  if 1==humanYears: 
    (1,15,15) 
  else: 
    (humanYears, 24+(humanYears-2)*4, 24+(humanYears-2)*5)


echo    toYears(1) == (humanYears: 1, catYears: 15, dogYears: 15)
echo    toYears(2) == (humanYears: 2, catYears: 24, dogYears: 24)
echo    toYears(10) == (humanYears: 10, catYears: 56, dogYears: 64)  
