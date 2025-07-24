-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:40
-- Luau version 6, Types version 3
-- Time taken: 0.001303 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Signal_upvr = require(script.Parent.Parent.AppCommonLib).Signal
function module_2_upvr.new(arg1) -- Line 29
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {}
	module._value = arg1
	module._changeSignal = Signal_upvr.new()
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.get(arg1) -- Line 36
	return arg1._value
end
function module_2_upvr.set(arg1, arg2) -- Line 40
	if arg1._value ~= arg2 then
		arg1._value = arg2
		arg1._changeSignal:fire(arg2)
	end
end
function module_2_upvr.signal(arg1) -- Line 47
	return arg1._changeSignal
end
function module_2_upvr.connect(arg1, arg2, arg3) -- Line 51
	if arg3 == true then
		arg2(arg1._value)
	end
	return arg1._changeSignal:connect(arg2)
end
return module_2_upvr