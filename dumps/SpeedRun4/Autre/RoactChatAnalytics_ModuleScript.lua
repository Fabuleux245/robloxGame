-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:36
-- Luau version 6, Types version 3
-- Time taken: 0.002403 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.DiagCounters = {
	FetchedOlderConversation = game:DefineFastString("RoactChatFetchedOlderConversationCounter", "RoactChatFetchedOlderConversation");
	LuaShareGameInputBarEntry = game:DefineFastString("LuaShareGameRoactChatInputBarEntryCounter", "LuaShareGameRoactChatInputBarEntry");
	LuaShareGameInputBarInvite = game:DefineFastString("LuaShareGameRoactChatInputBarInviteCounter", "LuaShareGameRoactChatInputBarInvite");
	UserLoadedChat = game:DefineFastString("RoactChatUserLoadedCounter", "RoactChatUserLoaded");
}
module_upvr.DiagCounters.ChatDetailsProfile = game:DefineFastString("RoactChatNavigationChatDetailsProfileCounter", "RoactChatNavigationChatDetailsProfile")
module_upvr.DiagCounters.ChatConversationProfile = game:DefineFastString("RoactChatNavigationChatConversationProfileCounter", "RoactChatNavigationChatConversationProfile")
module_upvr.NavigationEvents = {
	ChatDetailsProfile = "ChatDetailsProfile";
	ChatConversationProfile = "ChatConversationProfile";
}
local tbl_upvr = {
	[module_upvr.NavigationEvents.ChatConversationProfile] = {
		subpage = "peekView";
		page = "playerProfile";
		btn = "chatIcon";
	};
	[module_upvr.NavigationEvents.ChatDetailsProfile] = {
		subpage = "peekView";
		page = "playerProfile";
		btn = "chatDetailsMenu";
	};
}
function module_upvr.new(arg1, arg2) -- Line 52
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(arg2, "RoactChatAnalytics must be passed the ID of the local user")
	local module = {
		_diagImpl = arg1.Diag;
		_eventStreamImpl = arg1.EventStream;
		hasAlreadyFetchedOlderConversations = false;
	}
	module.localUserId = arg2
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.withEventStream(arg1, arg2) -- Line 66
	arg1._eventStreamImpl = arg2
	return arg1
end
function module_upvr.withDiag(arg1, arg2) -- Line 71
	arg1._diagImpl = arg2
	return arg1
end
function module_upvr.userFetchedOlderConversations(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1.hasAlreadyFetchedOlderConversations then
	else
		arg1.hasAlreadyFetchedOlderConversations = true
		arg1._eventStreamImpl:setRBXEventStream("roactChat", "userFetchedOlderConversations", {
			uid = arg1.localUserId;
		})
		arg1._diagImpl:reportCounter(module_upvr.DiagCounters.FetchedOlderConversation, 1)
	end
end
function module_upvr.inputShareGameInviteSent(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 96
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local tbl = {
		btn = "roactChatInputBar";
		placeId = tostring(arg2);
		gameId = tostring(arg3);
	}
	tbl.senderId = arg4
	tbl.conversationId = tostring(arg5)
	tbl.participants = table.concat(arg6, ',')
	arg1._eventStreamImpl:setRBXEventStream("touch", "inputShareGameInviteSent", tbl)
	arg1._diagImpl:reportCounter(module_upvr.DiagCounters.LuaShareGameInputBarInvite, 1)
end
function module_upvr.inputShareGameEntryPoint(arg1, arg2) -- Line 115
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1._eventStreamImpl:setRBXEventStream("touch", "inputShareGameInviteSent", {
		btn = "roactChatInputBar";
		uid = arg1.localUserId;
		cid = tostring(arg2);
	})
	arg1._diagImpl:reportCounter(module_upvr.DiagCounters.LuaShareGameInputBarEntry, 1)
end
function module_upvr.loadGameLinkCardInChat(arg1, arg2, arg3) -- Line 130
	arg1._eventStreamImpl:setRBXEventStream("roactChat", "loadGameLinkCardInChat", {
		uid = arg1.localUserId;
		cid = tostring(arg2);
		pid = tostring(arg3);
	})
end
function module_upvr.userLoadedChat(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1._eventStreamImpl:setRBXEventStream("roactChat", "userLoadedChat", {
		uid = arg1.localUserId;
	})
	arg1._diagImpl:reportCounter(module_upvr.DiagCounters.UserLoadedChat, 1)
end
local Cryo_upvr = require(script:FindFirstAncestor("AppChat").Parent.Cryo)
function module_upvr.navigate(arg1, arg2) -- Line 153
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	assert(tbl_upvr[arg2], "Invalid navigation option given")
	arg1._diagImpl:reportCounter(module_upvr.DiagCounters[arg2], 1)
	arg1._eventStreamImpl:setRBXEventStream("chat", "buttonClick", Cryo_upvr.Dictionary.join({
		uid = arg1.localUserId;
	}, tbl_upvr[arg2]))
end
return module_upvr