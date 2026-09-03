function 캠페인인덱스(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57F244 + a*2, d, math.abs(b - c))
	return string
end
