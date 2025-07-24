-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:28
-- Luau version 6, Types version 3
-- Time taken: 0.001893 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").AddFriends.dependencies)
local Roact_upvr = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("AddFriendsSectionHeaderFrame")
any_extend_result1.validateProps = t.strictInterface({
	title = t.string;
	icon = t.optional(UIBlox.Core.ImageSet.Validator.validateImage);
	iconVisible = t.optional(t.boolean);
	onIconActivated = t.optional(t.callback);
	layoutOrder = t.optional(t.integer);
})
any_extend_result1.defaultProps = {
	layoutOrder = 1;
}
local withStyle_upvr = UIBlox.Style.withStyle
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
function any_extend_result1.render(arg1) -- Line 30
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: IconButton_upvr (readonly)
		[4]: IconSize_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 31
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: IconButton_upvr (copied, readonly)
			[4]: IconSize_upvr (copied, readonly)
		]]
		local module = {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween;
			});
			HeaderLabel = Roact_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Font = arg1_2.Font.Header1.Font;
				Position = UDim2.new(0, 0, 0, 0);
				Size = UDim2.new(0.8, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				Text = arg1.props.title;
				TextColor3 = arg1_2.Tokens.Semantic.Color.Text.Emphasis.Color3;
				TextSize = arg1_2.Tokens.Semantic.Typography.Header.FontSize;
				TextTransparency = arg1_2.Tokens.Semantic.Color.Text.Emphasis.Transparency;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Center;
				TextWrapped = true;
				LayoutOrder = 1;
			});
		}
		local var16
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var16 = var16(IconButton_upvr, tbl)
			tbl.layoutOrder = 2
			tbl.onActivated = arg1.props.onIconActivated
			tbl.iconColor3 = arg1_2.Tokens.Semantic.Color.Icon.Emphasis.Color3
			tbl.iconTransparency = arg1_2.Tokens.Semantic.Color.Icon.Emphasis.Transparency
			tbl.icon = arg1.props.icon
			tbl.anchorPoint = Vector2.new(1, 0)
			tbl.position = UDim2.new(1, 0, 0, 6)
			tbl.size = UDim2.fromOffset(IconSize_upvr.Medium, IconSize_upvr.Medium)
			local tbl = {}
			var16 = Roact_upvr.createElement
			return var16
		end
		if not arg1.props.iconVisible or not INLINED() then
			var16 = nil
		end
		module.HeaderImageButton = var16
		return Roact_upvr.createElement("Frame", {
			ZIndex = 2;
			Position = UDim2.new(0, 24, 0, 0);
			Size = UDim2.new(1, 0, 0, arg1_2.Tokens.Global.Space_600);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = arg1.props.layoutOrder;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, module)
	end)
end
return any_extend_result1