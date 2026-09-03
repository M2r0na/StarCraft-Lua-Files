function 지역사람ID(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x512688 + a*4, d, math.abs(b - c))
	return string
end
