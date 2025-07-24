-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:56
-- Luau version 6, Types version 3
-- Time taken: 0.000771 seconds

local Parent = script:FindFirstAncestor("FriendsRodux").Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local llama_upvr = require(Parent.llama)
local getDeepValue_upvr = require(script.Parent.Parent.Parent.Parent.getDeepValue)
return function(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: getDeepValue_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_2, arg2) -- Line 15
			--[[ Upvalues[2]:
				[1]: llama_upvr (copied, readonly)
				[2]: getDeepValue_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.map(arg2.responseBody.data, function(arg1_3) -- Line 17
				--[[ Upvalues[1]:
					[1]: getDeepValue_upvr (copied, readonly)
				]]
				return getDeepValue_upvr(arg1_3, "friendRequest.originSourceType"), tostring(arg1_3.id)
			end)
		end;
	})
end