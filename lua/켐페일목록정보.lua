function 켐페일목록정보(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x4FFC20 + a*8, d, math.abs(b - c))
	return string
end
