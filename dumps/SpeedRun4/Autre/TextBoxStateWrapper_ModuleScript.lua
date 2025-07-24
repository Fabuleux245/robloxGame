-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:25
-- Luau version 6, Types version 3
-- Time taken: 0.008621 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local UIBlox = require(Parent.UIBlox)
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("TextBoxStateWrapper")
any_extend_result1.defaultProps = {
	IconSize = UDim2.new(1, 0, 1, 0);
	TextBoxLabelPadding = 12;
	InnerSidePadding = 0;
}
function any_extend_result1.init(arg1) -- Line 24
	arg1:setState({
		Focused = false;
		Hover = false;
	})
	function arg1.onMouseEnter() -- Line 30
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			Hover = true;
		})
	end
	function arg1.onMouseLeave() -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			Hover = false;
		})
	end
	function arg1.onFocused(...) -- Line 42
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			Focused = true;
		})
		if arg1.props.ChildProps.onFocused then
			arg1.props.ChildProps.onFocused(...)
		end
	end
	function arg1.onFocusLost(...) -- Line 51
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			Focused = false;
		})
		if arg1.props.ChildProps.onFocusLost then
			arg1.props.ChildProps.onFocusLost(...)
		end
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local Cryo_upvr = require(Parent.Cryo)
function any_extend_result1.render(arg1) -- Line 61
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: GetImageData_upvr (readonly)
		[5]: Cryo_upvr (readonly)
	]]
	local LabelText_upvr = arg1.props.LabelText
	local ErrorText_upvr = arg1.props.ErrorText
	local HelpComponent_upvr = arg1.props.HelpComponent
	return withStyle_upvr(function(arg1_2) -- Line 66
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: LabelText_upvr (readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: GetImageData_upvr (copied, readonly)
			[6]: Cryo_upvr (copied, readonly)
			[7]: ErrorText_upvr (readonly)
			[8]: HelpComponent_upvr (readonly)
		]]
		local Color = arg1_2.Theme.UIDefault.Color
		local Transparency = arg1_2.Theme.UIDefault.Transparency
		if arg1.props.ErrorState then
			Color = arg1_2.Theme.Alert.Color
			Transparency = arg1_2.Theme.Alert.Transparency
		elseif arg1.state.Focused then
			Color = arg1_2.Theme.IconEmphasis.Color
			Transparency = arg1_2.Theme.IconEmphasis.Transparency
		elseif arg1.state.Hover then
			Color = arg1_2.Theme.IconDefault.Color
			Transparency = arg1_2.Theme.IconDefault.Transparency
		end
		local module = {
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, arg1.props.TextBoxLabelPadding);
			});
		}
		local var53 = LabelText_upvr
		if var53 then
			var53 = Roact_upvr.createElement
			var53 = var53("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				Font = arg1_2.Font.CaptionHeader.Font;
				LayoutOrder = 1;
				Size = UDim2.fromScale(1, 0);
				Text = LabelText_upvr;
				TextColor3 = arg1_2.Theme.TextEmphasis.Color;
				TextSize = arg1.props.TextBoxLabelTextSize;
				TextTransparency = arg1_2.Theme.TextEmphasis.Transparency;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
			})
		end
		module.TextBoxLabel = var53
		local tbl_18 = {
			Border = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.new(1, 0, 1, 0);
				ZIndex = 2;
				BackgroundTransparency = 1;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(9, 9, 9, 9);
				Image = GetImageData_upvr("LuaApp/buttons/buttonStroke") or "LuaApp/buttons/buttonStroke";
				ImageColor3 = Color;
				ImageTransparency = Transparency;
			});
			TextBox = Roact_upvr.createElement(arg1.props.ChildClass, Cryo_upvr.Dictionary.join(arg1.props.ChildProps, {
				Size = UDim2.new(1, 0, 1, 0);
				onMouseEnter = arg1.onMouseEnter;
				onMouseLeave = arg1.onMouseLeave;
				onFocused = arg1.onFocused;
				onFocusLost = arg1.onFocusLost;
			}));
		}
		local Icon_2 = arg1.props.Icon
		if Icon_2 then
			Icon_2 = Roact_upvr.createElement
			Icon_2 = Icon_2("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				Position = UDim2.new(1, -2, 0, 0);
				AnchorPoint = Vector2.new(1, 0);
				BackgroundTransparency = 1;
				ZIndex = 2;
			}, {
				AspectRatio = Roact_upvr.createElement("UIAspectRatioConstraint", {
					AspectRatio = 1;
				});
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					Size = arg1.props.IconSize;
					Position = UDim2.new(0.5, 0, 0.5, 0);
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					Image = arg1.props.Icon;
					ImageColor3 = Color;
					ImageTransparency = Transparency;
				});
			})
		end
		tbl_18.IconWrapper = Icon_2
		module.TextBox = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			LayoutOrder = 2;
			Size = arg1.props.Size;
		}, tbl_18)
		local var64 = ErrorText_upvr
		if var64 then
			var64 = Roact_upvr.createElement
			local tbl_6 = {}
			local var67 = false
			if arg1.props.InnerSidePadding ~= 0 then
				var67 = Roact_upvr.createElement
				var67 = var67("UIPadding", {
					PaddingRight = UDim.new(0, arg1.props.InnerSidePadding);
					PaddingLeft = UDim.new(0, arg1.props.InnerSidePadding);
				})
			end
			tbl_6.Padding = var67
			var64 = var64("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				Font = arg1_2.Font.CaptionBody.Font;
				LayoutOrder = 3;
				Size = UDim2.fromScale(1, 0);
				Text = ErrorText_upvr;
				TextColor3 = arg1_2.Theme.Alert.Color;
				TextSize = arg1_2.Font.CaptionBody.RelativeSize * arg1_2.Font.BaseSize;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
			}, tbl_6)
		end
		module.ErrorText = var64
		var64 = not ErrorText_upvr
		local var69 = var64
		if var69 then
			var69 = HelpComponent_upvr
			if var69 then
				var69 = Roact_upvr.createElement
				local tbl_14 = {}
				local var72 = false
				if arg1.props.InnerSidePadding ~= 0 then
					var72 = Roact_upvr.createElement
					var72 = var72("UIPadding", {
						PaddingRight = UDim.new(0, arg1.props.InnerSidePadding);
						PaddingLeft = UDim.new(0, arg1.props.InnerSidePadding);
					})
				end
				tbl_14.Padding = var72
				tbl_14.HelpComponent = HelpComponent_upvr
				var69 = var69("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					LayoutOrder = 4;
					Size = UDim2.fromScale(1, 0);
				}, tbl_14)
			end
		end
		module.HelpComponentWrapper = var69
		return Roact_upvr.createElement("Frame", {
			AnchorPoint = arg1.props.AnchorPoint;
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			LayoutOrder = arg1.props.LayoutOrder;
			Position = arg1.props.Position;
			Size = UDim2.fromScale(1, 0);
			[Roact_upvr.Change.AbsolutePosition] = arg1.props.onPositionChangedCallback;
		}, module)
	end)
end
return any_extend_result1