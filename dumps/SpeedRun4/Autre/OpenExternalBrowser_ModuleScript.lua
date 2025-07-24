-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:07
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("AuthCommon").Parent.ArgCheck)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	ArgCheck_upvr.isNotNil(arg1, "linking")
	ArgCheck_upvr.isType(arg2, "string", "url")
	arg1:openURL(arg2)
end