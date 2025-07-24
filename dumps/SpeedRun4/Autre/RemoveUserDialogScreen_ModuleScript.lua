-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:27
-- Luau version 6, Types version 3
-- Time taken: 0.001226 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppChat").Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("RemoveUserDialog")
any_extend_result1.defaultProps = {
	navigation = nil;
}
function any_extend_result1.init(arg1) -- Line 14
	function arg1.onRemoveUserDialogClose() -- Line 15
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.navigation.goBack()
	end
end
local RemoveUserDialogContainer_upvr = require(script.Parent.RemoveUserDialogContainer)
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RemoveUserDialogContainer_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	local var8
	if type(navigation) == "nil" then
		var8 = false
	else
		var8 = true
	end
	assert(var8, "RemoveUserDialog should be wrapped with Roact Navigation")
	var8 = "conversationId"
	local any_getParam_result1 = navigation.getParam(var8, nil)
	var8 = navigation.getParam("participantId", nil)
	if any_getParam_result1 == nil or var8 == nil then
		Logger_upvr:warning("ConversationId and participantId are required to open {screen}")
		return nil
	end
	return Roact_upvr.createElement(RemoveUserDialogContainer_upvr, {
		conversationId = any_getParam_result1;
		participantId = var8;
		onModalClose = arg1.onRemoveUserDialogClose;
	})
end
function any_extend_result1.didMount(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
end
return any_extend_result1