function ¸®¸ÊÇÎ±â´É(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x669E28 + a*1, d, math.abs(b - c))
	return string
end
