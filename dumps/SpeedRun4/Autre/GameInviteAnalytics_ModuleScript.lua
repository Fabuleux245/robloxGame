-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:42
-- Luau version 6, Types version 3
-- Time taken: 0.005194 seconds

local Cryo_upvr = require(script:FindFirstAncestor("GameInvite").Parent.Cryo)
game:DefineFastFlag("LuaAppInviteEventsIncludePlaceId", false)
game:DefineFastFlag("GameInviteModalIncludeLinkIdInShareButton", false)
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.ButtonName = {
	SettingsHub = "settingsHub";
	ModalPrompt = "modalPrompt";
	GameDetailsMoreMenu = "uaGameDetailsMoreMenu";
	GameDetailsPlayWithFriendsMenu = "uaGameDetailsPlayWithFriendsMenu";
}
module_upvr.EventName = {
	InviteSent = "inputShareGameInviteSent";
	EntryPoint = "inputShareGameEntryPoint";
	LinkGenerated = "linkGenerated";
	ShareButtonClick = "buttonClick";
	InviteSearchFocused = "inviteSearchFocused";
	GameInviteModal = "gameInviteModal";
}
module_upvr.ActionType = {
	ModalOpen = "modalOpen";
	InviteTriggered = "inviteTriggered";
	ModalClose = "modalClose";
	InviteFailure = "inviteFailure";
}
module_upvr.DiagCounters = {
	EntryPoint = {
		[module_upvr.ButtonName.SettingsHub] = settings():GetFVariable("LuaShareGameSettingsHubEntryCounter");
		[module_upvr.ButtonName.ModalPrompt] = settings():GetFVariable("LuaShareGameModalPromptEntryCounter");
	};
	InviteSent = {
		[module_upvr.ButtonName.SettingsHub] = settings():GetFVariable("LuaShareGameSettingsHubInviteCounter");
		[module_upvr.ButtonName.ModalPrompt] = settings():GetFVariable("LuaShareGameModalPromptInviteCounter");
	};
}
function module_upvr.new() -- Line 48
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		_eventStreamImpl = nil;
		_diagImpl = nil;
		_buttonName = nil;
	}
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.withEventStream(arg1, arg2) -- Line 59
	arg1._eventStreamImpl = arg2
	return arg1
end
function module_upvr.withDiag(arg1, arg2) -- Line 64
	arg1._diagImpl = arg2
	return arg1
end
function module_upvr.withButtonName(arg1, arg2) -- Line 69
	arg1._buttonName = arg2
	return arg1
