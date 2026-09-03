function 공격후인공지능(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x664898 + a*1, d, math.abs(b - c))
	return string
end
