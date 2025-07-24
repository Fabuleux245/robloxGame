-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:33
-- Luau version 6, Types version 3
-- Time taken: 0.000804 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local module = {}
local Array_upvr = LuauPolyfill.Array
local HttpService_upvr = game:GetService("HttpService")
local InvariantError_upvr = require(Parent.jsutils.invariant).InvariantError
local Error_upvr = LuauPolyfill.Error
function module.serializeFetchParameter(arg1, arg2, arg3) -- Line 27
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: InvariantError_upvr (readonly)
		[4]: Error_upvr (readonly)
	]]
	local var8_upvw
	local pcall_result1, pcall_result2 = pcall(function() -- Line 29
		--[[ Upvalues[5]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
			[4]: var8_upvw (read and write)
			[5]: HttpService_upvr (copied, readonly)
		]]
		if Array_upvr.isArray(arg1) and #arg1 == 0 and arg3 then
			var8_upvw = "{}"
		else
			var8_upvw = HttpService_upvr:JSONEncode(arg1)
		end
	end)
	if not pcall_result1 then
		local any_new_result1 = InvariantError_upvr.new("Network request failed. %s is not serializable: %s":format(arg2, pcall_result2))
		any_new_result1.parseError = Error_upvr.new(pcall_result2)
		error(any_new_result1)
	end
	return var8_upvw
end
return module