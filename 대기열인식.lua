-- 대기열 인식.lua by Artanis (EDAC)
function CUnit(i)
	if i == 0 then
		return 0x59CCA8
	else
		return 0x628298 - 0x150 * (i-1)
	end
end

function 대기열인식(Index, Unit)
    Unit = ParseUnit(Unit)
    return Memory(CUnit(Index) + 0x98, Exactly, Unit * 65536)
end

local function _dontuse(Index)
    return SetMemoryX(CUnit(Index) + 0xA0, SetTo, 0xE4, 0xFFFF)
end

function 대기열초기화(Index)
    local t = {}
    table.insert(t, SetMemory(CUnit(Index) + 0x98, SetTo, 0xE40000))
    table.insert(t, SetMemory(CUnit(Index) + 0x9C, SetTo, 0xE400E4))
    local isEUDXAvailable, initQueue5 = pcall(_dontuse, Index)
    if isEUDXAvailable == false then
        initQueue5 = SetMemory(CUnit(Index) + 0xA0, SetTo, 0x0000E4)
    end
    table.insert(t, initQueue5)
    return t
end

RegisterDeathsHook(function(Player, Modifier, Number, Unit)
	local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
    local pseudoindex = (offset - 0x59CCA8 - 0x98) / 336
    if Modifier == 10 and Number % 65536 == 0 and (offset - 0x59CCA8 - 0x98) % 336 == 0 and pseudoindex >= 0 and pseudoindex <= 1699 then
        local index = 1700 - pseudoindex
        if index == 1700 then index = 0 end
		return "대기열인식(" .. index .. ", " .. Number / 65536 .. ");",100
	end
end)

RegisterSetDeathsHook(function(Player, Modifier, Number, Unit)
    local offset = bit32.band((0x58A364 + (Player + Unit * 12) * 4), 0xFFFFFFFF)
    local m = (offset - 0x59CCA8 - 0x98) % 336
    local pseudoindex = (offset - 0x59CCA8 - 0x98 - m) / 336
    if Modifier == 7 and ((m == 0 and Number == 0xE40000) or (m == 4 and Number == 0xE400E4) or (m == 8 and Number == 0xE4)) and pseudoindex >= 0 and pseudoindex <= 1699 then
        local index = 1700 - pseudoindex
        if index == 1700 then index = 0 end
        local prefix = ""
        if m > 0 then prefix = "-- " end
		return prefix .. "대기열초기화(" .. index .. ");",100
	end
end)
