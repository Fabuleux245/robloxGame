-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:47
-- Luau version 6, Types version 3
-- Time taken: 0.001747 seconds

local dependencies = require(script:FindFirstAncestor("SocialReducerAdaptors").dependencies)
local Players_upvr = dependencies.Players
local llama_upvr = dependencies.llama
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: llama_upvr (readonly)
	]]
	local function friendshipCreatedWithUser_upvr(arg1_2) -- Line 14, Named "friendshipCreatedWithUser"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Players_upvr (copied, readonly)
		]]
		local var5 = arg2
		if not var5 then
			var5 = tostring(Players_upvr.LocalPlayer.UserId)
		end
		return arg1.Actions.FriendshipCreated(arg1_2.id, var5)
	end
	return {
		AddUser = function(arg1_3) -- Line 19, Named "AddUser"
			--[[ Upvalues[1]:
				[1]: friendshipCreatedWithUser_upvr (readonly)
			]]
			if arg1_3.user.isFriend then
				return {friendshipCreatedWithUser_upvr(arg1_3.user)}
			end
			local module = {}
			module[1] = arg1_3
			return module
		end;
		AddUsers = function(arg1_4) -- Line 27, Named "AddUsers"
			--[[ Upvalues[2]:
				[1]: llama_upvr (copied, readonly)
				[2]: friendshipCreatedWithUser_upvr (readonly)
			]]
			return llama_upvr.Dictionary.values(llama_upvr.Dictionary.map(arg1_4.users, function(arg1_5, arg2_2) -- Line 28
				--[[ Upvalues[1]:
					[1]: friendshipCreatedWithUser_upvr (copied, readonly)
				]]
				if arg1_5.isFriend then
					return friendshipCreatedWithUser_upvr(arg1_5)
				end
				return nil
			end))
		end;
		SetFriendRequestsCount = function(arg1_6) -- Line 37, Named "SetFriendRequestsCount"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return {arg1.Actions.RequestReceivedCountUpdated(arg1_6.count)}
		end;
	}
end