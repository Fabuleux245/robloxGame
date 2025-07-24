-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:01
-- Luau version 6, Types version 3
-- Time taken: 0.000372 seconds

local getPlatformTarget_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.Analytics).getPlatformTarget
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: getPlatformTarget_upvr (readonly)
	]]
	return function(arg1_2, arg2, arg3, arg4) -- Line 7
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: getPlatformTarget_upvr (copied, readonly)
		]]
		arg1:setRBXEventStream(getPlatformTarget_upvr(), arg2, arg3, arg4)
	end
end