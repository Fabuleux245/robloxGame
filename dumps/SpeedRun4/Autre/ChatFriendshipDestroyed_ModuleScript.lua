-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:13
-- Luau version 6, Types version 3
-- Time taken: 0.000984 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
local UpdateUsers_upvr = require(Parent.UserLib).Thunks.UpdateUsers
local GetConversationMetadata_upvr = require(Parent.AppChatNetworking).rodux.GetConversationMetadata
return function(arg1) -- Line 14
	--[[ Upvalues[3]:
		[1]: Immutable_upvr (readonly)
		[2]: UpdateUsers_upvr (readonly)
		[3]: GetConversationMetadata_upvr (readonly)
	]]
	return function(arg1_2) -- Line 15
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Immutable_upvr (copied, readonly)
			[3]: UpdateUsers_upvr (copied, readonly)
			[4]: GetConversationMetadata_upvr (copied, readonly)
		]]
		local var7 = arg1_2:getState().Users[arg1]
		if var7 then
			arg1_2:dispatch(UpdateUsers_upvr({Immutable_upvr.Set(var7, "isFriend", false)}))
			arg1_2:dispatch(GetConversationMetadata_upvr.API())
		end
	end
end