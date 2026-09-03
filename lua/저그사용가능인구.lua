function 저그사용가능인구(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x582144 + a*4, d, math.abs(b - c))
	return string
end
