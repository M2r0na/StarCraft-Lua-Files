function 유닛의얼굴사진변경(a,b,c) -- (ID, OldCode, NewCode)
	if b < c then	
		d = Add	
	else
		d = Subtract
	end
	string = SetMemory2(0x662F88 + a*2, d, math.abs(b - c))
	return string
end
