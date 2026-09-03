function 스프라이트알고리즘(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CCCA + a*4, d, math.abs(b - c))
	return string
end
