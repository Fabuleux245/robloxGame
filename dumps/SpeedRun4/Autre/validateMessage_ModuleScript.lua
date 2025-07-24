-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:57
-- Luau version 6, Types version 3
-- Time taken: 0.000827 seconds

local maybeAssert_upvr = require(script.Parent.maybeAssert)
local t_upvr = require(game:GetService("CorePackages").Packages.t)
local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1) -- Line 15, Named "validateMessageText"
	--[[ Upvalues[3]:
		[1]: maybeAssert_upvr (readonly)
		[2]: t_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	maybeAssert_upvr(t_upvr.string(arg1))
	if utf8.len(arg1) == nil then
		return false
	end
	local utf8_len_result1 = utf8.len(utf8.nfcnormalize(arg1))
	if Constants_upvr.MAX_MESSAGE_LENGTH < utf8_len_result1 then
		return false, utf8_len_result1
	end
	return true
end