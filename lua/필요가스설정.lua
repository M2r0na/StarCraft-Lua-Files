function 필요가스설정(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x65FD00 + a*2, d, math.abs(b - c))
	return string
end
