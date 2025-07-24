-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:31
-- Luau version 6, Types version 3
-- Time taken: 0.000485 seconds

local USERS_URL_upvr = require(script.Parent.Parent.USERS_URL)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: USERS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.PATCH({
		Name = "SetDisplayName";
	}, function(arg1_2, arg2, arg3) -- Line 6
		--[[ Upvalues[1]:
			[1]: USERS_URL_upvr (copied, readonly)
		]]
		local module = {}
		module.newDisplayName = arg3
		return arg1_2(USERS_URL_upvr):path("v1"):path("users"):id(arg2):path("display-names"):body(module)
	end)
end