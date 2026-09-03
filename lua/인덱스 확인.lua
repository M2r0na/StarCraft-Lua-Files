function 인덱스확인(unitlndex,modifier,value) -- (unitlndex,modifier,value)
		if value < 1 then
			a = Exactly
		else
			a = modifier
		end
		string = Memory(CUnit(unitlndex) + 0x0C, a, value);
	return string
end
