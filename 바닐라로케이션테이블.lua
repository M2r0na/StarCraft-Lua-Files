function 바닐라로케이션테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D740 + a*20, d, math.abs(b - c))
	return string
end
