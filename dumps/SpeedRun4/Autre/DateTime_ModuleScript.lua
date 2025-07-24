-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:36
-- Luau version 6, Types version 3
-- Time taken: 0.002803 seconds

local TimeZone_upvr = require(script.Parent.TimeZone)
local module_2_upvr = {}
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 27
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module_4 = {
		dateTime = DateTime.fromUniversalTime(arg1 or 1970, arg2 or 1, arg3 or 1, arg4 or 0, arg5 or 0, arg6 or 0, arg7 or 0);
	}
	setmetatable(module_4, module_2_upvr)
	return module_4
end
function module_2_upvr.now() -- Line 45
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		dateTime = DateTime.now();
	}
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.fromUnixTimestamp(arg1) -- Line 58
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var5
	if type(arg1) ~= "number" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "Invalid argument #1 to fromUnixTimestamp, expected number.")
	local module_5 = {}
	var5 = DateTime.fromUnixTimestampMillis(arg1 * 1000)
	module_5.dateTime = var5
	var5 = setmetatable
	var5(module_5, module_2_upvr)
	return module_5
end
function module_2_upvr.fromIsoDate(arg1) -- Line 74
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var7
	if type(arg1) ~= "string" then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "Invalid argument #1 to DateTime.fromIsoDate, expected string.")
	local module_3 = {}
	var7 = DateTime.fromIsoDate(arg1)
	module_3.dateTime = var7
	var7 = setmetatable
	var7(module_3, module_2_upvr)
	return module_3
end
local LocalizationService_upvr = game:GetService("LocalizationService")
function module_2_upvr.Format(arg1, arg2, arg3, arg4) -- Line 91
	--[[ Upvalues[2]:
		[1]: TimeZone_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
	]]
	local var10
	if type(arg2) ~= "string" then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "Invalid argument #1 to Format, expected string.")
	local var11 = arg3
	if not var11 then
		var10 = TimeZone_upvr
		var11 = var10.Current
	end
	local var12 = var11
	var11 = arg4
	local var13 = var11
	if not var13 then
		var10 = LocalizationService_upvr
		var13 = var10.RobloxLocaleId
	end
	local var14 = var13
	var10 = TimeZone_upvr
	if var12 == var10.UTC then
		return arg1.dateTime:FormatUniversalTime(arg2, var14)
	end
	var10 = TimeZone_upvr
	if var12 == var10.Current then
		return arg1.dateTime:FormatLocalTime(arg2, var14)
	end
	var10 = "Invalid TimeZone \"%s\"":format(tostring(var12))
	error(var10, 2)
end
function module_2_upvr.GetValues(arg1, arg2) -- Line 114
	--[[ Upvalues[1]:
		[1]: TimeZone_upvr (readonly)
	]]
	local var15 = arg2
	if not var15 then
		var15 = TimeZone_upvr.Current
	end
	local var16 = var15
	if var16 == TimeZone_upvr.UTC then
		return arg1.dateTime:ToUniversalTime()
	end
	if var16 == TimeZone_upvr.Current then
		return arg1.dateTime:ToLocalTime()
	end
	error("Invalid TimeZone \"%s\"":format(tostring(var16)), 2)
end
function module_2_upvr.GetUnixTimestamp(arg1) -- Line 129
	if 0 < arg1.dateTime:ToUniversalTime().Millisecond then
		return arg1.dateTime.UnixTimestamp + arg1.dateTime.UnixTimestampMillis % 1000 / 1000
	end
	return arg1.dateTime.UnixTimestamp
end
function module_2_upvr.GetIsoDate(arg1) -- Line 143
	return arg1.dateTime:ToIsoDate()
end
function module_2_upvr.GetLongRelativeTime(arg1, arg2, arg3, arg4) -- Line 151
	return arg1:Format("lll", arg3, arg4)
end
function module_2_upvr.GetShortRelativeTime(arg1, arg2, arg3, arg4) -- Line 160
	--[[ Upvalues[1]:
		[1]: TimeZone_upvr (readonly)
	]]
	local var17 = arg3
	if not var17 then
		var17 = TimeZone_upvr.Current
	end
	return arg1:Format("ll", var17, arg4)
end
module_2_upvr.__index = module_2_upvr
return module_2_upvr