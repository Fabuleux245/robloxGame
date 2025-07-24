-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:24
-- Luau version 6, Types version 3
-- Time taken: 0.002326 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local any_extend_result1 = React_upvr.PureComponent:extend("QuickStartSquadInviteFriendsScreen")
function any_extend_result1.navigationOptions(arg1) -- Line 14
	return {
		headerText = {
			raw = "Feature.Squads.Action.Party";
			shouldLocalize = true;
		};
		backButtonEnabled = true;
	}
end
local resetForSquadLobbyForWideMode_upvr = require(AppChat.Utils.resetForSquadLobbyForWideMode)
local resetForSquadLobbyForCompactMode_upvr = require(AppChat.Utils.resetForSquadLobbyForCompactMode)
function any_extend_result1.init(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: resetForSquadLobbyForWideMode_upvr (readonly)
		[2]: resetForSquadLobbyForCompactMode_upvr (readonly)
	]]
	function arg1.navigateIntoSquadLobby(arg1_2) -- Line 24
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: resetForSquadLobbyForWideMode_upvr (copied, readonly)
			[3]: resetForSquadLobbyForCompactMode_upvr (copied, readonly)
		]]
		local any_getParam_result1 = arg1.props.navigation.getParam("partyAttemptId", nil)
		if arg1.props.navigation.getScreenProps("wideMode", false) then
			resetForSquadLobbyForWideMode_upvr(arg1.props.navigation, arg1_2, {
				squadCreateOrJoinAttemptId = any_getParam_result1;
			})
		else
			resetForSquadLobbyForCompactMode_upvr(arg1.props.navigation, arg1_2, {
				squadCreateOrJoinAttemptId = any_getParam_result1;
			})
		end
	end
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local QuickStartSquadInviteFriendsContainer_upvr = require(Parent.Squads).QuickStartSquadInviteFriendsContainer
function any_extend_result1.render(arg1) -- Line 40
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: QuickStartSquadInviteFriendsContainer_upvr (readonly)
	]]
	local any_isNotNil_result1 = ArgCheck_upvr.isNotNil(arg1.props.navigation, "navigation in CreateNewChatScreen")
	local module_2 = {}
	local var18
	if any_isNotNil_result1.getScreenProps("wideMode", false) then
		var18 = -any_isNotNil_result1.getScreenProps("topBarHeight", 0)
	else
		var18 = 0
	end
	module_2.Size = UDim2.new(1, 0, 1, var18)
	module_2.BackgroundTransparency = 1
	local module = {}
	local tbl = {}
	var18 = arg1.navigateIntoSquadLobby
	tbl.navigateIntoSquadLobby = var18
	tbl.partyAttemptId = arg1.props.navigation.getParam("partyAttemptId", nil)
	module[1] = React_upvr.createElement(QuickStartSquadInviteFriendsContainer_upvr, tbl)
	return React_upvr.createElement("Frame", module_2, module)
end
return any_extend_result1