-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:19
-- Luau version 6, Types version 3
-- Time taken: 0.000784 seconds

local PRESENCE_URL_upvr = require(script.Parent.Parent.PRESENCE_URL)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: PRESENCE_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "GetPresencesFromUserIds";
	}, function(arg1_2, arg2) -- Line 8
		--[[ Upvalues[1]:
			[1]: PRESENCE_URL_upvr (copied, readonly)
		]]
		local module = {}
		module.userIds = arg2
		return arg1_2(PRESENCE_URL_upvr):path("v1"):path("presence"):path("users"):body(module):setStatusIds(arg2)
	end)
end