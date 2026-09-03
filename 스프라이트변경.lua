function 스프라이트변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6CA318 + a*2, d, math.abs(b - c))
	return string
end
