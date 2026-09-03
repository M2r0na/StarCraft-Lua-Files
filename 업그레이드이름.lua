function 업그레이드이름(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x655A40 + a*2, d, math.abs(b - c))
	return string
end
