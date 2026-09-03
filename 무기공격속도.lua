function 무기공격속도(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x656FB8 + a*1, d, math.abs(b - c))
	return string
end
