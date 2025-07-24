-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:28
-- Luau version 6, Types version 3
-- Time taken: 0.000882 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
return function(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: FRIENDS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "SearchFriendsByQuery";
	}, function(arg1_2, arg2, arg3) -- Line 16
		--[[ Upvalues[1]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local tbl = {}
		local var6
		if arg3 then
			var6 = arg3.query
		else
			var6 = nil
		end
		tbl.query = var6
		if arg3 then
			var6 = arg3.userSort
			-- KONSTANTWARNING: GOTO [36] #29
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 28. Error Block 29 start (CF ANALYSIS FAILED)
		var6 = nil
		tbl.userSort = var6
		if arg3 then
			var6 = arg3.cursor
			-- KONSTANTWARNING: GOTO [43] #34
		end
		-- KONSTANTERROR: [35] 28. Error Block 29 end (CF ANALYSIS FAILED)
	end)
end