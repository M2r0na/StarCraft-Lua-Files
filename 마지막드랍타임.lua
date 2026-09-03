function 마지막드랍타임(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x59CC78 + a*4, d, math.abs(b - c))
	return string
end
