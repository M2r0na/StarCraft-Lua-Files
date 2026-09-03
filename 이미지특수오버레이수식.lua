function 이미지특수오버레이수식(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5211E0 + a*4, d, math.abs(b - c))
	return string
end
