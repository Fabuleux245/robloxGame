-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:37
-- Luau version 6, Types version 3
-- Time taken: 0.001132 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local function defaultCompareFn_upvr(arg1, arg2) -- Line 44, Named "defaultCompareFn"
	if arg1 ~= arg2 then
	else
	end
	return true
end
local Signal_upvr = require(script.Parent.Parent.AppCommonLib).Signal
function module_upvr.new(arg1, arg2) -- Line 48
	--[[ Upvalues[3]:
		[1]: defaultCompareFn_upvr (readonly)
		[2]: Signal_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local tbl = {}
	local var4
	if arg2 then
		var4 = arg2
	else
		var4 = defaultCompareFn_upvr
	end
	tbl._isEqual = var4
	tbl._value = arg1
	var4 = Signal_upvr.new()
	tbl._changeSignal = var4
	var4 = setmetatable(tbl, module_upvr)
	return var4
end
function module_upvr.get(arg1) -- Line 57
	return arg1._value
end
function module_upvr.set(arg1, arg2) -- Line 61
	if not arg1._isEqual(arg1._value, arg2) then
		arg1._value = arg2
		arg1._changeSignal:fire(arg2)
	end
end
function module_upvr.connect(arg1, arg2, arg3) -- Line 68
	if arg3 == true then
		arg2(arg1._value)
	end
	return arg1._changeSignal:connect(arg2)
end
function module_upvr.__tostring(arg1) -- Line 77
	return "ObservableValue("..tostring(arg1._value)..')'
end
return module_upvr