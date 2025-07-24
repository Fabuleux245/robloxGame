-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:55
-- Luau version 6, Types version 3
-- Time taken: 0.001191 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Signal_upvr = require(script.Parent.Parent.Parent.AppCommonLib).Signal
function module_upvr.new() -- Line 17
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		_value = false;
		_changeSignal = Signal_upvr.new();
	}, module_upvr)
end
function module_upvr.get(arg1) -- Line 24
	return arg1._value
end
function module_upvr.set(arg1, arg2) -- Line 28
	if arg1._value ~= arg2 then
		arg1._value = arg2
		arg1._changeSignal:fire(arg2)
	end
end
function module_upvr.connect(arg1, arg2, arg3) -- Line 35
	if arg3 == true then
		arg2(arg1._value)
	end
	return arg1._changeSignal:connect(arg2)
end
return module_upvr.new()