end
function module_upvr.onActivatedInviteSent(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 74
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var10 = "inGame"
	if arg1:_getIsUniversalApp() then
		var10 = "inApp"
	end
	local var11
	local var12
	if arg1:_getIsUniversalApp() then
		var11 = tostring(arg5)
		var12 = tostring(arg6)
	else
		var11 = tostring(game.PlaceId)
		var12 = tostring(game.GameId)
	end
	arg1:_getEventStream():setRBXEventStream(var10, module_upvr.EventName.InviteSent, {
		btn = arg1:_getButtonName();
		placeId = var11;
		gameId = var12;
		conversationId = tostring(arg3);
		participants = table.concat(arg4, ',');
	})
	local var14 = module_upvr.DiagCounters.InviteSent[arg1:_getButtonName()]
	if var14 then
		arg1:_getDiag():reportCounter(var14, 1)
	end
end
function module_upvr.inputShareGameEntryPoint(arg1, arg2, arg3) -- Line 106
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var15 = "inGame"
	if arg1:_getIsUniversalApp() then
		var15 = "inApp"
	end
	local var16
	local var17
	if arg1:_getIsUniversalApp() then
		var16 = tostring(arg2)
		var17 = tostring(arg3)
	else
		var16 = tostring(game.PlaceId)
		var17 = tostring(game.GameId)
	end
	arg1:_getEventStream():setRBXEventStream(var15, module_upvr.EventName.EntryPoint, {
		btn = arg1:_getButtonName();
		placeId = var16;
		gameId = var17;
	})
	local var19 = module_upvr.DiagCounters.EntryPoint[arg1:_getButtonName()]
	if var19 then
		arg1:_getDiag():reportCounter(var19, 1)
	end
end
function module_upvr.linkGenerated(arg1, arg2) -- Line 134
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1:_getEventStream():setRBXEventStream("shareLinks", module_upvr.EventName.LinkGenerated, {
		linkType = arg2.linkType;
		linkId = arg2.linkId;
		page = "inGameMenu";
		subpage = "inviteFriendsPage";
	})
end
function module_upvr.onShareButtonClick(arg1, arg2) -- Line 146
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local tbl_4 = {
		btn = "shareServerInviteLink";
		page = "inGameMenu";
	}
	local var22 = "inviteFriendsPage"
	tbl_4.subpage = var22
	if game:GetFastFlag("GameInviteModalIncludeLinkIdInShareButton") then
		var22 = arg2
	else
		var22 = nil
	end
	tbl_4.linkId = var22
	tbl_4.isShortUrlEnabled = true
	arg1:_getEventStream():setRBXEventStream("shareLinks", module_upvr.EventName.ShareButtonClick, tbl_4)
end
function module_upvr.onSearchFocused(arg1) -- Line 159
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var23 = "inGame"
	local tbl_3 = {
		btn = arg1:_getButtonName();
		page = "inGameMenu";
		subpage = "inviteFriendsPage";
	}
	if arg1:_getIsUniversalApp() then
		var23 = "inApp"
		tbl_3.page = "inAppGameDetails"
	end
	arg1:_getEventStream():setRBXEventStream(var23, module_upvr.EventName.InviteSearchFocused, tbl_3)
end
function module_upvr.sendEvent(arg1, arg2, arg3, arg4) -- Line 174
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local Args = arg3.Args
	if game:GetFastFlag("LuaAppInviteEventsIncludePlaceId") then
		local tbl = {}
		local var27
		if arg1:_getIsUniversalApp() and arg4 and arg4.place_id then
			var27 = arg4.place_id
		else
			var27 = game.PlaceId
		end
		tbl.placeId = var27
		Args = Cryo_upvr.Dictionary.join(Args, tbl)
	end
	if arg4 then
		Args = Cryo_upvr.Dictionary.join(Args, arg4)
	end
	arg1:_getEventStream():setRBXEventStream(arg2, arg3.Type, Args)
end
function module_upvr.sendGameInviteModalEvent(arg1, arg2, arg3) -- Line 191
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local tbl_2 = {}
	local var29
	if arg1:_getIsUniversalApp() and arg3 and arg3.place_id then
		var29 = arg3.place_id
	else
		var29 = game.PlaceId
	end
	tbl_2.place_id = var29
	if arg3 then
		var29 = Cryo_upvr.Dictionary.join(tbl_2, arg3)
		tbl_2 = var29
	end
	var29 = arg1:_getEventStream():setRBXEventStream
	var29(arg2, module_upvr.EventName.GameInviteModal, tbl_2)
end
function module_upvr._getEventStream(arg1) -- Line 205
	assert(arg1._eventStreamImpl, "EventStream implementation not found. Did you forget to construct withEventStream?")
	return arg1._eventStreamImpl
end
function module_upvr._getDiag(arg1) -- Line 210
	assert(arg1._diagImpl, "Diag implementation not found. Did you forget to construct withDiag?")
	return arg1._diagImpl
end
function module_upvr._getButtonName(arg1) -- Line 215
	assert(arg1._buttonName, "ButtonName not found. Did you forget to construct withButtonName?")
	return arg1._buttonName
end
function module_upvr._getIsUniversalApp(arg1) -- Line 220
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(arg1._buttonName, "ButtonName not found. Did you forget to construct withButtonName?")
	local var30 = true
	if arg1._buttonName ~= module_upvr.ButtonName.GameDetailsMoreMenu then
		if arg1._buttonName ~= module_upvr.ButtonName.GameDetailsPlayWithFriendsMenu then
			var30 = false
		else
			var30 = true
		end
	end
	return var30
end
return module_upvr