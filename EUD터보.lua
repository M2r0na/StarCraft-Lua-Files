function EUD≈Õ∫∏(a,b,c) -- (ID, OldCode, NewCode)
		if b < 1 then
			e = c
		else
			e = c*24
		end
		string = SetMemory2(0x6509A0, SetTo, e)
	return string
end