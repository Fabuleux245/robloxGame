-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:29
-- Luau version 6, Types version 3
-- Time taken: 0.000409 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.React)
local InviteCallbackContext_upvr = require(Parent.InviteCallbackContext)
return function(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: InviteCallbackContext_upvr (readonly)
	]]
	return React_upvr.createElement(InviteCallbackContext_upvr.Provider, {
		value = {
			inviteSingleFriend = arg1.inviteSingleFriend;
			inviteMultiFriends = arg1.inviteMultiFriends;
		};
	}, arg1.children)
end