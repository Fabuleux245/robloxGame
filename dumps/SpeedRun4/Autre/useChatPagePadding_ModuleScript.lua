-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:31
-- Luau version 6, Types version 3
-- Time taken: 0.000446 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local Context_upvr = require(script.Parent.Context)
return function() -- Line 7, Named "useChatPagePadding"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Context_upvr (readonly)
	]]
	return React_upvr.useContext(Context_upvr)
end