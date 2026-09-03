function ±â¼ú¹Ì³×¶ö(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x656248 + a*2, d, math.abs(b - c))
	return string
end
