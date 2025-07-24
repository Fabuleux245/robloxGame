-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:48
-- Luau version 6, Types version 3
-- Time taken: 0.000525 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local React_upvr = require(AppChat.Parent.React)
local EnumCustomEntryTypes_upvr = require(AppChat.Components.ChatConversation.EnumCustomEntryTypes)
local OsaContextCardOneToOneContainer_upvr = require(AppChat.Components.ChatConversation.ConversationCards.OsaContextCardOneToOneContainer)
return React_upvr.memo(function(arg1) -- Line 15, Named "CustomMessageEntryContainer"
	--[[ Upvalues[3]:
		[1]: EnumCustomEntryTypes_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: OsaContextCardOneToOneContainer_upvr (readonly)
	]]
	if arg1.customEntryType == EnumCustomEntryTypes_upvr.OsaContextCardOneToOne then
		return React_upvr.createElement(OsaContextCardOneToOneContainer_upvr, {
			conversationId = arg1.conversationId;
			openViewProfile = arg1.openViewProfile;
		})
	end
	return nil
end)