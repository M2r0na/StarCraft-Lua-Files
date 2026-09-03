function 기술아이콘(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x656430 + a*2, d, math.abs(b - c))
	return string
end
