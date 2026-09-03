function 에디터어빌리티플래그(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x661518 + a*2, d, math.abs(b - c))
	return string
end
