function UÅ¸°Ù(unitsID,modifier,TargetunitsID) -- (ID, OldCode, NewCode)
		if TargetunitsID < 1 then
			e = 5885096
		else
			e = 6455960+336
		end
	if modifier == exactly then
		string = Memory2(CUnit(unitsID) + 0x5C, Exactly, e - (TargetunitsID*336))
	end
	if modifier == atleast then
		string = Memory2(CUnit(unitsID) + 0x5C, AtLeast, e - (TargetunitsID*336))
	end
	if modifier == atmost then
		string = Memory2(CUnit(unitsID) + 0x5C, AtMost, e - (TargetunitsID*336))
	end
	if modifier == setto then
		string = SetMemory2(CUnit(unitsID) + 0x5C, SetTo, e - (TargetunitsID*336))
	end
	if modifier == add then
		string = SetMemory2(CUnit(unitsID) + 0x5C, Add, e - (TargetunitsID*336))
	end
	if modifier == subtract then
		string = SetMemory2(CUnit(unitsID) + 0x5C, Subtract, e - (TargetunitsID*336))
	end
	return string
end
