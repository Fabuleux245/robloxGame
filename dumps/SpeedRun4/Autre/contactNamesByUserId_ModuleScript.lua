-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:46
-- Luau version 6, Types version 3
-- Time taken: 0.001025 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local llama_upvr = require(Parent.llama)
local FriendRequestCreated_upvr = require(Parent_2.Actions.FriendRequestCreated)
return function(arg1) -- Line 15
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: FriendRequestCreated_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.friendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1_2, arg2) -- Line 19
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			local module = {}
			for _, v in pairs(arg2.responseBody.data) do
				module[tostring(v.id)] = v.friendRequest.contactName
			end
			return llama_upvr.Dictionary.join(arg1_2, module)
		end;
		[FriendRequestCreated_upvr.name] = function(arg1_3, arg2) -- Line 33
			--[[ Upvalues[1]:
				[1]: llama_upvr (copied, readonly)
			]]
			return llama_upvr.Dictionary.join(arg1_3, {
				[tostring(arg2.requesteeId)] = arg2.contactName;
			})
		end;
	})
end