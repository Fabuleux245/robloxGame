-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:48
-- Luau version 6, Types version 3
-- Time taken: 0.001093 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EmptyConversationPage")
any_extend_result1.defaultProps = {
	topBarHeight = 0;
}
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
function any_extend_result1.render(arg1) -- Line 15
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 16
		--[[ Upvalues[1]:
			[1]: Roact_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			BackgroundColor3 = arg1_2.Theme.BackgroundDefault.Color;
			Size = UDim2.new(1, 0, 1, 0);
			BorderSizePixel = 0;
			Transparency = arg1_2.Tokens.Global.Color.None.Transparency;
		}, {
			EmptyChatFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 1, 0);
			}, {
				ChatIcon = Roact_upvr.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					Position = UDim2.new(0.5, 0, 0.5, 0);
					Image = "rbxasset://textures/ui/LuaChat/icons/ic-chat-large.png";
					Size = UDim2.new(0, 150, 0, 150);
				});
			});
		})
	end)
end
return any_extend_result1