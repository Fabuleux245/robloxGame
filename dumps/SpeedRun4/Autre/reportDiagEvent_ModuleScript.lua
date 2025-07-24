-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:18
-- Luau version 6, Types version 3
-- Time taken: 0.000899 seconds

local getPlatformSuffix_upvr = require(script.Parent.getPlatformSuffix)
local DiagEventTypes_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Analytics.Enums).DiagEventTypes
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: getPlatformSuffix_upvr (readonly)
		[2]: DiagEventTypes_upvr (readonly)
	]]
	return function(arg1_2) -- Line 12
		--[[ Upvalues[3]:
			[1]: getPlatformSuffix_upvr (copied, readonly)
			[2]: DiagEventTypes_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local formatted = `{arg1_2.name}{getPlatformSuffix_upvr(arg1_2.platformSpecificity)}`
		if arg1_2.type == DiagEventTypes_upvr.Stats then
			arg1:reportStats(formatted, arg1_2.value)
			return arg1_2
		end
		arg1:reportCounter(formatted, arg1_2.value)
		return arg1_2
	end
end