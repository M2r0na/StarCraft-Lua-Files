function U이름(Unit,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x660260 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660260 + (Unit-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x660260
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U이름(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U체력(Unit,OldHpPointX256,NewHpPointX256) -- (ID, OldCode, NewCode)
	local d, e
	if OldHpPointX256 == SetTo then
		e = 0x662350 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewHpPointX256)
	else
		if OldHpPointX256 < NewHpPointX256 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662350 + (Unit-0) * 4, d, math.abs(OldHpPointX256 - NewHpPointX256))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662350
	local size = 227
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U체력(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U쉴드(Unit,OldShPoint,NewShPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldShPoint == SetTo then
		e = 0x660E00 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewShPoint)
	else
		if OldShPoint < NewShPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660E00 + (Unit-0) * 2, d, math.abs(OldShPoint - NewShPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x660E00
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U쉴드(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U쉴드여부(Unit,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x6647B0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6647B0 + (Unit-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6647B0
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U쉴드여부(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U방어력(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x65FEC8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FEC8 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x65FEC8
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U방어력(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U방어구(Unit,OldArmor,NewArmor) -- (ID, OldCode, NewCode)
	local d, e
	if OldArmor == SetTo then
		e = 0x6635D0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewArmor)
	else
		if OldArmor < NewArmor then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6635D0 + (Unit-0) * 1, d, math.abs(OldArmor - NewArmor))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6635D0
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U방어구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U미네랄(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663888 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663888 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663888
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U미네랄(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U가스(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x65FD00 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FD00 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x65FD00
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U가스(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U생산속도(Unit,OldTime,NewTime) -- (ID, OldCode, NewCode)
	local d, e
	if OldTime == SetTo then
		e = 0x660428 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewTime)
	else
		if OldTime < NewTime then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660428 + (Unit-0) * 2, d, math.abs(OldTime - NewTime))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x660428
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U생산속도(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U지상무기(Unit,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
	local d, e
	if OldWeapon == SetTo then
		e = 0x6636B8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewWeapon)
	else
		if OldWeapon < NewWeapon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6636B8 + (Unit-0) * 1, d, math.abs(OldWeapon - NewWeapon))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6636B8
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U지상무기(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U공중무기(Unit,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
	local d, e
	if OldWeapon == SetTo then
		e = 0x6616E0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewWeapon)
	else
		if OldWeapon < NewWeapon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6616E0 + (Unit-0) * 1, d, math.abs(OldWeapon - NewWeapon))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6616E0
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U공중무기(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U인구소모량(Unit,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x663CE8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663CE8 + (Unit-0) * 1, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663CE8
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U인구소모량(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U인구공급량(Unit,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x6646C8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6646C8 + (Unit-0) * 1, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6646C8
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U인구공급량(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U그룹플래그(Unit,OldGroup,NewGroup) -- (ID, OldCode, NewCode)
	local d, e
	if OldGroup == SetTo then
		e = 0x6637A0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewGroup)
	else
		if OldGroup < NewGroup then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6637A0 + (Unit-0) * 1, d, math.abs(OldGroup - NewGroup))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6637A0
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U그룹플래그(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U수송소모량(Unit,OldLimit255,NewLimit255) -- (ID, OldCode, NewCode)
	local d, e
	if OldLimit255 == SetTo then
		e = 0x664410 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewLimit255)
	else
		if OldLimit255 < NewLimit255 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664410 + (Unit-0) * 1, d, math.abs(OldLimit255 - NewLimit255))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x664410
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U수송소모량(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U수송제공량(Unit,OldLimit255,NewLimit255) -- (ID, OldCode, NewCode)
	local d, e
	if OldLimit255 == SetTo then
		e = 0x660988 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewLimit255)
	else
		if OldLimit255 < NewLimit255 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660988 + (Unit-0) * 1, d, math.abs(OldLimit255 - NewLimit255))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x660988
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U수송제공량(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U생산시점수(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663408 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663408 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663408
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U생산시점수(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U파괴시점수(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663EB8 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663EB8 + (Unit-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663EB8
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U파괴시점수(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U방어타입(Unit,OldArmorType,NewArmorType) -- (ID, OldCode, NewCode)
	local d, e
	if OldArmorType == SetTo then
		e = 0x662180 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewArmorType)
	else
		if OldArmorType < NewArmorType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662180 + (Unit-0) * 1, d, math.abs(OldArmorType - NewArmorType))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662180
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U방어타입(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U시야(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663238 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663238 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663238
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U시야(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U부가사거리(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x662DB8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662DB8 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662DB8
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U부가사거리(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U스페셜어빌리티(Unit,OldSpecial,NewSpecial) -- (ID, OldCode, NewCode)
	local d, e
	if OldSpecial == SetTo then
		e = 0x664080 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewSpecial)
	else
		if OldSpecial < NewSpecial then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664080 + (Unit-0) * 4, d, math.abs(OldSpecial - NewSpecial))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x664080
	local size = 227
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U스페셜어빌리티(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U부가유닛(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x6607C0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6607C0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6607C0
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U부가유닛(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U생산소리(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x661FC0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661FC0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x661FC0
	local size = 106
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U생산소리(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function Uyes소리처음(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x663C10 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663C10 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663C10
	local size = 106
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "Uyes소리처음(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function Uyes소리끝(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x661440 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661440 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x661440
	local size = 106
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "Uyes소리끝(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function Uwhat소리처음(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x65FFB0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x65FFB0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x65FFB0
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "Uwhat소리처음(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function Uwhat소리끝(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x662BF0 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662BF0 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662BF0
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "Uwhat소리끝(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function Upissed소리처음(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x663B38 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663B38 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663B38
	local size = 106
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "Upissed소리처음(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function Upissed소리끝(Unit,OldSfx,NewSfx) -- (ID, OldCode, NewCode)
	local d, e
	if OldSfx == SetTo then
		e = 0x661EE8 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewSfx)
	else
		if OldSfx < NewSfx then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661EE8 + (Unit-0) * 2, d, math.abs(OldSfx - NewSfx))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x661EE8
	local size = 106
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "Upissed소리끝(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U외형(Unit,OldFlingy,NewFlingy) -- (ID, OldCode, NewCode)
	local d, e
	if OldFlingy == SetTo then
		e = 0x6644F8 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewFlingy)
	else
		if OldFlingy < NewFlingy then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6644F8 + (Unit-0) * 1, d, math.abs(OldFlingy - NewFlingy))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6644F8
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U외형(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U생산모습(Unit,OldImage,NewImage) -- (ID, OldCode, NewCode)
	local d, e
	if OldImage == SetTo then
		e = 0x6610B0 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewImage)
	else
		if OldImage < NewImage then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6610B0 + (Unit-0) * 4, d, math.abs(OldImage - NewImage))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6610B0
	local size = 227
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U생산모습(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U포트레이트(Unit,OldPortrait,NewPortrait) -- (ID, OldCode, NewCode)
	local d, e
	if OldPortrait == SetTo then
		e = 0x662F88 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewPortrait)
	else
		if OldPortrait < NewPortrait then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662F88 + (Unit-0) * 2, d, math.abs(OldPortrait - NewPortrait))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662F88
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U포트레이트(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U높이(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x663150 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663150 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663150
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U높이(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U생성방향(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6605F0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6605F0 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6605F0
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U생성방향(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U에디터어빌리티(Unit,OldEditer,NewEditer) -- (ID, OldCode, NewCode)
	local d, e
	if OldEditer == SetTo then
		e = 0x661518 + Unit*2
		string = SetMemory(e - e%4, SetTo, NewEditer)
	else
		if OldEditer < NewEditer then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x661518 + (Unit-0) * 2, d, math.abs(OldEditer - NewEditer))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x661518
	local size = 227
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U에디터어빌리티(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U계급(Unit,OldRank,NewRank) -- (ID, OldCode, NewCode)
	local d, e
	if OldRank == SetTo then
		e = 0x663DD0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewRank)
	else
		if OldRank < NewRank then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663DD0 + (Unit-0) * 1, d, math.abs(OldRank - NewRank))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663DD0
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U계급(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U컴퓨터기본AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x662EA0 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662EA0 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662EA0
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U컴퓨터기본AI(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U사람기본AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x662268 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662268 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662268
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U사람기본AI(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U평상시AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x664898 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664898 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x664898
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U평상시AI(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U공격AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x663320 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663320 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663320
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U공격AI(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U공격과이동AI(Unit,OldAI,NewAI) -- (ID, OldCode, NewCode)
	local d, e
	if OldAI == SetTo then
		e = 0x663A50 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewAI)
	else
		if OldAI < NewAI then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x663A50 + (Unit-0) * 1, d, math.abs(OldAI - NewAI))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x663A50
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U공격과이동AI(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U우클릭명령(Unit,OldRightClick,NewRightClick) -- (ID, OldCode, NewCode)
	local d, e
	if OldRightClick == SetTo then
		e = 0x662098 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewRightClick)
	else
		if OldRightClick < NewRightClick then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x662098 + (Unit-0) * 1, d, math.abs(OldRightClick - NewRightClick))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662098
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U우클릭명령(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U내부인공지능(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x660178 + Unit*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x660178 + (Unit-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x660178
	local size = 227
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U내부인공지능(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function U인페스티드유닛(Unit,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x664980 + Unit*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x664980 + (Unit-106) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x664980
	local size = 95
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 106
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "U인페스티드유닛(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W공격력(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656EB0 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656EB0 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656EB0
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W공격력(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W공격력증가량(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657678 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657678 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657678
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W공격력증가량(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W공격횟수(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6564E0 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6564E0 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6564E0
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W공격횟수(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W공격속도(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656FB8 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656FB8 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656FB8
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W공격속도(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W이름(Weapon,OldWeapon,NewWeapon) -- (ID, OldCode, NewCode)
	local d, e
	if OldWeapon == SetTo then
		e = 0x6572E0 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewWeapon)
	else
		if OldWeapon < NewWeapon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6572E0 + (Weapon-0) * 2, d, math.abs(OldWeapon - NewWeapon))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6572E0
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W이름(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W방식(Weapon,OldMisslieType,NewMisslieType) -- (ID, OldCode, NewCode)
	local d, e
	if OldMisslieType == SetTo then
		e = 0x656670 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewMisslieType)
	else
		if OldMisslieType < NewMisslieType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656670 + (Weapon-0) * 1, d, math.abs(OldMisslieType - NewMisslieType))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656670
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W방식(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W외형(Weapon,OldFlingy,NewFlingy) -- (ID, OldCode, NewCode)
	local d, e
	if OldFlingy == SetTo then
		e = 0x656CA8 + Weapon*4
		string = SetMemory(e - e%4, SetTo, NewFlingy)
	else
		if OldFlingy < NewFlingy then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656CA8 + (Weapon-0) * 4, d, math.abs(OldFlingy - NewFlingy))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656CA8
	local size = 129
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W외형(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W아이콘(Weapon,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
	local d, e
	if OldIcon == SetTo then
		e = 0x656780 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewIcon)
	else
		if OldIcon < NewIcon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656780 + (Weapon-0) * 2, d, math.abs(OldIcon - NewIcon))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656780
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W아이콘(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W공격각도(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656990 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656990 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656990
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W공격각도(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W투사체지속시간(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657040 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657040 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657040
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W투사체지속시간(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W발사회전값(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657888 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657888 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657888
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W발사회전값(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W공격대상(Weapon,OldAttackTarget,NewAttackTarget) -- (ID, OldCode, NewCode)
	local d, e
	if OldAttackTarget == SetTo then
		e = 0x657998 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewAttackTarget)
	else
		if OldAttackTarget < NewAttackTarget then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657998 + (Weapon-0) * 2, d, math.abs(OldAttackTarget - NewAttackTarget))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657998
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W공격대상(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W최소사거리(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656A18 + Weapon*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656A18 + (Weapon-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656A18
	local size = 129
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W최소사거리(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W최대사거리(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657470 + Weapon*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657470 + (Weapon-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657470
	local size = 129
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W최대사거리(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W스플래쉬안쪽(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656888 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656888 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656888
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W스플래쉬안쪽(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W스플래쉬중간(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6570C8 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6570C8 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6570C8
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W스플래쉬중간(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W스플래쉬외곽(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657780 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657780 + (Weapon-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657780
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W스플래쉬외곽(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W폭발형(Weapon,OldExplosionType,NewExplosionType) -- (ID, OldCode, NewCode)
	local d, e
	if OldExplosionType == SetTo then
		e = 0x6566F8 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewExplosionType)
	else
		if OldExplosionType < NewExplosionType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6566F8 + (Weapon-0) * 1, d, math.abs(OldExplosionType - NewExplosionType))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6566F8
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W폭발형(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W데미지형식(Weapon,OldAttackType,NewAttackType) -- (ID, OldCode, NewCode)
	local d, e
	if OldAttackType == SetTo then
		e = 0x657258 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewAttackType)
	else
		if OldAttackType < NewAttackType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657258 + (Weapon-0) * 1, d, math.abs(OldAttackType - NewAttackType))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657258
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W데미지형식(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W업그레이드(Weapon,OldUpgrade,NewUpgrade) -- (ID, OldCode, NewCode)
	local d, e
	if OldUpgrade == SetTo then
		e = 0x6571D0 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewUpgrade)
	else
		if OldUpgrade < NewUpgrade then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6571D0 + (Weapon-0) * 1, d, math.abs(OldUpgrade - NewUpgrade))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6571D0
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W업그레이드(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function W타겟에러메세지(Weapon,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x656568 + Weapon*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656568 + (Weapon-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656568
	local size = 129
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "W타겟에러메세지(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function WX좌표(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x657910 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x657910 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x657910
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "WX좌표(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function WY좌표(Weapon,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656C20 + Weapon*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656C20 + (Weapon-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656C20
	local size = 129
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "WY좌표(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function F최고속도(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9EF8 + Flingy*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9EF8 + (Flingy-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6C9EF8
	local size = 208
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "F최고속도(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function F가속도(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9C78 + Flingy*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9C78 + (Flingy-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6C9C78
	local size = 208
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "F가속도(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function F멈추는거리(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9930 + Flingy*4
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9930 + (Flingy-0) * 4, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6C9930
	local size = 208
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "F멈추는거리(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function F회전반경(Flingy,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6C9E20 + Flingy*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9E20 + (Flingy-0) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6C9E20
	local size = 208
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "F회전반경(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function F이동제어(Flingy,OldFlingyType,NewFlingyType) -- (ID, OldCode, NewCode)
	local d, e
	if OldFlingyType == SetTo then
		e = 0x6C9858 + Flingy*1
		string = SetMemory(e - e%4, SetTo, NewFlingyType)
	else
		if OldFlingyType < NewFlingyType then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6C9858 + (Flingy-0) * 1, d, math.abs(OldFlingyType - NewFlingyType))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6C9858
	local size = 208
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "F이동제어(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function F스프라이트(Flingy,OldSprite,NewSprite) -- (ID, OldCode, NewCode)
	local d, e
	if OldSprite == SetTo then
		e = 0x6CA318 + Flingy*2
		string = SetMemory(e - e%4, SetTo, NewSprite)
	else
		if OldSprite < NewSprite then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6CA318 + (Flingy-0) * 2, d, math.abs(OldSprite - NewSprite))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6CA318
	local size = 208
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "F스프라이트(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function S보여짐여부(Sprite,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x665C48 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665C48 + (Sprite-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x665C48
	local size = 516
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "S보여짐여부(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function S선택원크기(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x665AC0 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665AC0 + (Sprite-130) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x665AC0
	local size = 386
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 130
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "S선택원크기(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function S체력바크기(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x665E50 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665E50 + (Sprite-130) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x665E50
	local size = 386
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 130
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "S체력바크기(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function S선택원위치(Sprite,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x665FD8 + Sprite*1
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x665FD8 + (Sprite-130) * 1, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x665FD8
	local size = 386
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 130
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "S선택원위치(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function S이미지(Sprite,OldImage,NewImage) -- (ID, OldCode, NewCode)
	local d, e
	if OldImage == SetTo then
		e = 0x666160 + Sprite*2
		string = SetMemory(e - e%4, SetTo, NewImage)
	else
		if OldImage < NewImage then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x666160 + (Sprite-0) * 2, d, math.abs(OldImage - NewImage))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x666160
	local size = 516
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "S이미지(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function IGRP파일(Image,OldPointer,NewPointer) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointer == SetTo then
		e = 0x668AA0 + Image*4
		string = SetMemory(e - e%4, SetTo, NewPointer)
	else
		if OldPointer < NewPointer then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x668AA0 + (Image-0) * 4, d, math.abs(OldPointer - NewPointer))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x668AA0
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "IGRP파일(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I스크립트(Image,OldScript,NewScript) -- (ID, OldCode, NewCode)
	local d, e
	if OldScript == SetTo then
		e = 0x66EC48 + Image*4
		string = SetMemory(e - e%4, SetTo, NewScript)
	else
		if OldScript < NewScript then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66EC48 + (Image-0) * 4, d, math.abs(OldScript - NewScript))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x66EC48
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I스크립트(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I회전(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x66E860 + Image*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66E860 + (Image-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x66E860
	local size = 998
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I회전(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I클릭(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x66C150 + Image*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66C150 + (Image-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x66C150
	local size = 998
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I클릭(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I클로킹(Image,OldHas,NewHas) -- (ID, OldCode, NewCode)
	local d, e
	if OldHas == SetTo then
		e = 0x667718 + Image*1
		string = SetMemory(e - e%4, SetTo, NewHas)
	else
		if OldHas < NewHas then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x667718 + (Image-0) * 1, d, math.abs(OldHas - NewHas))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x667718
	local size = 998
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I클로킹(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I리맵핑색상(Image,OldColor,NewColor) -- (ID, OldCode, NewCode)
	local d, e
	if OldColor == SetTo then
		e = 0x669A40 + Image*1
		string = SetMemory(e - e%4, SetTo, NewColor)
	else
		if OldColor < NewColor then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x669A40 + (Image-0) * 1, d, math.abs(OldColor - NewColor))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x669A40
	local size = 998
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I리맵핑색상(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I리맵핑기능(Image,OldFuction,NewFuction) -- (ID, OldCode, NewCode)
	local d, e
	if OldFuction == SetTo then
		e = 0x669E28 + Image*1
		string = SetMemory(e - e%4, SetTo, NewFuction)
	else
		if OldFuction < NewFuction then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x669E28 + (Image-0) * 1, d, math.abs(OldFuction - NewFuction))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x669E28
	local size = 998
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I리맵핑기능(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I공격오버레이(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66B1B0 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66B1B0 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x66B1B0
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I공격오버레이(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I데미지오버레이(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66A210 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66A210 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x66A210
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I데미지오버레이(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I특수오버레이(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x667B00 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x667B00 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x667B00
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I특수오버레이(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I착지시연기(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x666778 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x666778 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x666778
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I착지시연기(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I띄울때연기(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66D8C0 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66D8C0 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x66D8C0
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I띄울때연기(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function I쉴드그래픽(Image,OldIofile,NewIofile) -- (ID, OldCode, NewCode)
	local d, e
	if OldIofile == SetTo then
		e = 0x66C538 + Image*4
		string = SetMemory(e - e%4, SetTo, NewIofile)
	else
		if OldIofile < NewIofile then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x66C538 + (Image-0) * 4, d, math.abs(OldIofile - NewIofile))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x66C538
	local size = 998
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "I쉴드그래픽(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP아이콘(Upgrade,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
	local d, e
	if OldIcon == SetTo then
		e = 0x655AC0 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewIcon)
	else
		if OldIcon < NewIcon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655AC0 + (Upgrade-0) * 2, d, math.abs(OldIcon - NewIcon))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655AC0
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP아이콘(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP이름(Upgrade,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x655A40 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655A40 + (Upgrade-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655A40
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP이름(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP미네랄(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x655740 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655740 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655740
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP미네랄(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP가스(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x655840 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655840 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655840
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP가스(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP시간(Upgrade,OldTime,NewTime) -- (ID, OldCode, NewCode)
	local d, e
	if OldTime == SetTo then
		e = 0x655B80 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewTime)
	else
		if OldTime < NewTime then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655B80 + (Upgrade-0) * 2, d, math.abs(OldTime - NewTime))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655B80
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP시간(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP추가미네랄(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6559C0 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6559C0 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6559C0
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP추가미네랄(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP추가가스(Upgrade,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x6557C0 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6557C0 + (Upgrade-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6557C0
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP추가가스(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP추가시간(Upgrade,OldTime,NewTime) -- (ID, OldCode, NewCode)
	local d, e
	if OldTime == SetTo then
		e = 0x655940 + Upgrade*2
		string = SetMemory(e - e%4, SetTo, NewTime)
	else
		if OldTime < NewTime then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655940 + (Upgrade-0) * 2, d, math.abs(OldTime - NewTime))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655940
	local size = 60
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP추가시간(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP최대레벨(Upgrade,OldUpgrade,NewUpgrade) -- (ID, OldCode, NewCode)
	local d, e
	if OldUpgrade == SetTo then
		e = 0x655700 + Upgrade*1
		string = SetMemory(e - e%4, SetTo, NewUpgrade)
	else
		if OldUpgrade < NewUpgrade then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655700 + (Upgrade-0) * 1, d, math.abs(OldUpgrade - NewUpgrade))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655700
	local size = 60
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP최대레벨(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function UP종족(Upgrade,OldTribe,NewTribe) -- (ID, OldCode, NewCode)
	local d, e
	if OldTribe == SetTo then
		e = 0x655BFC + Upgrade*1
		string = SetMemory(e - e%4, SetTo, NewTribe)
	else
		if OldTribe < NewTribe then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x655BFC + (Upgrade-0) * 1, d, math.abs(OldTribe - NewTribe))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x655BFC
	local size = 60
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "UP종족(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function T아이콘(Tech,OldIcon,NewIcon) -- (ID, OldCode, NewCode)
	local d, e
	if OldIcon == SetTo then
		e = 0x656430 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewIcon)
	else
		if OldIcon < NewIcon then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656430 + (Tech-0) * 2, d, math.abs(OldIcon - NewIcon))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656430
	local size = 43
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "T아이콘(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function T이름(Tech,OldStattxt,NewStattxt) -- (ID, OldCode, NewCode)
	local d, e
	if OldStattxt == SetTo then
		e = 0x6562A0 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewStattxt)
	else
		if OldStattxt < NewStattxt then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6562A0 + (Tech-0) * 2, d, math.abs(OldStattxt - NewStattxt))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6562A0
	local size = 43
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "T이름(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function T미네랄(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
	local d, e
	if OldTech == SetTo then
		e = 0x656248 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewTech)
	else
		if OldTech < NewTech then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656248 + (Tech-0) * 2, d, math.abs(OldTech - NewTech))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656248
	local size = 43
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "T미네랄(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function T가스(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
	local d, e
	if OldTech == SetTo then
		e = 0x6561F0 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewTech)
	else
		if OldTech < NewTech then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6561F0 + (Tech-0) * 2, d, math.abs(OldTech - NewTech))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6561F0
	local size = 43
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "T가스(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function T시간(Tech,OldTech,NewTech) -- (ID, OldCode, NewCode)
	local d, e
	if OldTech == SetTo then
		e = 0x6563D8 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewTech)
	else
		if OldTech < NewTech then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x6563D8 + (Tech-0) * 2, d, math.abs(OldTech - NewTech))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6563D8
	local size = 43
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "T시간(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function T마나량(Tech,OldPoint,NewPoint) -- (ID, OldCode, NewCode)
	local d, e
	if OldPoint == SetTo then
		e = 0x656380 + Tech*2
		string = SetMemory(e - e%4, SetTo, NewPoint)
	else
		if OldPoint < NewPoint then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656380 + (Tech-0) * 2, d, math.abs(OldPoint - NewPoint))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656380
	local size = 43
	local byte = 2
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "T마나량(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function T종족(Tech,OldTribe,NewTribe) -- (ID, OldCode, NewCode)
	local d, e
	if OldTribe == SetTo then
		e = 0x656488 + Tech*1
		string = SetMemory(e - e%4, SetTo, NewTribe)
	else
		if OldTribe < NewTribe then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x656488 + (Tech-0) * 1, d, math.abs(OldTribe - NewTribe))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x656488
	local size = 43
	local byte = 1
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "T종족(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P저그사용가능인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582144 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582144 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x582144
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P저그사용가능인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P저그사용인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582174 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582174 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x582174
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P저그사용인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P저그최대인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x5821A4 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5821A4 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x5821A4
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P저그최대인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P테란사용가능인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x5821D4 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5821D4 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x5821D4
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P테란사용가능인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P테란사용인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582204 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582204 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x582204
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P테란사용인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P테란최대인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582234 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582234 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x582234
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P테란최대인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P프로토스사용가능인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582264 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582264 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x582264
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P프로토스사용가능인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P프로토스사용인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x582294 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x582294 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x582294
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P프로토스사용인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function P프로토스최대인구(Player,OldPointPER2,NewPointPER2) -- (ID, OldCode, NewCode)
	local d, e
	if OldPointPER2 == SetTo then
		e = 0x5822C4 + Player*4
		string = SetMemory(e - e%4, SetTo, NewPointPER2)
	else
		if OldPointPER2 < NewPointPER2 then
			d = Add
		else
			d = Subtract
		end
		string = SetMemory2(0x5822C4 + (Player-0) * 4, d, math.abs(OldPointPER2 - NewPointPER2))
	end
	return string
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x5822C4
	local size = 11
	local byte = 4
	local ID = 0
	local old = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0
		if Modifier == 7 then
			Modifier = "SetTo"
		else
		if byte == 1 then
				if Number >= 16777216 then
					Number = Number / 16777216
					ID = ID + 3
				end
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 2
				end
				if Number >= 256 then
					Number = Number / 256
					ID = ID + 1
				end
			end
			if byte == 2 then
				if Number >= 65536 then
					Number = Number / 65536
					ID = ID + 1
				end
			end
			old = Number
			if Modifier == 8 then
				Modifier = 0
			end
			if Modifier == 9 then
				Modifier = Number
				Number = 0
			end
		end
		if old == math.floor(old) then
			return "P프로토스최대인구(" .. ID .. ", " .. Modifier .. ", " .. Number .. ");",100
		end
	end
end)
function L위치설정(LocationNum,Left,Up,Right,Down) -- (LocationNum,Left,Up,Right,Down)
	local tu = {}
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*0, SetTo, Left))
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*1, SetTo, Up))
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*2, SetTo, Right)) 
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*3, SetTo, Down))
	return tu
end

function L위치L(LocationNum,Modify,Num) -- (LocationNum,Modify,Num)
	local tu = {}
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*0, Modify, Num))
	return tu
end
function L위치U(LocationNum,Modify,Num) -- (LocationNum,Modify,Num)
	local tu = {}
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*1, Modify, Num))
	return tu
end
function L위치R(LocationNum,Modify,Num) -- (LocationNum,Modify,Num)
	local tu = {}
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*2, Modify, Num)) 
	return tu
end
function L위치D(LocationNum,Modify,Num) -- (LocationNum,Modify,Num)
	local tu = {}
	table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*3, Modify, Num))
	return tu
end


RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x58DC60
	local size = 255
	local byte = 20
	local ID = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte

		if Modifier == 7 then
			Modifier = "SetTo"
		end
		if Modifier == 8 then
			Modifier = "Add"
		end
		if Modifier == 9 then
			Modifier = "Subtract"
		end


		if (offset - base) % 20 == 0 then
			return "L위치L(" .. ID .. ", " .. Modifier .. ", " .. Number .. "); ",100
		end
		if (offset - base) % 20 == 4 then
			return "L위치U(" .. ID .. ", " .. Modifier .. ", " .. Number .. "); ",100
		end
		if (offset - base) % 20 == 8 then
			return "L위치R(" .. ID .. ", " .. Modifier .. ", " .. Number .. "); ",100
		end
		if (offset - base) % 20 == 12 then
			return "L위치D(" .. ID .. ", " .. Modifier .. ", " .. Number .. "); ",100
		end
	end
end)

function L위치이동2(LocationNum,Type,Value) -- (LocationNum,Type,Value)
	local tu = {}
	if Type == 'R' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*0, Add, Value))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*2, Add, Value)) 
	end	
	if Type == 'L' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*0, Subtract, Value))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*2, Subtract, Value)) 
	end
	if Type == 'U' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*1, Subtract, Value))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*3, Subtract, Value))
	end
	if Type == 'D' then
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*1, Add, Value))
		table.insert(tu, SetMemory(0x58DC60 + 0x14*LocationNum + 4*3, Add, Value))
	end
	return tu
end

function L위치이동(LocationNum,X,Y) -- (LocationNum,X,Y)
	local tu = {}
	if X>0 then
		table.insert(tu, L위치이동2(LocationNum, "R", X))
	end
	if X<0 then
		table.insert(tu, L위치이동2(LocationNum, "L", X*(-1)))
	end
	if Y>0 then
		table.insert(tu, L위치이동2(LocationNum, "U", Y))
	end
	if Y<0 then
		table.insert(tu, L위치이동2(LocationNum, "D", Y*(-1)))
	end
	return tu
end

function P최대업그레이드(Player, Upnum, Upcount) -- (Player, Upnum, Upcount)
	if Upnum < 46 then
		if Upcount > 0 then
			string = SetMemory2(0x58D088 + 0x2E*Player + Upnum, Add, Upcount)
		else
			string = SetMemory2(0x58D088 + 0x2E*Player + Upnum, Subtract, math.abs(Upcount))
		end
	else
		if Upcount > 0 then
			string = SetMemory2(0x58F278 + 0xF*Player + Upnum - 46, Add, Upcount)
		else
			string = SetMemory2(0x58F278 + 0xF*Player + Upnum - 46, Subtract, math.abs(Upcount))
		end
	end
	return string
end

function P현재테크(Player, Upnum, Upcount) -- (Player, Upnum, Upcount)
	if Upnum < 24 then
		if Upcount > 0 then
			string = SetMemory2(0x58CE24 + 0x18*Player + Upnum, Add, Upcount)
		else
			string = SetMemory2(0x58CE24 + 0x18*Player + Upnum, Subtract, math.abs(Upcount))
		end
	else
		if Upcount > 0 then
			string = SetMemory2(0x58F050 + 0x14*Player + Upnum - 24, Add, Upcount)
		else
			string = SetMemory2(0x58F050 + 0x14*Player + Upnum - 24, Subtract, math.abs(Upcount))
		end
	end
	return string
end

function P현재업그레이드(Player, Upnum, Upcount) -- (Player, Upnum, Upcount)
	if Upnum < 46 then
		if Upcount > 0 then
			string = SetMemory2(0x58D2B0 + 0x2E*Player + Upnum, Add, Upcount)
		else
			string = SetMemory2(0x58D2B0 + 0x2E*Player + Upnum, Subtract, math.abs(Upcount))
		end
	else
		if Upcount > 0 then
			string = SetMemory2(0x58F32C + 0xF*Player + Upnum - 46, Add, Upcount)
		else
			string = SetMemory2(0x58F32C + 0xF*Player + Upnum - 46, Subtract, math.abs(Upcount))
		end
	end
	return string
end

function P현재테크(Player, Upnum, Upcount) -- (Player, Upnum, Upcount)
	if Upnum < 24 then
		if Upcount > 0 then
			string = SetMemory2(0x58CF44 + 0x18*Player + Upnum, Add, Upcount)
		else
			string = SetMemory2(0x58CF44 + 0x18*Player + Upnum, Subtract, math.abs(Upcount))
		end
	else
		if Upcount > 0 then
			string = SetMemory2(0x58F140 + 0x14*Player + Upnum - 24, Add, Upcount)
		else
			string = SetMemory2(0x58F140 + 0x14*Player + Upnum - 24, Subtract, math.abs(Upcount))
		end
	end
	return string
end

function SetMemory2(a,b,c)
 string = SetMemory(a - a%4, b, c*256^(a%4))
 return string
end

function U생산크기(UnitID,Width,Height) -- (UnitID,가로,세로)
	local tu = {}	
	table.insert(tu, SetMemory(0x662860+UnitID*4,SetTo,Width+Height*65536))	
	return tu
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x662860
	local size = 227
	local byte = 4
	local ID = 0
	local right = 0
	local left = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte
		right = Number % 65536
		left = (Number - right) / 65536
		return "U생산크기(" .. ID .. ", " .. right .. ", " .. left .. "); ",100
	end
end)

function U애드온위치(UnitID,XPos,YPos) -- (UnitID,가로,세로)
	local tu = {}	
	table.insert(tu, SetMemory(0x6626E0+(UnitID-106)*4,SetTo,XPos+YPos*65536))	
	return tu
end
RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6626E0
	local size = 227
	local byte = 4
	local ID = 0
	local right = 0
	local left = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 106
		right = Number % 65536
		left = (Number - right) / 65536
		return "U애드온위치(" .. ID .. ", " .. right .. ", " .. left .. "); ",100
	end
end)

function U크기(UnitID,Left,Right,Up,Down) -- (UnitID,Left,Right,Up,Down)
	local tu = {}	
	table.insert(tu, SetMemory(0x6617C8+UnitID*8,SetTo,Left+Up*65536))	
	table.insert(tu, SetMemory(0x6617C8+UnitID*8+4,SetTo,Right+Down*65536))
	return tu
end

function U크기LU(UnitID,Left,Up) -- (UnitID,Left,Up)
	local tu = {}	
	table.insert(tu, SetMemory(0x6617C8+UnitID*8,SetTo,Left+Up*65536))	
	return tu
end

function U크기RD(UnitID,Righ,Down) -- (UnitID,Righ,Down)
	local tu = {}	
	table.insert(tu, SetMemory(0x6617C8+UnitID*8 + 4,SetTo,Righ+Down*65536))	
	return tu
end

RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x6617C8
	local size = 227
	local byte = 8
	local ID = 0
	local right = 0
	local left = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte
		right = Number % 65536
		left = (Number - right) / 65536
		if (offset - base) % 8 == 0 then
			return "U크기LU(" .. ID .. ", " .. right .. ", " .. left .. "); ",100
		end
		if (offset - base) % 8 == 4 then
			return "U크기RD(" .. ID .. ", " .. right .. ", " .. left .. "); ",100
		end
	end
end)

function V닉네임(Player, Name, Type, Race, Force, Mode)
	tu = {}
	local len = string.len(Name)
	local a = string.format('%d',string.byte(Name, 1))
	local b = 0
	local c = 0
	local d = 0
	if Mode == "A" then
		table.insert(tu, SetMemory(0x57EEE8 + Player * 0x24, SetTo, Type + Race * 256 + Force * 65536 + a * 16777216))
	end
	if Mode == "C" then
		table.insert(tu, Memory(0x57EEE8 + Player * 0x24, Exactly, Type + Race * 256 + Force * 65536 + a * 16777216))
	end
	for i = 1, 4 do
		a = 0
		b = 0
		c = 0
		d = 0
		if len >= (4 * (i - 1) + 2) then
			a = string.format('%d',string.byte(Name, 4 * (i - 1) + 2))
		end
		if len >= (4 * (i - 1) + 3) then
			b = string.format('%d',string.byte(Name, 4 * (i - 1) + 3))
		end
		if len >= (4 * (i - 1) + 4) then
			c = string.format('%d',string.byte(Name, 4 * (i - 1) + 4))
		end
		if len >= (4 * (i - 1) + 5) then
			d = string.format('%d',string.byte(Name, 4 * (i - 1) + 5))
		end
		if Mode == "A" then
			table.insert(tu, SetMemory(0x57EEE8 + (i)*4 + Player * 0x24, SetTo, a + b * 256 + c * 65536 + d * 16777216))
		end
		if Mode == "C" then
			table.insert(tu, Memory(0x57EEE8 + (i)*4 + Player * 0x24, Exactly, a + b * 256 + c * 65536 + d * 16777216))
		end
	end
	return tu
end


function V방제목(Name)
	tu = {}
	local len = string.len(Name)
	local a = 0
	local b = 0
	local c = 0
	local d = 0
	for i = 1, 5 do
		a = 0
		b = 0
		c = 0
		d = 0
		if len >= (4 * (i - 1) + 1) then
			a = string.format('%d',string.byte(Name, 4 * (i - 1) + 1))
		end
		if len >= (4 * (i - 1) + 2) then
			b = string.format('%d',string.byte(Name, 4 * (i - 1) + 2))
		end
		if len >= (4 * (i - 1) + 3) then
			c = string.format('%d',string.byte(Name, 4 * (i - 1) + 3))
		end
		if len >= (4 * (i - 1) + 4) then
			d = string.format('%d',string.byte(Name, 4 * (i - 1) + 4))
		end

		table.insert(tu, Memory(0x6D0F48 + (i-1)*4, Exactly, a + b * 256 + c * 65536 + d * 16777216))

	end
	return tu
end

function V키보드(Name, Modi, Type)
	local KeyCode = VKCode(Name)
	if Type == "S" then
		string = SetMemory2(0x596A18 + KeyCode, Modi, 1)
	end
	if Type == "M" then
		string = Memory(0x596A18 + KeyCode, Modi, 1)
	end
	return string
end

function VKCode(Name)
	if Name == "ABNT_C1" then
		return "0xC1"
	end
	if Name == "ABNT_C2" then
		return "0xC2"
	end
	if Name == "ADD" then
		return "0x6B"
	end
	if Name == "ATTN" then
		return "0xF6"
	end
	if Name == "BACK" then
		return "0x08"
	end
	if Name == "CANCEL" then
		return "0x03"
	end
	if Name == "CLEAR" then
		return "0x0C"
	end
	if Name == "CRSEL" then
		return "0xF7"
	end
	if Name == "DECIMAL" then
		return "0x6E"
	end
	if Name == "DIVIDE" then
		return "0x6F"
	end
	if Name == "EREOF" then
		return "0xF9"
	end
	if Name == "ESCAPE" then
		return "0x1B"
	end
	if Name == "EXECUTE" then
		return "0x2B"
	end
	if Name == "EXSEL" then
		return "0xF8"
	end
	if Name == "ICO_CLEAR" then
		return "0xE6"
	end
	if Name == "ICO_HELP" then
		return "0xE3"
	end
	if Name == "KEY_0" then
		return "0x30"
	end
	if Name == "KEY_1" then
		return "0x31"
	end
	if Name == "KEY_2" then
		return "0x32"
	end
	if Name == "KEY_3" then
		return "0x33"
	end
	if Name == "KEY_4" then
		return "0x34"
	end
	if Name == "KEY_5" then
		return "0x35"
	end
	if Name == "KEY_6" then
		return "0x36"
	end
	if Name == "KEY_7" then
		return "0x37"
	end
	if Name == "KEY_8" then
		return "0x38"
	end
	if Name == "KEY_9" then
		return "0x39"
	end
	if Name == "KEY_A" then
		return "0x41"
	end
	if Name == "KEY_B" then
		return "0x42"
	end
	if Name == "KEY_C" then
		return "0x43"
	end
	if Name == "KEY_D" then
		return "0x44"
	end
	if Name == "KEY_E" then
		return "0x45"
	end
	if Name == "KEY_F" then
		return "0x46"
	end
	if Name == "KEY_G" then
		return "0x47"
	end
	if Name == "KEY_H" then
		return "0x48"
	end
	if Name == "KEY_I" then
		return "0x49"
	end
	if Name == "KEY_J" then
		return "0x4A"
	end
	if Name == "KEY_K" then
		return "0x4B"
	end
	if Name == "KEY_L" then
		return "0x4C"
	end
	if Name == "KEY_M" then
		return "0x4D"
	end
	if Name == "KEY_N" then
		return "0x4E"
	end
	if Name == "KEY_O" then
		return "0x4F"
	end
	if Name == "KEY_P" then
		return "0x50"
	end
	if Name == "KEY_Q" then
		return "0x51"
	end
	if Name == "KEY_R" then
		return "0x52"
	end
	if Name == "KEY_S" then
		return "0x53"
	end
	if Name == "KEY_T" then
		return "0x54"
	end
	if Name == "KEY_U" then
		return "0x55"
	end
	if Name == "KEY_V" then
		return "0x56"
	end
	if Name == "KEY_W" then
		return "0x57"
	end
	if Name == "KEY_X" then
		return "0x58"
	end
	if Name == "KEY_Y" then
		return "0x59"
	end
	if Name == "KEY_Z" then
		return "0x5A"
	end
	if Name == "MULTIPLY" then
		return "0x6A"
	end
	if Name == "NONAME" then
		return "0xFC"
	end
	if Name == "NUMPAD0" then
		return "0x60"
	end
	if Name == "NUMPAD1" then
		return "0x61"
	end
	if Name == "NUMPAD2" then
		return "0x62"
	end
	if Name == "NUMPAD3" then
		return "0x63"
	end
	if Name == "NUMPAD4" then
		return "0x64"
	end
	if Name == "NUMPAD5" then
		return "0x65"
	end
	if Name == "NUMPAD6" then
		return "0x66"
	end
	if Name == "NUMPAD7" then
		return "0x67"
	end
	if Name == "NUMPAD8" then
		return "0x68"
	end
	if Name == "NUMPAD9" then
		return "0x69"
	end
	if Name == "OEM_1" then
		return "0xBA"
	end
	if Name == "OEM_102" then
		return "0xE2"
	end
	if Name == "OEM_2" then
		return "0xBF"
	end
	if Name == "OEM_3" then
		return "0xC0"
	end
	if Name == "OEM_4" then
		return "0xDB"
	end
	if Name == "OEM_5" then
		return "0xDC"
	end
	if Name == "OEM_6" then
		return "0xDD"
	end
	if Name == "OEM_7" then
		return "0xDE"
	end
	if Name == "OEM_8" then
		return "0xDF"
	end
	if Name == "OEM_ATTN" then
		return "0xF0"
	end
	if Name == "OEM_AUTO" then
		return "0xF3"
	end
	if Name == "OEM_AX" then
		return "0xE1"
	end
	if Name == "OEM_BACKTAB" then
		return "0xF5"
	end
	if Name == "OEM_CLEAR" then
		return "0xFE"
	end
	if Name == "OEM_COMMA" then
		return "0xBC"
	end
	if Name == "OEM_COPY" then
		return "0xF2"
	end
	if Name == "OEM_CUSEL" then
		return "0xEF"
	end
	if Name == "OEM_ENLW" then
		return "0xF4"
	end
	if Name == "OEM_FINISH" then
		return "0xF1"
	end
	if Name == "OEM_FJ_LOYA" then
		return "0x95"
	end
	if Name == "OEM_FJ_MASSHOU" then
		return "0x93"
	end
	if Name == "OEM_FJ_ROYA" then
		return "0x96"
	end
	if Name == "OEM_FJ_TOUROKU" then
		return "0x94"
	end
	if Name == "OEM_JUMP" then
		return "0xEA"
	end
	if Name == "OEM_MINUS" then
		return "0xBD"
	end
	if Name == "OEM_PA1" then
		return "0xEB"
	end
	if Name == "OEM_PA2" then
		return "0xEC"
	end
	if Name == "OEM_PA3" then
		return "0xED"
	end
	if Name == "OEM_PERIOD" then
		return "0xBE"
	end
	if Name == "OEM_PLUS" then
		return "0xBB"
	end
	if Name == "OEM_RESET" then
		return "0xE9"
	end
	if Name == "OEM_WSCTRL" then
		return "0xEE"
	end
	if Name == "PA1" then
		return "0xFD"
	end
	if Name == "PACKET" then
		return "0xE7"
	end
	if Name == "PLAY" then
		return "0xFA"
	end
	if Name == "PROCESSKEY" then
		return "0xE5"
	end
	if Name == "RETURN" then
		return "0x0D"
	end
	if Name == "SELECT" then
		return "0x29"
	end
	if Name == "SEPARATOR" then
		return "0x6C"
	end
	if Name == "SPACE" then
		return "0x20"
	end
	if Name == "SUBTRACT" then
		return "0x6D"
	end
	if Name == "TAB" then
		return "0x09"
	end
	if Name == "ZOOM" then
		return "0xFB"
	end
	if Name == "_none_" then
		return "0xFF"
	end
	if Name == "ACCEPT" then
		return "0x1E"
	end
	if Name == "APPS" then
		return "0x5D"
	end
	if Name == "BROWSER_BACK" then
		return "0xA6"
	end
	if Name == "BROWSER_FAVORITES" then
		return "0xAB"
	end
	if Name == "BROWSER_FORWARD" then
		return "0xA7"
	end
	if Name == "BROWSER_HOME" then
		return "0xAC"
	end
	if Name == "BROWSER_REFRESH" then
		return "0xA8"
	end
	if Name == "BROWSER_SEARCH" then
		return "0xAA"
	end
	if Name == "BROWSER_STOP" then
		return "0xA9"
	end
	if Name == "CAPITAL" then
		return "0x14"
	end
	if Name == "CONVERT" then
		return "0x1C"
	end
	if Name == "DELETE" then
		return "0x2E"
	end
	if Name == "DOWN" then
		return "0x28"
	end
	if Name == "END" then
		return "0x23"
	end
	if Name == "F1" then
		return "0x70"
	end
	if Name == "F10" then
		return "0x79"
	end
	if Name == "F11" then
		return "0x7A"
	end
	if Name == "F12" then
		return "0x7B"
	end
	if Name == "F13" then
		return "0x7C"
	end
	if Name == "F14" then
		return "0x7D"
	end
	if Name == "F15" then
		return "0x7E"
	end
	if Name == "F16" then
		return "0x7F"
	end
	if Name == "F17" then
		return "0x80"
	end
	if Name == "F18" then
		return "0x81"
	end
	if Name == "F19" then
		return "0x82"
	end
	if Name == "F2" then
		return "0x71"
	end
	if Name == "F20" then
		return "0x83"
	end
	if Name == "F21" then
		return "0x84"
	end
	if Name == "F22" then
		return "0x85"
	end
	if Name == "F23" then
		return "0x86"
	end
	if Name == "F24" then
		return "0x87"
	end
	if Name == "F3" then
		return "0x72"
	end
	if Name == "F4" then
		return "0x73"
	end
	if Name == "F5" then
		return "0x74"
	end
	if Name == "F6" then
		return "0x75"
	end
	if Name == "F7" then
		return "0x76"
	end
	if Name == "F8" then
		return "0x77"
	end
	if Name == "F9" then
		return "0x78"
	end
	if Name == "FINAL" then
		return "0x18"
	end
	if Name == "HELP" then
		return "0x2F"
	end
	if Name == "HOME" then
		return "0x24"
	end
	if Name == "ICO_00" then
		return "0xE4"
	end
	if Name == "INSERT" then
		return "0x2D"
	end
	if Name == "JUNJA" then
		return "0x17"
	end
	if Name == "KANA" then
		return "0x15"
	end
	if Name == "KANJI" then
		return "0x19"
	end
	if Name == "LAUNCH_APP1" then
		return "0xB6"
	end
	if Name == "LAUNCH_APP2" then
		return "0xB7"
	end
	if Name == "LAUNCH_MAIL" then
		return "0xB4"
	end
	if Name == "LAUNCH_MEDIA_SELECT" then
		return "0xB5"
	end
	if Name == "LBUTTON" then
		return "0x01"
	end
	if Name == "LCONTROL" then
		return "0xA2"
	end
	if Name == "LEFT" then
		return "0x25"
	end
	if Name == "LMENU" then
		return "0xA4"
	end
	if Name == "LSHIFT" then
		return "0xA0"
	end
	if Name == "LWIN" then
		return "0x5B"
	end
	if Name == "MBUTTON" then
		return "0x04"
	end
	if Name == "MEDIA_NEXT_TRACK" then
		return "0xB0"
	end
	if Name == "MEDIA_PLAY_PAUSE" then
		return "0xB3"
	end
	if Name == "MEDIA_PREV_TRACK" then
		return "0xB1"
	end
	if Name == "MEDIA_STOP" then
		return "0xB2"
	end
	if Name == "MODECHANGE" then
		return "0x1F"
	end
	if Name == "NEXT" then
		return "0x22"
	end
	if Name == "NONCONVERT" then
		return "0x1D"
	end
	if Name == "NUMLOCK" then
		return "0x90"
	end
	if Name == "OEM_FJ_JISHO" then
		return "0x92"
	end
	if Name == "PAUSE" then
		return "0x13"
	end
	if Name == "PRINT" then
		return "0x2A"
	end
	if Name == "PRIOR" then
		return "0x21"
	end
	if Name == "RBUTTON" then
		return "0x02"
	end
	if Name == "RCONTROL" then
		return "0xA3"
	end
	if Name == "RIGHT" then
		return "0x27"
	end
	if Name == "RMENU" then
		return "0xA5"
	end
	if Name == "RSHIFT" then
		return "0xA1"
	end
	if Name == "RWIN" then
		return "0x5C"
	end
	if Name == "SCROLL" then
		return "0x91"
	end
	if Name == "SLEEP" then
		return "0x5F"
	end
	if Name == "SNAPSHOT" then
		return "0x2C"
	end
	if Name == "UP" then
		return "0x26"
	end
	if Name == "VOLUME_DOWN" then
		return "0xAE"
	end
	if Name == "VOLUME_MUTE" then
		return "0xAD"
	end
	if Name == "VOLUME_UP" then
		return "0xAF"
	end
	if Name == "XBUTTON1" then
		return "0x05"
	end
	if Name == "XBUTTON2" then
		return "0x06"
	end

end

function V팔레트수정(ID,Code) -- (ID, ColorCode)
	local a = string.format('%d',Code/65536)
	local b = string.format('%d',(Code/256)%256)
	local c = string.format('%d',Code%256)


	local string = SetMemory(0x1505E670 + ID * 4, SetTo, c * 65536 + b * 256 + a)
	return string
end


RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
	local base = 0x1505E670
	local size = 255
	local byte = 4
	local ID = 0
	if base <= offset and offset <= base + size * byte then
		if Number < 0 then
			Number = Number + 4294967296
		end
		ID = ((offset - base) - (offset - base) % byte) / byte + 0


		local a = string.format('%d',Number/65536)
		local b = string.format('%d',(Number/256)%256)
		local c = string.format('%d',Number%256)
		Number = c * 65536 + b * 256 + a
		Number = string.format('%X', Number)

		return "V팔레트수정(" .. ID .. ", 0x" .. Number .. "); ",100
	end
end)

