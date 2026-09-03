function CImage(i)
	return 0x57D728 - 0x40 * i
end
function CSprite(i)
	return 0x63FD04 - 0x24 * i
end
function CUnit(i)
	if i == 0 then
		return 0x59CCA8
	else
		return 0x628298 - 0x150 * (i-1)
	end
end

RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local ID = 0
	local index = 0
	if 0x57D728 - 0x40 * 5000 <= offset and offset <= 0x57D728 + 0x39 then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = (offset - 0x57D728) % 0x40
		index = math.floor((offset - 0x57D728) / 0x40)
		
		index = math.abs(index)

		ID = string.format("%X",ID)
		if Modifier == 7 then
			Modifier = "SetTo"
		end
		if Modifier == 8 then
			Modifier = "Add"
		end
		if Modifier == 9 then
			Modifier = "Subtract"
		end
		return "SetMemory(CImage(" .. index .. ") + 0x" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
	end
end)
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local ID = 0
	local index = 0
	if 0x63FD04 - 0x24 * 2500 <= offset and offset <= 0x63FD04 + 0x23 then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = (offset - 0x63FD04) % 0x24
		index = math.floor((offset - 0x63FD04) / 0x24)
		
		index = math.abs(index)

		ID = string.format("%X",ID)
		if Modifier == 7 then
			Modifier = "SetTo"
		end
		if Modifier == 8 then
			Modifier = "Add"
		end
		if Modifier == 9 then
			Modifier = "Subtract"
		end
		return "SetMemory(CSprite(" .. index .. ") + 0x" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
	end
end)

RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local ID = 0
	local index = 0
	if 0x59CCA8 <= offset and offset <= 0x628298 + 335 then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = (offset - 0x59CCA8) % 336
		index = math.floor((offset - 0x59CCA8) / 336)
		
		ID = string.format("%X",ID)
		if index > 0 then
			index = 1700 - index
		end
		if Modifier == 7 then
			Modifier = "SetTo"
		end
		if Modifier == 8 then
			Modifier = "Add"
		end
		if Modifier == 9 then
			Modifier = "Subtract"
		end
		return "SetMemory(CUnit(" .. index .. ") + 0x" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
	end
end)