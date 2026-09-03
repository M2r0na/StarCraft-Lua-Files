function 플레이어의세력(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x58D5B0 + a*1, d, math.abs(b - c))
	return string
end
