function 로케이션테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58DC60 + a*20, d, math.abs(b - c))
	return string
end
