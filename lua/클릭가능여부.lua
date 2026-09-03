function 클릭가능여부(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x66C150 + a*1, d, math.abs(b - c))
	return string
end
