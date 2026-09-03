function 무기의최소사거리(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x656A18 + a*4, d, math.abs(b - c))
	return string
end
