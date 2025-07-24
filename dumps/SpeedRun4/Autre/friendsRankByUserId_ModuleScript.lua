-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:49
-- Luau version 6, Types version 3
-- Time taken: 0.000891 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local llama_upvr = require(Parent.llama)
return function(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: llama_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.friendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(arg1_2, arg2) -- Line 14
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			if not arg2.queryArgs or not arg2.queryArgs.userSort then
				return arg1_2
			end
			local data = arg2.responseBody.data
			if not data then
				data = {}
			end
			return llama_upvr.Dictionary.join(arg1_2, {
				[tostring(arg2.namedIds.users)] = llama_upvr.Dictionary.map(data, function(arg1_3, arg2_2) -- Line 25
					return arg2_2, tostring(arg1_3.id)
				end);
			})
		end;
	})
end