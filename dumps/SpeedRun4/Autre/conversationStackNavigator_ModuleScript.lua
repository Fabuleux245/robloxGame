-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:51
-- Luau version 6, Types version 3
-- Time taken: 0.004033 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens_upvr = require(AppChat.EnumScreens)
local ChatConversationScreen_upvr = require(AppChat.Components.ChatConversation.ChatConversationScreen)
local Cryo_upvr = require(Parent.Cryo)
local ChatDetailsScreen_upvr = require(AppChat.Components.ChatDetails.ChatDetailsScreen)
local getFFlagAppChatReplaceWithCloseButton_upvr = require(AppChat.Flags.getFFlagAppChatReplaceWithCloseButton)
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local SquadLobbyScreen_upvr = require(AppChat.Components.Squads.SquadLobbyScreen)
local SquadInviteFriendsScreen_upvr = require(AppChat.Components.Squads.SquadInviteFriendsScreen)
local FFlagEnablePartyQuickStartButton_upvr = require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local RoactNavigation_upvr = require(Parent.RoactNavigation)
return function(arg1) -- Line 18
	--[[ Upvalues[11]:
		[1]: EnumScreens_upvr (readonly)
		[2]: ChatConversationScreen_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: ChatDetailsScreen_upvr (readonly)
		[5]: getFFlagAppChatReplaceWithCloseButton_upvr (readonly)
		[6]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[7]: SquadLobbyScreen_upvr (readonly)
		[8]: SquadInviteFriendsScreen_upvr (readonly)
		[9]: FFlagEnablePartyQuickStartButton_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: RoactNavigation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_2 = {}
	local tbl_3 = {}
	local tbl_5 = {
		screen = ChatConversationScreen_upvr;
	}
	local var19 = arg1
	if not var19 then
		var19 = {}
	end
	tbl_5.navigationOptions = Cryo_upvr.Dictionary.join({
		backButtonEnabled = false;
		isRoot = true;
		lockIconEnabled = true;
		tabBarVisible = true;
	}, var19)
	tbl_3[EnumScreens_upvr.ChatConversation] = tbl_5
	local tbl_10 = {}
	local tbl_8 = {
		screen = ChatDetailsScreen_upvr;
	}
	local tbl_6 = {}
	if getFFlagAppChatReplaceWithCloseButton_upvr() then
	else
	end
	tbl_6.backButtonEnabled = true
	if getFFlagAppChatReplaceWithCloseButton_upvr() then
	else
	end
	tbl_6.closeButtonEnabled = nil
	if not arg1 then
	end
	tbl_8.navigationOptions = Cryo_upvr.Dictionary.join(tbl_6, {})
	tbl_10[EnumScreens_upvr.ChatDetails] = tbl_8
	module_2[1] = tbl_3
	module_2[2] = tbl_10
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		local tbl_7 = {}
		local tbl_9 = {
			screen = SquadLobbyScreen_upvr.WideSquadLobbyScreen;
		}
		local var26 = arg1
		if not var26 then
			var26 = {}
		end
		tbl_9.navigationOptions = Cryo_upvr.Dictionary.join({
			backButtonEnabled = true;
		}, var26)
		tbl_7[EnumScreens_upvr.SquadLobby] = tbl_9
		table.insert(module_2, tbl_7)
		local tbl_4 = {}
		local tbl_11 = {
			screen = SquadInviteFriendsScreen_upvr;
		}
		local tbl = {}
		local var30 = true
		tbl.backButtonEnabled = var30
		if FFlagEnablePartyQuickStartButton_upvr then
			var30 = {}
			var30.raw = "Feature.Squads.Action.Add"
			var30.shouldLocalize = true
		else
			var30 = nil
		end
		tbl.headerText = var30
		var30 = arg1
		local var31 = var30
		if not var31 then
			var31 = {}
		end
		tbl_11.navigationOptions = Cryo_upvr.Dictionary.join(tbl, var31)
		tbl_4[EnumScreens_upvr.SquadInviteFriends] = tbl_11
		table.insert(module_2, tbl_4)
	end
	local var32
	if default_upvr.isEnabled() then
		local module = {}
		local tbl_2 = {}
		if default_upvr:getConnectTabLeadsToChatTab() then
			var32 = true
		else
			var32 = nil
		end
		tbl_2.tabBarVisible = var32
		module.defaultNavigationOptions = tbl_2
		return RoactNavigation_upvr.createRobloxStackNavigator(module_2, module)
	end
	return RoactNavigation_upvr.createRobloxStackNavigator(module_2)
end