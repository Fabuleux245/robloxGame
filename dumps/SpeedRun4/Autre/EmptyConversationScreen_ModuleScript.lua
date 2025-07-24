-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:49
-- Luau version 6, Types version 3
-- Time taken: 0.001074 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppChat").Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EmptyConversationScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
local EmptyConversationPage_upvr = require(script.Parent.EmptyConversationPage)
function any_extend_result1.render(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: EmptyConversationPage_upvr (readonly)
	]]
	local navigation = arg1.props.navigation
	local var6
	if type(navigation) == "nil" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "ChatConversationScreen should be wrapped with Roact Navigation")
	var6 = Roact_upvr
	var6 = EmptyConversationPage_upvr
	return var6.createElement(var6, {
		topBarHeight = navigation.getScreenProps("topBarHeight", 0);
	})
end
return any_extend_result1