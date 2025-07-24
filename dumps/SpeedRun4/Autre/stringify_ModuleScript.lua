-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:50
-- Luau version 6, Types version 3
-- Time taken: 0.000500 seconds

local HttpService_upvr = game:GetService("HttpService")
local any_JSONEncode_result1_upvr = HttpService_upvr:JSONEncode(require(script.Parent.null))
return function(arg1) -- Line 5, Named "stringify"
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: any_JSONEncode_result1_upvr (readonly)
	]]
	return HttpService_upvr:JSONEncode(arg1):gsub(any_JSONEncode_result1_upvr, "null")
end