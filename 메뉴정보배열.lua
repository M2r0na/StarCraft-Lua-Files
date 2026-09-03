function 메뉴정보배열(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x4FFAD0 + a*12, d, math.abs(b - c))
	return string
end
