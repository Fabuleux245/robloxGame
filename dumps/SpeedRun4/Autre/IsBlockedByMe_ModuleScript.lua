-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:41
-- Luau version 6, Types version 3
-- Time taken: 0.000905 seconds

local Parent = script:FindFirstAncestor("UserBlockingRodux").Parent
local Rodux_upvr = require(Parent.Rodux)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local userBlockingNetworking = arg1.userBlockingNetworking
	return Rodux_upvr.createReducer({}, {
		[userBlockingNetworking.BlockUserById.Succeeded.name] = function(arg1_2, arg2) -- Line 13
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			return Cryo_upvr.Dictionary.join(arg1_2, {
				[tostring(arg2.namedIds.users)] = true;
			})
		end;
		[userBlockingNetworking.UnblockUserById.Succeeded.name] = function(arg1_3, arg2) -- Line 19
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			return Cryo_upvr.Dictionary.join(arg1_3, {
				[tostring(arg2.namedIds.users)] = false;
			})
		end;
		[userBlockingNetworking.IsBlockedById.Succeeded.name] = function(arg1_4, arg2) -- Line 25
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			return Cryo_upvr.Dictionary.join(arg1_4, {
				[tostring(arg2.namedIds.users)] = arg2.responseBody or false;
			})
		end;
	})
end