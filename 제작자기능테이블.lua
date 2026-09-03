function 제작자기능테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x50C000 + a*4, d, math.abs(b - c))
	return string
end
