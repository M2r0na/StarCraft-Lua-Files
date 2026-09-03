function 업그레이드미네랄(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x655740 + a*2, d, math.abs(b - c))
	return string
end
