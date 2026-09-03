function 스테이시스효과(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CD84 + a*4, d, math.abs(b - c))
	return string
end
