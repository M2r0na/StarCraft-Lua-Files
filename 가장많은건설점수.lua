function 가장많은건설점수(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x581FF4 + a*4, d, math.abs(b - c))
	return string
end
