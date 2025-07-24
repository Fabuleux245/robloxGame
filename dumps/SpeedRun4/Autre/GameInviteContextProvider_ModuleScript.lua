-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:50
-- Luau version 6, Types version 3
-- Time taken: 0.002382 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local React_upvr = require(Parent.React)
local GameDetailsContextProvider_upvr = require(Parent_2.GameDetailsContextProvider)
local GetFFlagEnableCommonFriendsMenu_upvr = require(Parent.SharedFlags).GetFFlagEnableCommonFriendsMenu
local InviteFriendProvider_upvr = require(Parent_2.InviteFriendProvider)
local FriendsListContextProvider_upvr = require(Parent.FriendsMenu).FriendsListContextProvider
return function(arg1) -- Line 22
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: GameDetailsContextProvider_upvr (readonly)
		[3]: GetFFlagEnableCommonFriendsMenu_upvr (readonly)
		[4]: InviteFriendProvider_upvr (readonly)
		[5]: FriendsListContextProvider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10
	local var11
	local var12
	if arg1.options then
		var10 = arg1.options.trigger
		var11 = arg1.options.promptMessage
		var12 = arg1.isCoreScript or false
	end
	local module = {}
	if GetFFlagEnableCommonFriendsMenu_upvr() then
		local any_createElement_result1 = React_upvr.createElement(InviteFriendProvider_upvr, {
			trigger = var10;
			inviteMessageId = arg1.options.inviteMessageId;
			launchData = arg1.options.launchData;
			promptMessage = var11;
			isCoreScript = var12;
			rootPlaceId = arg1.options.rootPlaceId;
			universeId = arg1.options.universeId;
		}, arg1.children)
	else
		local tbl = {
			trigger = var10;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.inviteMessageId = arg1.options.inviteMessageId
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.launchData = arg1.options.launchData
		tbl.promptMessage = var11
		tbl.isCoreScript = var12
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.rootPlaceId = arg1.options.rootPlaceId
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.universeId = arg1.options.universeId
	end
	module[1] = React_upvr.createElement(FriendsListContextProvider_upvr, {
		isLoadingCustomParams = arg1.isLoadingCustomParams;
	}, React_upvr.createElement(InviteFriendProvider_upvr, tbl, arg1.children))
	return React_upvr.createElement(GameDetailsContextProvider_upvr, {
		gameDetails = arg1.gameDetails;
		serverType = arg1.serverType;
		promptMessage = var11;
		trigger = var10;
		isCoreScript = var12;
	}, module)
end