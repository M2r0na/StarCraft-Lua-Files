function 인덱스고정(unitlndex,modifier) -- (ID, OldCode)
		if unitlndex < 1 then
			a = 5885096
		else
			a = 6455960+336
		end
		string = SetMemory(0x628438, SetTo, a-(336*unitlndex))
	return string
end
