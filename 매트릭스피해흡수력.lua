function 매트릭스피해흡수력(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CDBA + a*4, d, math.abs(b - c))
	return string
end
