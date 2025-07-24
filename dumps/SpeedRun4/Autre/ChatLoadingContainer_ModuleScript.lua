-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:37
-- Luau version 6, Types version 3
-- Time taken: 0.001559 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local FFlagAppIaScrollAway_upvr = require(Parent.SharedFlags).FFlagAppIaScrollAway
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatLoadingContainer")
local tbl = {
	topBarHeight = 0;
	cellHeight = 64;
}
local var6 = 375
tbl.cellWidth = var6
if FFlagAppIaScrollAway_upvr then
	var6 = 0
else
	var6 = nil
end
tbl.topPadding = var6
any_extend_result1.defaultProps = tbl
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local ChatLoadingIndicator_upvr = require(script.Parent.ChatLoadingIndicator)
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FFlagAppIaScrollAway_upvr (readonly)
		[4]: ChatLoadingIndicator_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 22
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FFlagAppIaScrollAway_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ChatLoadingIndicator_upvr (copied, readonly)
		]]
		local module = {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				FillDirection = Enum.FillDirection.Vertical;
			});
		}
		local var13
		if FFlagAppIaScrollAway_upvr and 0 < arg1.props.topPadding then
			var13 = Roact_upvr.createElement
			var13 = var13("UIPadding", {
				PaddingTop = UDim.new(0, arg1.props.topPadding);
			})
		else
			var13 = nil
		end
		module.UIPadding = var13
		var13 = Roact_upvr.createElement
		var13 = var13("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
		}, {
			ChatLoadingIndicator = Roact_upvr.createElement(ChatLoadingIndicator_upvr, {
				cellHeight = arg1.props.cellHeight;
				cellWidth = arg1.props.cellWidth;
			});
		})
		module.ChatLoadingFrame = var13
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundColor3 = arg1_2.Theme.BackgroundDefault.Color;
			BackgroundTransparency = arg1_2.Tokens.Global.Color.None.Transparency;
			BorderSizePixel = 0;
			ClipsDescendants = true;
		}, module)
	end)
end
return any_extend_result1