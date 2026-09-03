function 가장많이소유점수(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5820B4 + a*4, d, math.abs(b - c))
	return string
end
