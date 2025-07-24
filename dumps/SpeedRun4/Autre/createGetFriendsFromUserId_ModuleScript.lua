-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:22
-- Luau version 6, Types version 3
-- Time taken: 0.000688 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: FRIENDS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetFriendsFromUserId";
	}, function(arg1_2, arg2, arg3) -- Line 13
		--[[ Upvalues[1]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
		]]
		local module = {}
		local var6
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var6 = arg3.userSort
			return var6
		end
		if not arg3 or not INLINED() then
			var6 = nil
		end
		module.userSort = var6
		return arg1_2(FRIENDS_URL_upvr):path("v1"):path("users"):id(arg2):path("friends"):queryArgs(module)
	end)
end