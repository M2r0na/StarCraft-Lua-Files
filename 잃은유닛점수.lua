function 잃은유닛점수(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x581E44 + a*4, d, math.abs(b - c))
	return string
end
