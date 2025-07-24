-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:15
-- Luau version 6, Types version 3
-- Time taken: 0.000499 seconds

local Dash_upvr = require(script:FindFirstAncestor("SocialCommon").Parent.Dash)
return function(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	return Dash_upvr.join(arg1, {
		name = arg1.username;
		gameInstanceId = arg1.gameId;
	})
end