-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:16
-- Luau version 6, Types version 3
-- Time taken: 0.000935 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
return function(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: FRIENDS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "FindFriendsFromUserId";
	}, function(arg1_2, arg2, arg3) -- Line 15
		--[[ Upvalues[1]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local module = {}
		local var6
		if arg3 then
			var6 = arg3.userSort
		else
			var6 = nil
		end
		module.userSort = var6
		if arg3 then
			var6 = arg3.cursor
			-- KONSTANTWARNING: GOTO [36] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 28. Error Block 22 start (CF ANALYSIS FAILED)
		var6 = nil
		module.cursor = var6
		if arg3 then
			var6 = arg3.limit
		else
			var6 = nil
		end
		module.limit = var6
		do
			return arg1_2(FRIENDS_URL_upvr):path("v1"):path("users"):id(arg2):path("friends"):path("find"):queryArgs(module)
		end
		-- KONSTANTERROR: [35] 28. Error Block 22 end (CF ANALYSIS FAILED)
	end)
end