-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:03
-- Luau version 6, Types version 3
-- Time taken: 0.004330 seconds

local module_upvr = {
	CapIntegerValues = function(arg1) -- Line 7, Named "CapIntegerValues"
		for i, v in pairs({
			lighting_fogend = 999999;
		}) do
			arg1[i] = math.min(arg1[i], v)
		end
	end;
	CountDictionary = function(arg1) -- Line 17, Named "CountDictionary"
		local var12 = 0
		for _, _ in pairs(arg1) do
			var12 += 1
		end
		return var12
	end;
	GetDeviceType = function(arg1) -- Line 27, Named "GetDeviceType"
		local touch_enabled = arg1.touch_enabled
		local keyboard_enabled = arg1.keyboard_enabled
		if arg1.vr_enabled then
			return "vr"
		end
		if arg1.is_ten_foot_interface then
			return "console"
		end
		if touch_enabled and (arg1.accelerometer_enabled or arg1.gyroscope_enabled) then
			return "mobile"
		end
		if touch_enabled and not keyboard_enabled and not arg1.mouse_enabled then
			return "mobile"
		end
		if keyboard_enabled then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if arg1.mouse_enabled then
				return "desktop"
			end
		end
		return "unknown"
	end;
	GetPlayersGenderMultithreaded = function(arg1) -- Line 73, Named "GetPlayersGenderMultithreaded"
		local module = {}
		for _, v_3 in ipairs(arg1) do
			module[v_3] = "Unknown"
		end
		return module
	end;
	PythonChoices = function(arg1, arg2, arg3, arg4) -- Line 100, Named "PythonChoices"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local var36
		if arg2 and not arg3 then
			var36 = {}
			for _, v_4 in ipairs(arg2) do
				table.insert(var36, 0 + v_4)
				local _
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [33] 27. Error Block 7 start (CF ANALYSIS FAILED)
		local _, _, _ = ipairs(var36)
		-- KONSTANTERROR: [33] 27. Error Block 7 end (CF ANALYSIS FAILED)
	end;
	PythonUpdate = function(arg1, arg2) -- Line 138, Named "PythonUpdate"
		for i_5, v_5 in pairs(arg2) do
			if type(i_5) == "number" then
				table.insert(arg1, i_5, v_5)
			else
				arg1[i_5] = v_5
			end
		end
	end;
	PythonInOperator = function(arg1, arg2) -- Line 148, Named "PythonInOperator"
		local var53
		if type(arg1) == "string" and type(arg2) == "string" then
			var53 = string.find(arg1, arg2)
			return var53
		end
		if type(arg2) == "table" then
			for _, v_6 in pairs(arg2) do
				if v_6 == arg1 then
					var53 = true
					return var53
				end
			end
		end
		return var53
	end;
	Round = function(arg1, arg2) -- Line 165, Named "Round"
		local var57 = 10 ^ (arg2 or 0)
		return math.floor(arg1 * var57 + 0.5) / var57
	end;
	SafeDiv = function(arg1, arg2) -- Line 171, Named "SafeDiv"
		if arg2 == 0 then
			return 0
		end
		return arg1 / arg2
	end;
}
local Utils_upvr = require(script.Parent.Parent.Utils)
function module_upvr.ValidateParams(arg1, arg2) -- Line 179
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	local tbl = {
		S = {
			string = true;
			["nil"] = true;
		};
		N = {
			number = true;
		};
		BOOL = {
			boolean = true;
		};
	}
	local var70
	for i_7, v_7 in pairs(arg1) do
		if arg2[i_7] == nil then
			Utils_upvr.pprint("[SuperBiz] Parameter: '"..i_7.."' missing")
			var70 += 1
		elseif not tbl[v_7][type(arg2[i_7])] then
			Utils_upvr.pprint("[SuperBiz] Parameter: '"..i_7.."' is type '"..type(arg2[i_7]).."' but expecting '"..tbl[v_7].."'")
			var70 += 1
		end
	end
	if 0 < var70 then
		i_7 = " errors in param validation"
		error(var70..i_7)
	end
	return true
end
function module_upvr.Within(arg1, arg2) -- Line 213
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if type(arg1) == "table" then
		for _, v_8 in pairs(arg1) do
			if module_upvr.PythonInOperator(v_8, arg2) then
				return true
			end
		end
	elseif module_upvr.PythonInOperator(arg1, arg2) then
		return true
	end
	return false
end
return module_upvr