-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:17
-- Luau version 6, Types version 3
-- Time taken: 0.000777 seconds

local ALIAS_URL_upvr = require(script.Parent.Parent.ALIAS_URL)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: ALIAS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "SetUserTag";
	}, function(arg1_2, arg2, arg3) -- Line 9
		--[[ Upvalues[1]:
			[1]: ALIAS_URL_upvr (copied, readonly)
		]]
		local module = {}
		module.targetUserId = arg2
		module.userTag = arg3
		return arg1_2(ALIAS_URL_upvr):path("v1"):path("user"):path("tag"):body(module)
	end)
end