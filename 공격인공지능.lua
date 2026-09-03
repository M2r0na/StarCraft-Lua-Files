function 공격인공지능(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x663320 + a*1, d, math.abs(b - c))
	return string
end
