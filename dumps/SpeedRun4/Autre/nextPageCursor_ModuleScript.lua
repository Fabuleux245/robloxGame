-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:55
-- Luau version 6, Types version 3
-- Time taken: 0.000554 seconds

local Rodux_upvr = require(script.Parent.Parent.Parent.Parent.Parent.Rodux)
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: Rodux_upvr (readonly)
	]]
	local friendsNetworking = arg1.friendsNetworking
	return Rodux_upvr.createReducer(nil, {
		[friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_2, arg2) -- Line 12
			return arg2.responseBody.nextPageCursor
		end;
		[friendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function(arg1_3, arg2) -- Line 21
			return nil
		end;
	})
end