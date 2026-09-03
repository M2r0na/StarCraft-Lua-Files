function 미션오브젝트인덱스(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D6C4 + a*4, d, math.abs(b - c))
	return string
end
