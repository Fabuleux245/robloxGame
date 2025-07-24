-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:25
-- Luau version 6, Types version 3
-- Time taken: 0.001656 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Squads = require(Parent.Squads)
local FFlagEnablePartyQuickStartButton_upvr = require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton
local any_extend_result1 = React_upvr.PureComponent:extend("SquadInviteFriendsScreen")
if not FFlagEnablePartyQuickStartButton_upvr then
	function any_extend_result1.navigationOptions(arg1) -- Line 18
		return {
			headerText = {
				raw = "Feature.Squads.Label.InviteToSquad";
				shouldLocalize = true;
			};
		}
	end
end
local SquadInviteFriendsContainer_upvr = Squads.SquadInviteFriendsContainer
local SquadInviteFriends_upvr = Squads.SquadInviteFriends
function any_extend_result1.render(arg1) -- Line 28
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: FFlagEnablePartyQuickStartButton_upvr (readonly)
		[3]: SquadInviteFriendsContainer_upvr (readonly)
		[4]: SquadInviteFriends_upvr (readonly)
	]]
	local var11 = React_upvr
	if FFlagEnablePartyQuickStartButton_upvr then
		var11 = SquadInviteFriendsContainer_upvr
	else
		var11 = SquadInviteFriends_upvr
	end
	return var11.createElement(var11, {
		participants = arg1.props.participants;
	})
end
return require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 37
	local var14 = arg1.ChatAppReducer.Conversations[arg2.navigation.getParam("conversationId")]
	local module = {}
	local var16
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var16 = var14.participants
		return var16
	end
	if not var14 or not INLINED() then
		var16 = nil
	end
	module.participants = var16
	return module
end)(any_extend_result1)