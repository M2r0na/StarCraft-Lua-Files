function 미션브리킹액션기능수식어(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x519E50 + a*4, d, math.abs(b - c))
	return string
end
