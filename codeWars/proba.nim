type 
  PersonR = ref object
    name: string
    age: int

var p = PersonR(name:"asd", age:123)

echo p.name, " ", p.age

proc setp(p:PersonR,name:string="", age:int=0)=
  p.name=name
  p.age=age
  
setp(p,age=3)

echo p.name, " ", p.age
