-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:06
-- Luau version 6, Types version 3
-- Time taken: 0.000473 seconds

local PostCreationNotificationType_upvr = require(script.Parent.Parent.Enums.PostCreationNotificationType)
local EventConstants_upvr = require(script.Parent.EventConstants)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: PostCreationNotificationType_upvr (readonly)
		[2]: EventConstants_upvr (readonly)
	]]
	if arg1 == PostCreationNotificationType_upvr.Success then
		return EventConstants_upvr.action.PostSuccessfulToastViewed
	end
	if arg1 == PostCreationNotificationType_upvr.Fail then
		return EventConstants_upvr.action.PostUnsuccessfulToastViewed
	end
	if arg1 == PostCreationNotificationType_upvr.Moderated then
		return EventConstants_upvr.action.PostModeratedToastViewed
	end
	return nil
end