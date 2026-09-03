function 비주얼키(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x596A18 + a*1, d, math.abs(b - c))
	return string
end
