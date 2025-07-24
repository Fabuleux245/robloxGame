-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:26
-- Luau version 6, Types version 3
-- Time taken: 0.004832 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local EnumScreens_upvr = require(AppChat.EnumScreens)
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local any_extend_result1_upvr = React_upvr.PureComponent:extend("SquadLobbyScreen")
local ChatPlacementContext_upvr = require(AppChat.Contexts.ChatPlacementContext)
local tbl_3_upvr = {EnumScreens_upvr.SquadLobby, EnumScreens_upvr.SquadInviteFriends, EnumScreens_upvr.SquadVoiceReportAbuse}
local SquadAddFriendsIconButton_upvr = require(script.Parent.SquadAddFriendsIconButton)
local function var9(arg1) -- Line 25
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: SquadAddFriendsIconButton_upvr (readonly)
	]]
	local module = {}
	local navigation_upvr = arg1.navigation
	function module.renderRight() -- Line 29
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: SquadAddFriendsIconButton_upvr (copied, readonly)
			[3]: navigation_upvr (readonly)
		]]
		return React_upvr.createElement(SquadAddFriendsIconButton_upvr, {
			navigation = navigation_upvr;
		})
	end
	return module
end
local function init(arg1) -- Line 37
	--[[ Upvalues[2]:
		[1]: EnumScreens_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	arg1.hasNavigatedAwayFromSquad = false
	function arg1.navigateToHomePage(arg1_2) -- Line 40
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local var15 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.Home]
		if var15 then
			var15()
		end
	end
	function arg1.openViewProfile(arg1_3) -- Line 50
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local var17 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.ViewUserProfile]
		if var17 then
			var17(arg1_3, {})
		end
	end
	function arg1.openSquadVoiceAbuseReport(arg1_4) -- Line 58
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.reportData = arg1_4
		arg1.props.navigation.navigate(EnumScreens_upvr.SquadVoiceReportAbuse, tbl)
	end
	function arg1.navigateToSquadInviteFriends(arg1_5) -- Line 62
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		tbl_2.conversationId = arg1_5
		arg1.props.navigation.navigate(EnumScreens_upvr.SquadInviteFriends, tbl_2)
	end
	function arg1.navigateAwayFromSquad() -- Line 66
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_3_upvr (copied, readonly)
		]]
		if arg1.hasNavigatedAwayFromSquad then
		else
			local any__dangerouslyGetParent_result1 = arg1.props.navigation._dangerouslyGetParent()
			if any__dangerouslyGetParent_result1 then
				local state = any__dangerouslyGetParent_result1.state
				if state then
					local var31
					for i = state.index, 1, -1 do
						if not table.find(tbl_3_upvr, state.routes[i].routeName) then
							if var31 then
								arg1.hasNavigatedAwayFromSquad = true
								arg1.props.navigation.goBack(var31)
							end
							return
						end
					end
				end
			end
		end
	end
end
any_extend_result1_upvr.init = init
local withChatPlacementContext_upvr = ChatPlacementContext_upvr.withChatPlacementContext
local FFlagRenderSquadLobbyOnlyWhenVisible_upvr = require(AppChat.Flags.FFlagRenderSquadLobbyOnlyWhenVisible)
local SquadLobby_upvr = require(Parent.Squads).SquadLobby
local function render(arg1) -- Line 94
	--[[ Upvalues[5]:
		[1]: withChatPlacementContext_upvr (readonly)
		[2]: FFlagRenderSquadLobbyOnlyWhenVisible_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadLobby_upvr (readonly)
		[5]: ChatPlacementContext_upvr (readonly)
	]]
	return withChatPlacementContext_upvr(function(arg1_6) -- Line 95
		--[[ Upvalues[5]:
			[1]: FFlagRenderSquadLobbyOnlyWhenVisible_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: React_upvr (copied, readonly)
			[4]: SquadLobby_upvr (copied, readonly)
			[5]: ChatPlacementContext_upvr (copied, readonly)
		]]
		if FFlagRenderSquadLobbyOnlyWhenVisible_upvr and not arg1.props.navigation.isFocused() then
			return nil
		end
		return React_upvr.createElement(SquadLobby_upvr, {
			navigateToHomePage = arg1.navigateToHomePage;
			openViewProfile = arg1.openViewProfile;
			openSquadVoiceAbuseReport = arg1.openSquadVoiceAbuseReport;
			navigateAwayFromSquad = arg1.navigateAwayFromSquad;
			navigateToSquadInviteFriends = arg1.navigateToSquadInviteFriends;
			isInExperience = ChatPlacementContext_upvr.isPlacementInExperience(arg1_6.chatPlacement);
			isWideMode = arg1.props.isWideMode;
		})
	end)
end
any_extend_result1_upvr.render = render
local any_extend_result1_2 = React_upvr.PureComponent:extend("WideSquadLobbyScreen")
any_extend_result1_2.navigationOptions = var9
local function init(arg1) -- Line 114
end
any_extend_result1_2.init = init
local function render(arg1) -- Line 116
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return React_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.union(arg1.props, {
		isWideMode = true;
	}))
end
any_extend_result1_2.render = render
local any_extend_result1 = React_upvr.PureComponent:extend("CompactSquadLobbyScreen")
any_extend_result1.navigationOptions = var9
function any_extend_result1.init(arg1) -- Line 122
end
function any_extend_result1.render(arg1) -- Line 123
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return React_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.union(arg1.props, {
		isWideMode = false;
	}))
end
return {
	WideSquadLobbyScreen = any_extend_result1_2;
	CompactSquadLobbyScreen = any_extend_result1;
}