-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:41
-- Luau version 6, Types version 3
-- Time taken: 0.001750 seconds

return function(arg1) -- Line 1, Named "ChatPolicies"
	return {
		getChatConversationHeaderGroupDetails = function() -- Line 3, Named "getChatConversationHeaderGroupDetails"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatConversationHeaderGroupDetails or false
		end;
		getChatHeaderSearch = function() -- Line 6, Named "getChatHeaderSearch"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatHeaderSearch or false
		end;
		getChatHeaderCreateChatGroup = function() -- Line 9, Named "getChatHeaderCreateChatGroup"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatHeaderCreateChatGroup or false
		end;
		getChatHeaderHomeButton = function() -- Line 12, Named "getChatHeaderHomeButton"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatHeaderHomeButton or false
		end;
		getChatHeaderNotifications = function() -- Line 15, Named "getChatHeaderNotifications"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatHeaderNotifications or false
		end;
		getChatPlayTogether = function() -- Line 18, Named "getChatPlayTogether"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatPlayTogether or false
		end;
		getChatShareGameToChatFromChat = function() -- Line 21, Named "getChatShareGameToChatFromChat"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatShareGameToChatFromChat or false
		end;
		getChatTapConversationThumbnail = function() -- Line 24, Named "getChatTapConversationThumbnail"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatTapConversationThumbnail or false
		end;
		getChatReportingDisabled = function() -- Line 27, Named "getChatReportingDisabled"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatReportingDisabled or false
		end;
		getChatViewProfileOption = function() -- Line 30, Named "getChatViewProfileOption"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ChatViewProfileOption or false
		end;
		getContactImporterEnabled = function() -- Line 33, Named "getContactImporterEnabled"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ContactImporterEnabled or false
		end;
	}
end