function 생성후방향(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x6605F0 + a*1, d, math.abs(b - c))
	return string
end
