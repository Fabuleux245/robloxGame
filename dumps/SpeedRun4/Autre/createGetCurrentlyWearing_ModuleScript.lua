-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:51
-- Luau version 6, Types version 3
-- Time taken: 0.000504 seconds

local AVATAR_URL_upvr = require(script.Parent.Parent.AVATAR_URL)
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: AVATAR_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetCurrentlyWearing";
	}, function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[1]:
			[1]: AVATAR_URL_upvr (copied, readonly)
		]]
		return arg1_2(AVATAR_URL_upvr):path("v1"):path("users"):id(arg2):path("currently-wearing")
	end)
end