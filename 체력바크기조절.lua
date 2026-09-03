function 체력바크기조절(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x665E50 + a*1, d, math.abs(b - c))
	return string
end
