-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:48
-- Luau version 6, Types version 3
-- Time taken: 0.000722 seconds

local llama_upvr = require(script:FindFirstAncestor("SocialReducerAdaptors").dependencies).llama
return function(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	local function userUpdatedFromUser_upvr(arg1_2) -- Line 17, Named "userUpdatedFromUser"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.Actions.UserUpdated({
			id = arg1_2.id;
			username = arg1_2.name;
			displayName = arg1_2.displayName;
			hasVerifiedBadge = arg1_2.hasVerifiedBadge;
			created = arg1_2.created;
		})
	end
	return {
		AddUser = function(arg1_3) -- Line 28, Named "AddUser"
			--[[ Upvalues[1]:
				[1]: userUpdatedFromUser_upvr (readonly)
			]]
			return {userUpdatedFromUser_upvr(arg1_3.user)}
		end;
		AddUsers = function(arg1_4) -- Line 32, Named "AddUsers"
			--[[ Upvalues[2]:
				[1]: llama_upvr (copied, readonly)
				[2]: userUpdatedFromUser_upvr (readonly)
			]]
			return llama_upvr.Dictionary.values(llama_upvr.Dictionary.map(arg1_4.users, userUpdatedFromUser_upvr))
		end;
	}
end