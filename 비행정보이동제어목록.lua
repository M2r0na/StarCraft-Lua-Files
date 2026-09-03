function 비행정보이동제어목록(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6C9858 + a*1, d, math.abs(b - c))
	return string
end
