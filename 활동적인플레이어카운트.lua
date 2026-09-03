function 활동적인플레이어카운트(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x51F1E1 + a*1, d, math.abs(b - c))
	return string
end
