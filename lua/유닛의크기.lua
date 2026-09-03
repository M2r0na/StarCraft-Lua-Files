function 유닛의크기(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6617C8 + a*2, d, math.abs(b - c))
	return string
end
