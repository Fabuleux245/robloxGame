-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:46
-- Luau version 6, Types version 3
-- Time taken: 0.000603 seconds

local Parent = script:FindFirstAncestor("FriendsRodux").Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.friendsNetworking.GetFriendsCountFromUserId.Succeeded.name] = function(arg1_2, arg2) -- Line 12
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			return Cryo_upvr.Dictionary.union(arg1_2, {
				[tostring(arg2.namedIds.users)] = arg2.responseBody.count;
			})
		end;
	})
end