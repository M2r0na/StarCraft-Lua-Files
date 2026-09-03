function ½ºÆä¼È¾îºô¸®Æ¼(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x664080 + a*4, d, math.abs(b - c))
	return string
end
