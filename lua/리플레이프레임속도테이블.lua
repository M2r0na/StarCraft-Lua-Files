function 리플레이프레임속도테이블(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5124D8 + a*4, d, math.abs(b - c))
	return string
end
