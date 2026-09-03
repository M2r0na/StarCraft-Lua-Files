function Memory2(a,b,c)
	string = Memory(a - a%4, b, c*256^(a%4))
	return string
end
function VÅ°º¸µå(Name, Modi, Type)
	local KeyCode = VKCode(Name)
	if Type == "S" then
		string = SetMemory2(0x596A18 + KeyCode, Modi, 1)
	end
	if Type == "M" then
		string = Memory2(0x596A18 + KeyCode, Modi, 1)
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