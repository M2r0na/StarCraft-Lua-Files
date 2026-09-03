function 무기의최대사거리(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x657470 + a*4, d, math.abs(b - c))
	return string
end
