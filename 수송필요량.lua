function 수송필요량(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x664410 + a*1, d, math.abs(b - c))
	return string
end
