-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:19
-- Luau version 6, Types version 3
-- Time taken: 0.002139 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Roact_upvr = require(AppChat.Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LeaveGroupDialogScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
local EnumScreens_upvr = require(AppChat.EnumScreens)
function any_extend_result1.init(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: Logger_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
	]]
	function arg1.onLeaveGroupDialogClose() -- Line 17
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.navigation.goBack()
	end
	function arg1.onLeaveGroupSuccess() -- Line 21
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Logger_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local navigation_2 = arg1.props.navigation
		if navigation_2.getScreenProps("wideMode", false) then
			Logger_upvr:info("Navigate To ChatLanding with EmptyConversation from {screen}")
			navigation_2.navigate(EnumScreens_upvr.EmptyConversation)
		else
			Logger_upvr:info("Navigate To ChatLanding from {screen}")
			navigation_2.navigate(EnumScreens_upvr.ChatLanding)
		end
	end
end
local LeaveGroupDialogContainer_upvr = require(script.Parent.LeaveGroupDialogContainer)
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LeaveGroupDialogContainer_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	local var12
	if type(navigation) == "nil" then
		var12 = false
	else
		var12 = true
	end
	assert(var12, "LeaveGroupDialogScreen should be wrapped with Roact Navigation")
	var12 = "conversationId"
	local any_getParam_result1 = navigation.getParam(var12, nil)
	if any_getParam_result1 == nil then
		var12 = Logger_upvr:warning
		var12("ConversationId is required to open {screen}")
		var12 = nil
		return var12
	end
	var12 = Roact_upvr.createElement
	var12 = var12(LeaveGroupDialogContainer_upvr, {
		conversationId = any_getParam_result1;
		onModalClose = arg1.onLeaveGroupDialogClose;
		onLeaveSuccess = arg1.onLeaveGroupSuccess;
	})
	return var12
end
function any_extend_result1.didMount(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
end
return any_extend_result1