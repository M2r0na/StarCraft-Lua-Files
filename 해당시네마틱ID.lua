function 해당시네마틱ID(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x5122B8 + a*4, d, math.abs(b - c))
	return string
end
