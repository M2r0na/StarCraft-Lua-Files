function 필요미네랄설정(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x663888 + a*2, d, math.abs(b - c))
	return string
end
