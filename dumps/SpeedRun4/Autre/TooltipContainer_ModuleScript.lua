-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:39
-- Luau version 6, Types version 3
-- Time taken: 0.008540 seconds

local Parent_3 = script.Parent
local Parent_4 = Parent_3.Parent.Parent
local Parent_2 = Parent_4.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local Images = require(Parent_4.ImageSet.Images)
local TooltipOrientation = require(Parent_3.Enum.TooltipOrientation)
local tbl_upvr_2 = {
	[TooltipOrientation.Bottom] = Images["component_assets/triangleUp_16"];
	[TooltipOrientation.Top] = Images["component_assets/triangleDown_16"];
	[TooltipOrientation.Right] = Images["component_assets/triangleLeft_16"];
	[TooltipOrientation.Left] = Images["component_assets/triangleRight_16"];
}
local tbl_upvr = {
	frequency = 50;
	dampingRatio = 1;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("TooltipContainer")
any_extend_result1.validateProps = t.strictInterface({
	triggerPosition = t.Vector2;
	triggerSize = t.Vector2;
	bodyText = t.string;
	headerText = t.optional(t.string);
	screenSize = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	orientation = t.optional(TooltipOrientation.isEnumValue);
	isDirectChild = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	screenSize = Vector2.new(10000, 10000);
	orientation = TooltipOrientation.Bottom;
	isDirectChild = false;
}
local Otter_upvr = require(Parent.Otter)
function any_extend_result1.init(arg1) -- Line 61
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	arg1.visible = true
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.progress = any_createBinding_result1
	arg1.progressMotor = Otter_upvr.createSingleMotor(0)
	arg1.progressMotor:onStep(any_createBinding_result2)
	arg1.progressMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local GetTextHeight_upvr = require(Parent_2.Core.Text.GetTextHeight)
local getPositionInfo_upvr = require(Parent_3.getPositionInfo)
local lerp_upvr = require(Parent_2.Utility.lerp)
local divideTransparency_upvr = require(Parent_2.Utility.divideTransparency)
local Label_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 72
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
		[3]: GetTextHeight_upvr (readonly)
		[4]: getPositionInfo_upvr (readonly)
		[5]: lerp_upvr (readonly)
		[6]: divideTransparency_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: Label_upvr (readonly)
		[9]: tbl_upvr_2 (readonly)
		[10]: GenericTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 73
		--[[ Upvalues[10]:
			[1]: GetTextSize_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GetTextHeight_upvr (copied, readonly)
			[4]: getPositionInfo_upvr (copied, readonly)
			[5]: lerp_upvr (copied, readonly)
			[6]: divideTransparency_upvr (copied, readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: Label_upvr (copied, readonly)
			[9]: tbl_upvr_2 (copied, readonly)
			[10]: GenericTextLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Font = arg1_2.Font
		local Theme_upvr = arg1_2.Theme
		local CaptionHeader = Font.CaptionHeader
		local CaptionBody = Font.CaptionBody
		local var30 = Font.BaseSize * Font.CaptionBody.RelativeSize
		local X = GetTextSize_upvr(arg1.props.bodyText, var30, CaptionBody.Font, Vector2.new()).X
		local var32
		if arg1.props.headerText then
			var32 = arg1.props
			var32 = Font.BaseSize * CaptionHeader.RelativeSize
			var32 = GetTextSize_upvr(var32.headerText, var32, CaptionHeader.Font, Vector2.new()).X
			X = math.max(X, var32)
		end
		local minimum = math.min(X, 216)
		local var34 = minimum + 24
		var32 = arg1.props.bodyText
		local var19_result1 = GetTextHeight_upvr(var32, CaptionBody.Font, var30, minimum)
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var32 = GetTextHeight_upvr(arg1.props.headerText, CaptionHeader.Font, var30, minimum)
			return var32
		end
		if not arg1.props.headerText or not INLINED() then
			var32 = 0
		end
		if not arg1.props.headerText or not (var32 + var19_result1 + 24 + 4) then
			local var36 = var19_result1 + 24
		end
		local var20_result1_upvr = getPositionInfo_upvr(var34, var36, arg1.props.orientation, arg1.props.triggerPosition, arg1.props.triggerSize, arg1.props.screenSize, arg1.props.position)
		local any_map_result1_2 = arg1.progress:map(function(arg1_4) -- Line 124
			--[[ Upvalues[3]:
				[1]: Theme_upvr (readonly)
				[2]: lerp_upvr (copied, readonly)
				[3]: divideTransparency_upvr (copied, readonly)
			]]
			return lerp_upvr(1, divideTransparency_upvr(Theme_upvr.BackgroundMuted.Transparency, 1), arg1_4)
		end)
		local any_map_result1 = arg1.progress:map(function(arg1_5) -- Line 130
			--[[ Upvalues[3]:
				[1]: Theme_upvr (readonly)
				[2]: lerp_upvr (copied, readonly)
				[3]: divideTransparency_upvr (copied, readonly)
			]]
			return lerp_upvr(1, divideTransparency_upvr(Theme_upvr.TextEmphasis.Transparency, 2), arg1_5)
		end)
		local module_2 = {
			Visible = arg1.visible;
			Position = arg1.progress:map(function(arg1_3) -- Line 113
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: var20_result1_upvr (readonly)
				]]
				local var39
				local var40
				if var40 then
					var40 = arg1.props
					var39 = var40.position
				else
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var40 = var20_result1_upvr.position
						return var40
					end
					if not arg1.props.isDirectChild or not INLINED_2() then
						var40 = var20_result1_upvr.absolutePosition
					end
					var39 = var40
				end
				return var39:lerp(var39 + var20_result1_upvr.animatedDistance, arg1_3)
			end);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}
		if var20_result1_upvr.fillDirection ~= Enum.FillDirection.Vertical or not UDim2.fromOffset(var34, var36 + 8) then
		end
		module_2.Size = UDim2.fromOffset(var34 + 8, var36)
		local module = {
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = var20_result1_upvr.fillDirection;
			});
			CaretFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = var20_result1_upvr.caretFrameSize;
				LayoutOrder = var20_result1_upvr.caretLayoutOrder;
			}, {
				Caret = Roact_upvr.createElement(Label_upvr, {
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Position = var20_result1_upvr.caretPosition;
					AnchorPoint = var20_result1_upvr.caretAnchorPoint;
					Size = var20_result1_upvr.caretImageSize;
					Image = tbl_upvr_2[var20_result1_upvr.updatedOrientation];
					ImageColor3 = Theme_upvr.BackgroundMuted.Color;
					ImageTransparency = any_map_result1_2;
					[Roact_upvr.Ref] = arg1.caretRef;
				});
			});
		}
		local tbl = {
			VerticalLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				Padding = UDim.new(0, 4);
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12);
				PaddingBottom = UDim.new(0, 12);
				PaddingLeft = UDim.new(0, 12);
				PaddingRight = UDim.new(0, 12);
			});
		}
		local headerText = arg1.props.headerText
		if headerText then
			headerText = Roact_upvr.createElement
			headerText = headerText(GenericTextLabel_upvr, {
				colorStyle = Theme_upvr.TextEmphasis;
				fontStyle = CaptionHeader;
				LayoutOrder = 1;
				Text = arg1.props.headerText;
				TextTransparency = any_map_result1;
				TextXAlignment = Enum.TextXAlignment.Left;
				Size = UDim2.new(1, 0, 0, var32);
			})
		end
		tbl.Header = headerText
		tbl.Body = Roact_upvr.createElement(GenericTextLabel_upvr, {
			colorStyle = Theme_upvr.TextDefault;
			fontStyle = CaptionBody;
			LayoutOrder = 2;
			Text = arg1.props.bodyText;
			TextTransparency = any_map_result1;
			TextXAlignment = Enum.TextXAlignment.Left;
			Size = UDim2.new(1, 0, 0, var19_result1);
		})
		module.Content = Roact_upvr.createElement("TextButton", {
			AutoButtonColor = false;
			Text = "";
			Selectable = false;
			Size = UDim2.fromOffset(var34, var36);
			BackgroundColor3 = Theme_upvr.BackgroundMuted.Color;
			BackgroundTransparency = any_map_result1_2;
			BorderSizePixel = 0;
			LayoutOrder = var20_result1_upvr.contentLayoutOrder;
		}, tbl)
		return Roact_upvr.createElement("Frame", module_2, module)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 212
	arg1.progressMotor:start()
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 216
	if arg2.triggerPosition ~= arg1.props.triggerPosition then
		if arg1.props.triggerPosition.Y < 0 or arg1.props.screenSize.Y < arg1.props.triggerPosition.Y + arg1.props.triggerSize.Y then
			arg1.visible = false
			return
		end
		arg1.visible = true
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 229
	arg1.progressMotor:destroy()
	arg1.progressMotor = nil
end
return any_extend_result1