-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:16
-- Luau version 6, Types version 3
-- Time taken: 0.001162 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppChat").Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EditChatGroupNameDialogScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
function any_extend_result1.init(arg1) -- Line 14
	function arg1.onEditChatGroupNameDialogClose() -- Line 15
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.navigation.goBack()
	end
end
local EditChatGroupNameDialogContainer_upvr = require(script.Parent.EditChatGroupNameDialogContainer)
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: EditChatGroupNameDialogContainer_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	local var8
	if type(navigation) == "nil" then
		var8 = false
	else
		var8 = true
	end
	assert(var8, "EditChatGroupNameDialogScreen should be wrapped with Roact Navigation")
	var8 = "conversationId"
	local any_getParam_result1 = navigation.getParam(var8, nil)
	if any_getParam_result1 == nil then
		var8 = Logger_upvr:warning
		var8("ConversationId is required to open {screen}")
		var8 = nil
		return var8
	end
	var8 = Roact_upvr.createElement
	var8 = var8(EditChatGroupNameDialogContainer_upvr, {
		conversationId = any_getParam_result1;
		onModalClose = arg1.onEditChatGroupNameDialogClose;
	})
	return var8
end
function any_extend_result1.didMount(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
end
return any_extend_result1