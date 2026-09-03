function 킬테이블(PlayersID,unitnumber,modifier,value) -- (PlayersID, unitnumber, modifier, value)
	tu = {}
	if modifier == setto then
		table.insert(tu, SetDeaths(PlayersID - 2736, SetTo, value, unitnumber));
	end
	if modifier == add then
		table.insert(tu, SetDeaths(PlayersID - 2736, Add, value, unitnumber));
	end
	if modifier == subtract then
		table.insert(tu, SetDeaths(PlayersID - 2736, Subtract, value, unitnumber));
	end
	if modifier == exactly then
		table.insert(tu, Deaths(PlayersID - 2736, AtLeast, value, unitnumber));
	end
	if modifier == atleast then
		table.insert(tu, Deaths(PlayersID - 2736, AtLeast, value, unitnumber));
	end
	if modifier == atmost then
		table.insert(tu, Deaths(PlayersID - 2736, AtMost, value, unitnumber));
	end
	if PlayersID == 8 then
		table.insert(tu, SetDeaths(0 - 2736, modifier, value, unitnumber));
		table.insert(tu, SetDeaths(1 - 2736, modifier, value, unitnumber));
		table.insert(tu, SetDeaths(2 - 2736, modifier, value, unitnumber));
		table.insert(tu, SetDeaths(3 - 2736, modifier, value, unitnumber));
		table.insert(tu, SetDeaths(4 - 2736, modifier, value, unitnumber));
		table.insert(tu, SetDeaths(5 - 2736, modifier, value, unitnumber));
		table.insert(tu, SetDeaths(6 - 2736, modifier, value, unitnumber));
		table.insert(tu, SetDeaths(7 - 2736, modifier, value, unitnumber));
	end
	return tu
end