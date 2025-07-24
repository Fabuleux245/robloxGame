-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:14
-- Luau version 6, Types version 3
-- Time taken: 0.000319 seconds

local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
local useRoactService_upvr = require(RobloxAppHooks.useRoactService)
local AppSystemInfo_upvr = require(RobloxAppHooks.Parent.RoactServiceTags).AppSystemInfo
return function() -- Line 6, Named "useSystemInfo"
	--[[ Upvalues[2]:
		[1]: useRoactService_upvr (readonly)
		[2]: AppSystemInfo_upvr (readonly)
	]]
	return useRoactService_upvr(AppSystemInfo_upvr)
end