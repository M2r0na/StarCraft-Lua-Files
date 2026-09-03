function 블라인드상태(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CDCB + a*4, d, math.abs(b - c))
	return string
end
