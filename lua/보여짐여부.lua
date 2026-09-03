function 보여짐여부(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x665C48 + a*1, d, math.abs(b - c))
	return string
end
