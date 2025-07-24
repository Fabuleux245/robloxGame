-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:30
-- Luau version 6, Types version 3
-- Time taken: 0.000505 seconds

local CHAT_URL_upvr = require(script.Parent.Parent.CHAT_URL)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: CHAT_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetLatestMessages";
	}, function(arg1_2, arg2, arg3) -- Line 9
		--[[ Upvalues[1]:
			[1]: CHAT_URL_upvr (copied, readonly)
		]]
		local module = {}
		module.pageSize = arg3
		return arg1_2(CHAT_URL_upvr):path("v2"):path("multi-get-latest-messages"):queryArgs(module):expandedQueryArgsWithIds("conversationIds", arg2)
	end)
end