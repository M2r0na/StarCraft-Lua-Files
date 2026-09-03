function 최대업그레이드레벨(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x655700 + a*1, d, math.abs(b - c))
	return string
end
