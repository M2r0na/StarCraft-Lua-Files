function 마지막귓말플레이어(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F094 + a*25, d, math.abs(b - c))
	return string
end
