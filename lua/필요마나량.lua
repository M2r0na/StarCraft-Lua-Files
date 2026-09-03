function 필요마나량(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x656380 + a*2, d, math.abs(b - c))
	return string
end
