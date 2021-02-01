#~ proc getMiddle*(s: string): string =
  #~ let l = s.len()
  #~ let m = l div 2 
  #~ if 0 == l mod 2:
    #~ return string(s[m-1 .. m])
  #~ else:
    #~ return string(s[m .. m])


#~ proc getMiddle*(s: string): string =
  #~ let l = s.len()
  #~ let m = l div 2 
  #~ result = string(
  #~ if 0 == l mod 2:
    #~ s[m-1 .. m]
  #~ else:
    #~ s[m .. m]
  #~ )


#~ proc getMiddle*(s: string): string =
  #~ let l = s.len()
  #~ let m = l div 2 
  #~ let mm = if 0 == l mod 2: m-1 else: m 
  #~ result = string(s[mm .. m])

proc getMiddle*(s: string): string =
  let l = s.len()
  let m = l div 2 
  #result = string(s[ (if 0 == l mod 2: m-1 else: m) .. m])
  result = s[ (if 0 == l mod 2: m-1 else: m) .. m]
    
echo getMiddle("test") == "es"
echo getMiddle("testing") == "t"
echo getMiddle("A") == "A"
echo getMiddle("middle") == "dd"
