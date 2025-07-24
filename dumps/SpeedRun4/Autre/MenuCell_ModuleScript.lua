-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:28
-- Luau version 6, Types version 3
-- Time taken: 0.005748 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuCell")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.integer;
	icon = t.optional(t.union(t.table, t.string));
	iconComponent = t.optional(t.table);
	localizationKey = t.string;
	height = t.numberPositive;
	hasDivider = t.boolean;
	isSelected = t.boolean;
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 34
		--[[ Upvalues[4]:
			[1]: RobloxTranslator_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local Font = arg1_2.Font
		local module = {}
		local isSelected = arg1.props.isSelected
		if isSelected then
			isSelected = Roact_upvr.createElement
			isSelected = isSelected("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 4, 1, 4);
				Position = UDim2.fromScale(0.5, 0.5);
				AnchorPoint = Vector2.new(0.5, 0.5);
			}, {
				TopBorder = Roact_upvr.createElement("Frame", {
					BorderSizePixel = 0;
					Size = UDim2.new(1, 0, 0, 2);
					BackgroundTransparency = Theme.SystemPrimaryOnHover.Transparency;
					BackgroundColor3 = Theme.SystemPrimaryOnHover.Color;
				});
				LeftBorder = Roact_upvr.createElement("Frame", {
					BorderSizePixel = 0;
					Size = UDim2.new(0, 2, 1, 0);
					BackgroundTransparency = Theme.SystemPrimaryOnHover.Transparency;
					BackgroundColor3 = Theme.SystemPrimaryOnHover.Color;
				});
				RightBorder = Roact_upvr.createElement("Frame", {
					BorderSizePixel = 0;
					Size = UDim2.new(0, 2, 1, 0);
					Position = UDim2.fromScale(1, 0);
					AnchorPoint = Vector2.new(1, 0);
					BackgroundTransparency = Theme.SystemPrimaryOnHover.Transparency;
					BackgroundColor3 = Theme.SystemPrimaryOnHover.Color;
				});
				BottomBorder = Roact_upvr.createElement("Frame", {
					BorderSizePixel = 0;
					Size = UDim2.new(1, 0, 0, 2);
					Position = UDim2.fromScale(0, 1);
					AnchorPoint = Vector2.new(0, 1);
					BackgroundTransparency = Theme.SystemPrimaryOnHover.Transparency;
					BackgroundColor3 = Theme.SystemPrimaryOnHover.Color;
				});
			})
		end
		module.SelectedFrame = isSelected
		local tbl_2 = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 12);
			});
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 12);
			});
		}
		local tbl = {}
		local var28 = false
		if arg1.props.icon ~= nil then
			var28 = Roact_upvr.createElement
			var28 = var28(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Image = arg1.props.icon;
				Size = UDim2.fromScale(1, 1);
				ImageTransparency = Theme.IconEmphasis.Transparency;
				ImageColor3 = Theme.IconEmphasis.Color;
			})
		end
		tbl.IconLabel = var28
		var28 = false
		local var30 = var28
		if arg1.props.iconComponent ~= nil then
			var30 = Roact_upvr.createElement(arg1.props.iconComponent)
		end
		tbl.IconComponent = var30
		tbl_2.IconFrame = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 1;
			Size = UDim2.fromOffset(36, 36);
		}, tbl)
		tbl_2.Text = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, -48, 1, 0);
			Text = RobloxTranslator_upvr:FormatByKey(arg1.props.localizationKey);
			Font = Font.Header2.Font;
			TextSize = Font.BaseSize * Font.Header2.RelativeSize;
			TextColor3 = Theme.TextEmphasis.Color;
			TextTransparency = Theme.TextEmphasis.TextTransparency;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			TextTruncate = Enum.TextTruncate.AtEnd;
		})
		module.CellContents = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
		}, tbl_2)
		local hasDivider = arg1.props.hasDivider
		if hasDivider then
			hasDivider = Roact_upvr.createElement
			hasDivider = hasDivider("Frame", {
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 0, 1);
				Position = UDim2.fromScale(0, 1);
				AnchorPoint = Vector2.new(0, 1);
				BackgroundTransparency = Theme.Divider.Transparency;
				BackgroundColor3 = Theme.Divider.Color;
			})
		end
		module.Divider = hasDivider
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = arg1.props.layoutOrder;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, arg1.props.height);
		}, module)
	end)
end
return any_extend_result1