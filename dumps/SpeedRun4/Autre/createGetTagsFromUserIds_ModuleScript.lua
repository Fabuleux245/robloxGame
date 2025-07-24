-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:16
-- Luau version 6, Types version 3
-- Time taken: 0.000485 seconds

local ALIAS_URL_upvr = require(script.Parent.Parent.ALIAS_URL)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: ALIAS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "GetTagsFromUserIds";
	}, function(arg1_2, arg2) -- Line 7
		--[[ Upvalues[1]:
			[1]: ALIAS_URL_upvr (copied, readonly)
		]]
		local module = {}
		module.targetUserIds = arg2
		return arg1_2(ALIAS_URL_upvr):path("v1"):path("user"):path("get-tags"):body(module)
	end)
end