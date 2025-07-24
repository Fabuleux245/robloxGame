-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:35
-- Luau version 6, Types version 3
-- Time taken: 0.000484 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local module = {}
local llama_upvr = dependencies.llama
module[dependencies.FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(arg1, arg2) -- Line 11
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	return llama_upvr.Dictionary.map(arg2.responseBody.data, function(arg1_2) -- Line 13
		return arg1_2.isDeleted, tostring(arg1_2.id)
	end)
end
return dependencies.Rodux.createReducer({}, module)