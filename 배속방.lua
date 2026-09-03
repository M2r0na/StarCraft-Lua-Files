function ¹è¼Ó¹æ(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5124F0 + a*4, d, math.abs(b - c))
	return string
end
