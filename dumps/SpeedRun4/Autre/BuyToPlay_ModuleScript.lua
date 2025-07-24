-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:51
-- Luau version 6, Types version 3
-- Time taken: 0.001419 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("BuyToPlay")
any_extend_result1.defaultProps = {
	text = "Buy to play!";
	gamePrice = 100;
}
local UIBlox_upvr = require(Parent.UIBlox)
local FitFrameVertical_upvr = require(AppChat.Components.ChatConversation.AssetCardComponents.FitFrameVertical)
local Constants_upvr = require(AppChat.Constants)
local PlayButton_upvr = require(script.Parent.PlayButton)
function any_extend_result1.render(arg1) -- Line 26
	--[[ Upvalues[5]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FitFrameVertical_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: PlayButton_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 27
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FitFrameVertical_upvr (copied, readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: PlayButton_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(FitFrameVertical_upvr, {
			BackgroundTransparency = 1;
			width = UDim.new(1, 0);
			contentPadding = UDim.new(0, 6);
		}, {
			gamePriceFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 16);
				LayoutOrder = 1;
			}, {
				layout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					Padding = UDim.new(0, 4);
				});
				robuxIcon = Roact_upvr.createElement("ImageLabel", {
					Size = UDim2.new(0, 16, 1, 0);
					Image = Constants_upvr.SmallRobuxIcon;
					ImageColor3 = arg1_2.Theme.ContextualPrimaryDefault.Color;
					BackgroundTransparency = 1;
					LayoutOrder = 1;
				});
				priceLabel = Roact_upvr.createElement("TextLabel", {
					Size = UDim2.new(1, -16, 1, 0);
					Text = arg1.props.gamePrice;
					TextColor3 = arg1_2.Theme.ContextualPrimaryDefault.Color;
					TextSize = 16;
					TextXAlignment = Enum.TextXAlignment.Left;
					Font = Enum.Font.Gotham;
					BackgroundTransparency = 1;
					LayoutOrder = 2;
				});
			});
			playButton = Roact_upvr.createElement(PlayButton_upvr, {
				placeId = arg1.placeId;
				text = arg1.props.text;
				LayoutOrder = 2;
			});
		})
	end)
end
return any_extend_result1