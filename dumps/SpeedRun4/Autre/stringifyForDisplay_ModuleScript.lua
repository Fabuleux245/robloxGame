-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:12
-- Luau version 6, Types version 3
-- Time taken: 0.000936 seconds

local module = {}
local LuauPolyfill = require(script.Parent.Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
function replaceUndefined(arg1, arg2) -- Line 20
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if not Array_upvr.isArray(arg1) then
		return arg1
	end
	for i = 1, #arg1 do
		if arg1[i] == nil then
			table.insert({}, arg2)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, arg1[i])
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local makeUniqueId_upvr = require(script.Parent.makeUniqueId).makeUniqueId
local String_upvr = LuauPolyfill.String
local HttpService_upvr = game:GetService("HttpService")
function module.stringifyForDisplay(arg1) -- Line 35
	--[[ Upvalues[4]:
		[1]: makeUniqueId_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: String_upvr (readonly)
		[4]: HttpService_upvr (readonly)
	]]
	local var5_result1 = makeUniqueId_upvr("stringifyForDisplay")
	return Array_upvr.join(String_upvr.split(HttpService_upvr:JSONEncode(replaceUndefined(arg1, var5_result1)), HttpService_upvr:JSONEncode(var5_result1)), "<undefined>")
end
return module