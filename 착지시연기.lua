function 착지시연기(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x666778 + a*4, d, math.abs(b - c))
	return string
end
