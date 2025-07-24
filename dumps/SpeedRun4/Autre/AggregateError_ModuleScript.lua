-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:14
-- Luau version 6, Types version 3
-- Time taken: 0.001007 seconds

local LuauPolyfill = require(script.Parent.Parent.LuauPolyfill)
local Error_upvr = LuauPolyfill.Error
local module = {}
local setmetatable_result1_2_upvw = setmetatable({}, {
	__index = Error_upvr;
})
setmetatable_result1_2_upvw.__index = setmetatable_result1_2_upvw
function setmetatable_result1_2_upvw.new(arg1, arg2) -- Line 47
	--[[ Upvalues[2]:
		[1]: Error_upvr (readonly)
		[2]: setmetatable_result1_2_upvw (read and write)
	]]
	if arg2 ~= nil then
	else
	end
	local setmetatable_result1 = setmetatable(Error_upvr.new(""), setmetatable_result1_2_upvw)
	setmetatable_result1.errors = arg1
	setmetatable_result1.name = "AggregateError"
	Error_upvr.captureStackTrace(setmetatable_result1, setmetatable_result1_2_upvw.new)
	return setmetatable_result1
end
module.AggregateError = setmetatable(setmetatable_result1_2_upvw, {
	__call = function(arg1, arg2, arg3) -- Line 68
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_2_upvw (read and write)
		]]
		return setmetatable_result1_2_upvw.new(arg2, arg3)
	end;
})
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
function module.isAggregateError(arg1) -- Line 86
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local var11 = false
	if Array_upvr.indexOf(Object_upvr.keys(arg1), "errors") ~= -1 then
		var11 = Array_upvr.isArray(arg1.errors)
	end
	return var11
end
return module