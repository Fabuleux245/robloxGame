-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:18
-- Luau version 6, Types version 3
-- Time taken: 0.001316 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Roact_upvr = require(ExpChat.Parent.Roact)
local getFFlagEnableChatWindowMemoization = ExpChat.Flags.getFFlagEnableChatWindowMemoization
if require(getFFlagEnableChatWindowMemoization)() then
	getFFlagEnableChatWindowMemoization = Roact_upvr.PureComponent
else
	getFFlagEnableChatWindowMemoization = Roact_upvr.Component
end
local any_extend_result1 = getFFlagEnableChatWindowMemoization:extend("ScrollingView")
any_extend_result1.defaultProps = {}
local BottomLockedScrollView_upvr = require(ExpChat.ChatWindow.UI.BottomLockedScrollView)
function any_extend_result1.render(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: BottomLockedScrollView_upvr (readonly)
	]]
	return Roact_upvr.createElement("ImageButton", {
		BackgroundTransparency = 1;
		Size = arg1.props.size;
	}, {
		bottomLockedScrollView = Roact_upvr.createElement(BottomLockedScrollView_upvr, {
			Size = UDim2.fromScale(1, 1);
			messages = arg1.props.messages;
			targetTextChannel = arg1.props.targetTextChannel;
			isChannelBarVisible = arg1.props.isChannelBarVisible;
		}, arg1.props[Roact_upvr.Children]);
	})
end
return any_extend_result1