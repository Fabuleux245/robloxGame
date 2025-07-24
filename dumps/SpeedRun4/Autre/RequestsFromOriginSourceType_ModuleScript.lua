-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:46
-- Luau version 6, Types version 3
-- Time taken: 0.001756 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local AddFriends = FriendsLanding.AddFriends
local module = {}
local FFlagFixOriginSourceTypeReducer_upvr = require(AddFriends.Flags.FFlagFixOriginSourceTypeReducer)
local Cryo_upvr = require(FriendsLanding.Parent.Cryo)
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local llama_upvr = dependencies.llama
module[require(AddFriends.Networking.FriendsNetworking).GetFriendRequests.Succeeded.name] = function(arg1, arg2) -- Line 19
	--[[ Upvalues[4]:
		[1]: FFlagFixOriginSourceTypeReducer_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: getDeepValue_upvr (readonly)
		[4]: llama_upvr (readonly)
	]]
	local data = arg2.responseBody.data
	if FFlagFixOriginSourceTypeReducer_upvr then
		local var12 = arg1
		if not var12 then
			var12 = {}
		end
		return Cryo_upvr.Dictionary.join(var12, Cryo_upvr.List.foldLeft(data, function(arg1_2, arg2_2) -- Line 24
			--[[ Upvalues[1]:
				[1]: getDeepValue_upvr (copied, readonly)
			]]
			arg1_2[tostring(arg2_2.id)] = getDeepValue_upvr(arg2_2, "friendRequest.originSourceType")
			return arg1_2
		end, {}))
	end
	return llama_upvr.Dictionary.map(data, function(arg1_3) -- Line 32
		--[[ Upvalues[1]:
			[1]: getDeepValue_upvr (copied, readonly)
		]]
		return getDeepValue_upvr(arg1_3, "friendRequest.originSourceType") or "", tostring(arg1_3.id)
	end)
end
return dependencies.Rodux.createReducer({}, module)