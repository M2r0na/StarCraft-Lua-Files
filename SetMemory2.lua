function SetMemory2(a,b,c)
 string = SetMemory(a - a%4, b, c*256^(a%4))
 return string
end
