function 스위치테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58DC40 + a*32, d, math.abs(b - c))
	return string
end
