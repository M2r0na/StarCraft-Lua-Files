function 사람기본AI(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x662268 + a*1, d, math.abs(b - c))
	return string
end
