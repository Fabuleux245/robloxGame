-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:00
-- Luau version 6, Types version 3
-- Time taken: 0.000777 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local React_upvr = require(Parent.React)
local MessageContextMenuContainer_upvr = require(script.Parent.MessageContextMenuContainer)
function MessageContextMenuScreen() -- Line 12
	--[[ Upvalues[3]:
		[1]: useNavigation_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: MessageContextMenuContainer_upvr (readonly)
	]]
	local var2_result1 = useNavigation_upvr()
	return React_upvr.createElement(MessageContextMenuContainer_upvr, {
		messageId = var2_result1.getParam("messageId");
		conversationId = var2_result1.getParam("conversationId");
		inputBoxRef = var2_result1.getParam("inputBoxRef");
	})
end
return MessageContextMenuScreen