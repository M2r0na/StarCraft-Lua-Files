function 선택시원크기(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x665A3E + a*1, d, math.abs(b - c))
	return string
end
