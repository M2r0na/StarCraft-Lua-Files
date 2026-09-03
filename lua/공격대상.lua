function 공격대상(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x657998 + a*2, d, math.abs(b - c))
	return string
end
