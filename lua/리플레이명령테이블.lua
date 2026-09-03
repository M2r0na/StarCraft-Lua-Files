function 리플레이명령테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x4FF928 + a*16, d, math.abs(b - c))
	return string
end
