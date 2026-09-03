function 가속도변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6C9C78 + a*2, d, math.abs(b - c))
	return string
end
