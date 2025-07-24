-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:25
-- Luau version 6, Types version 3
-- Time taken: 0.001540 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
return require(Parent.Rodux).createReducer({}, {
	[require(AppChat.Conversations.Actions.RequestPageConversations).name] = function(arg1, arg2) -- Line 19
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (readonly)
		]]
		return Immutable_upvr.JoinDictionaries(arg1, {
			pageConversationsIsFetching = true;
		})
	end;
	[require(AppChat.Conversations.Actions.ReceivedPageConversations).name] = function(arg1, arg2) -- Line 24
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (readonly)
		]]
		return Immutable_upvr.JoinDictionaries(arg1, {
			pageConversationsIsFetching = false;
		})
	end;
	[require(AppChat.Conversations.Actions.RequestLatestMessages).name] = function(arg1, arg2) -- Line 29
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (readonly)
		]]
		return Immutable_upvr.JoinDictionaries(arg1, {
			latestMessagesIsFetching = true;
		})
	end;
	[require(AppChat.Conversations.Actions.ReceivedLatestMessages).name] = function(arg1, arg2) -- Line 34
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (readonly)
		]]
		return Immutable_upvr.JoinDictionaries(arg1, {
			latestMessagesIsFetching = false;
		})
	end;
	[require(AppChat.Conversations.Actions.ReceivedOldestConversation).name] = function(arg1, arg2) -- Line 39
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (readonly)
		]]
		return Immutable_upvr.JoinDictionaries(arg1, {
			oldestConversationIsFetched = true;
		})
	end;
	[require(AppChat.Http.NetworkingChat).GetUserConversations.Succeeded.name] = function(arg1, arg2) -- Line 44
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (readonly)
		]]
		if #arg2.responseBody < arg2.queryArgs.pageSize then
			return Immutable_upvr.JoinDictionaries(arg1, {
				oldestConversationIsFetched = true;
			})
		end
		return arg1
	end;
	[require(Parent.AppChatNetworking).rodux.GetUserConversations.Succeeded.name] = function(arg1, arg2) -- Line 50
		--[[ Upvalues[1]:
			[1]: Immutable_upvr (readonly)
		]]
		local next_cursor = arg2.responseBody.next_cursor
		if next_cursor == nil or next_cursor == "" then
			return Immutable_upvr.JoinDictionaries(arg1, {
				oldestConversationIsFetched = true;
			})
		end
		return arg1
	end;
})