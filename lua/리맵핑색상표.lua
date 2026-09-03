function 리맵핑색상표(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x669A40 + a*1, d, math.abs(b - c))
	return string
end
