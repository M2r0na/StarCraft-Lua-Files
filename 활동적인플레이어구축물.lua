function 활동적인플레이어구축물(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x57EEE0 + a*36, d, math.abs(b - c))
	return string
end
