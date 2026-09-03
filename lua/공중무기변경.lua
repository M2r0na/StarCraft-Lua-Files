function 공중무기변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6616E0 + a*1, d, math.abs(b - c))
	return string
end
