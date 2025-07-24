-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:01
-- Luau version 6, Types version 3
-- Time taken: 0.005600 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local RoactFitComponents = require(Parent.RoactFitComponents)
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
function any_extend_result1.init(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.contentRef = Roact_upvr.createRef()
	arg1.state = {
		contentSize = Vector2.new(0, 0);
	}
	function arg1.changeContentSize(arg1_2) -- Line 45
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.contentSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				contentSize = arg1_2.AbsoluteSize;
			})
		end
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Constants_upvr = require(Parent_2.Generic.Constants)
local IconSize_upvr = UIBlox.App.Constant.IconSize
local getEnableCondenseRobuxUpsell_upvr = require(Parent_2.Flags.getEnableCondenseRobuxUpsell)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_status_imageunavailable_upvr = Images["icons/status/imageunavailable"]
local HumanoidViewport_upvr = require(Parent_2.Generic.HumanoidViewport)
local FitFrameVertical_upvr = RoactFitComponents.FitFrameVertical
local FitTextLabel_upvr = RoactFitComponents.FitTextLabel
local icons_common_robux_upvr = Images["icons/common/robux"]
function any_extend_result1.render(arg1) -- Line 54
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: getEnableCondenseRobuxUpsell_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: icons_status_imageunavailable_upvr (readonly)
		[8]: HumanoidViewport_upvr (readonly)
		[9]: FitFrameVertical_upvr (readonly)
		[10]: FitTextLabel_upvr (readonly)
		[11]: icons_common_robux_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_3) -- Line 57
		--[[ Upvalues[12]:
			[1]: props_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
			[7]: icons_status_imageunavailable_upvr (copied, readonly)
			[8]: HumanoidViewport_upvr (copied, readonly)
			[9]: FitFrameVertical_upvr (copied, readonly)
			[10]: arg1 (readonly)
			[11]: FitTextLabel_upvr (copied, readonly)
			[12]: icons_common_robux_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_3.Theme
		local Font = arg1_3.Font
		local var25
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = Constants_upvr.NORMAL_ICON_SIZE
			return var25
		end
		if props_upvr.itemIcon == nil or not INLINED() then
			var25 = IconSize_upvr.Large
		end
		if props_upvr.model ~= nil then
			var25 = Constants_upvr.NORMAL_ICON_SIZE
		end
		local var26
		if var26 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var26 = var25
				return var26
			end
			if props_upvr.itemIconWidth ~= nil or not INLINED_2() then
				var26 = props_upvr.itemIconWidth
			end
			local var27 = var26
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var26 = var25
				return var26
			end
			if props_upvr.itemIconHeight ~= nil or not INLINED_3() then
				var26 = props_upvr.itemIconHeight
			end
			local var28 = var26
		end
		if props_upvr.itemIcon then
			var26 = Roact_upvr.createElement
			var26 = var26(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 5, 0, 5);
				Size = UDim2.new(0, var27, 0, var28);
				ScaleType = Enum.ScaleType.Stretch;
				Image = props_upvr.itemIcon;
				ImageTransparency = 0;
			})
		else
			var26 = Roact_upvr.createElement
			var26 = var26(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 5, 0, 5);
				Size = UDim2.new(0, var27, 0, var28);
				ScaleType = Enum.ScaleType.Stretch;
				Image = icons_status_imageunavailable_upvr;
				ImageColor3 = Theme.UIDefault.Color;
				ImageTransparency = Theme.UIDefault.Transparency;
			})
		end
		if props_upvr.model ~= nil then
			var26 = Roact_upvr.createElement(HumanoidViewport_upvr, {
				model = props_upvr.model;
				Position = UDim2.fromOffset(5, 5);
				Size = UDim2.fromOffset(var27, var28);
			})
		end
		return Roact_upvr.createElement(FitFrameVertical_upvr, {
			LayoutOrder = props_upvr.layoutOrder;
			BackgroundTransparency = 1;
			width = UDim.new(1, 0);
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			contentPadding = UDim.new(0, 6);
			[Roact_upvr.Ref] = arg1.contentRef;
			[Roact_upvr.Change.AbsoluteSize] = arg1.changeContentSize;
		}, {
			ItemIconFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				width = UDim.new(0.45, 0);
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				margin = {
					top = 0;
					bottom = 0;
					left = 0;
					right = 20;
				};
			}, {
				ItemIcon = var26;
			});
			ItemDetailsFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				width = UDim.new(0.55, 0);
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 5);
			}, {
				ItemName = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					width = FitTextLabel_upvr.Width.FitToText;
					maximumWidth = arg1.state.contentSize.X * 0.55;
					Font = Font.Header2.Font;
					Text = props_upvr.itemName;
					TextSize = Font.BaseSize * Font.Header2.RelativeSize;
					TextColor3 = Theme.TextEmphasis.Color;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
				});
				ItemCostFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					width = UDim.new(0.5, 0);
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Left;
					VerticalAlignment = Enum.VerticalAlignment.Top;
					contentPadding = UDim.new(0, 2);
				}, {
					RobuxIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
						LayoutOrder = 1;
						BackgroundTransparency = 1;
						Position = UDim2.new(0, 5, 0, 5);
						Size = UDim2.new(0, 24, 0, 24);
						ScaleType = Enum.ScaleType.Stretch;
						Image = icons_common_robux_upvr;
						ImageColor3 = Theme.IconEmphasis.Color;
						ImageTransparency = Theme.IconEmphasis.Transparency;
					});
					ItemCost = Roact_upvr.createElement(FitTextLabel_upvr, {
						LayoutOrder = 2;
						BackgroundTransparency = 1;
						TextWrapped = true;
						width = FitTextLabel_upvr.Width.FitToText;
						maximumWidth = arg1.state.contentSize.X;
						Font = Font.Header2.Font;
						Text = tostring(props_upvr.itemRobuxCost);
						TextSize = Font.BaseSize * Font.Header2.RelativeSize;
						TextColor3 = Theme.TextEmphasis.Color;
					});
				});
			});
		})
	end)
end
return any_extend_result1