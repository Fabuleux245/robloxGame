-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:41
-- Luau version 6, Types version 3
-- Time taken: 0.014651 seconds

local Parent_5 = script.Parent
local Parent_4 = Parent_5.Parent
local Parent_2 = Parent_4.Parent
local Parent = Parent_2.Parent
local Parent_3 = Parent.Parent
local React_upvr = require(Parent_3.React)
local KeyLabel = Parent_2.Menu.KeyLabel
local Constants_upvr = require(Parent_5.Constants)
local TooltipOrientation_upvr = require(Parent_4.Tooltip.Enum.TooltipOrientation)
local function _(arg1, arg2) -- Line 32, Named "product"
	return Vector2.new(arg1.X * arg2.X, arg1.Y * arg2.Y)
end
function getOffsetPosition(arg1, arg2, arg3, arg4) -- Line 37
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var10 = Constants_upvr.ORIENTATION_VECTOR[arg3]
	local var11 = arg2 + Vector2.new(arg4, arg4)
	return arg1 + Vector2.new(var10.X * var11.X, var10.Y * var11.Y)
end
local function _(arg1) -- Line 44, Named "vectorToPosition"
	return UDim2.fromOffset(arg1.X, arg1.Y)
end
local function _(arg1) -- Line 50, Named "getContentAnchorPoint"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	return Vector2.new(0.5, 0.5) - 0.5 * Constants_upvr.ORIENTATION_VECTOR[arg1]
end
local function _(arg1, arg2) -- Line 55, Named "convertPadding"
	return UDim.new(0, arg1 or arg2)
end
local function _(arg1, arg2) -- Line 60, Named "addOffsets"
	--[[ Upvalues[1]:
		[1]: TooltipOrientation_upvr (readonly)
	]]
	return arg1 + Vector2.new(arg2[TooltipOrientation_upvr.Left] + arg2[TooltipOrientation_upvr.Right], arg2[TooltipOrientation_upvr.Top] + arg2[TooltipOrientation_upvr.Bottom])
end
local KeyLabel_2_upvr = require(KeyLabel.KeyLabel)
local getKeyLabelWidth_upvr = require(KeyLabel.Utilities).getKeyLabelWidth
local function getHotkeysAndWidth_upvr(arg1, arg2, arg3) -- Line 68, Named "getHotkeysAndWidth"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: KeyLabel_2_upvr (readonly)
		[3]: getKeyLabelWidth_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	if not arg1 or #arg1 == 0 then
		return nil, arg2
	end
	for i, v in ipairs(arg1) do
		({})[i] = React_upvr.createElement(KeyLabel_2_upvr, {
			keyCode = v;
			LayoutOrder = i;
		})
		local var23
	end
	local maximum_2 = math.max(0 + getKeyLabelWidth_upvr(v, arg3) + Constants_upvr.HOTKEY_PADDING * (#arg1 - 1), arg2)
	var23.Layout = React_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, Constants_upvr.HOTKEY_PADDING);
	})
	return React_upvr.createElement("Frame", {
		Name = "Hotkeys";
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromOffset(maximum_2, 0);
		LayoutOrder = 3;
	}, var23), maximum_2
end
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local GetTextSize_upvr = require(Parent.Core.Text.GetTextSize)
local UIBloxConfig_upvr = require(Parent.UIBloxConfig)
local LuauPolyfill_upvr = require(Parent_3.LuauPolyfill)
local ButtonType_upvr = require(Parent_2.Button.Enum.ButtonType)
local StandardButtonSize_upvr = require(Parent.Core.Button.Enum.StandardButtonSize)
local Button_upvr = require(Parent_2.Button.Button)
local Label_upvr = require(Parent.Core.ImageSet.ImageSetComponent).Label
local StyledTextLabel_upvr = require(Parent_2.Text.StyledTextLabel)
local IconButton_upvr = require(Parent.App.Button.IconButton)
local Images_upvr = require(Parent.App.ImageSet.Images)
local IconSize_upvr = require(Parent.App.ImageSet.Enum.IconSize)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 104, Named "TooltipWithRef"
	--[[ Upvalues[16]:
		[1]: React_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: GetTextSize_upvr (readonly)
		[5]: UIBloxConfig_upvr (readonly)
		[6]: getHotkeysAndWidth_upvr (readonly)
		[7]: LuauPolyfill_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
		[9]: StandardButtonSize_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: TooltipOrientation_upvr (readonly)
		[12]: Label_upvr (readonly)
		[13]: StyledTextLabel_upvr (readonly)
		[14]: IconButton_upvr (readonly)
		[15]: Images_upvr (readonly)
		[16]: IconSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local headerText_2 = arg1.headerText
	if not headerText_2 then
		headerText_2 = arg1.bodyText
	end
	assert(headerText_2, "Must supply either header or body")
	local renderCustomComponents = arg1.renderCustomComponents
	if renderCustomComponents then
		renderCustomComponents = arg1.buttonProps
	end
	assert(not renderCustomComponents, "renderCustomComponents and buttonProps are not compatible")
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.zero)
	local useStyle_upvr_result1 = useStyle_upvr()
	local textAlignment = arg1.textAlignment
	if not textAlignment then
		textAlignment = Enum.TextXAlignment.Left
	end
	local Theme = useStyle_upvr_result1.Theme
	local Font = useStyle_upvr_result1.Font
	local BaseSize = Font.BaseSize
	local CaptionHeader = Font.CaptionHeader
	local var49 = BaseSize * CaptionHeader.RelativeSize
	local PaddingLeft = arg1.PaddingLeft
	if not PaddingLeft then
		PaddingLeft = Constants_upvr.DEFAULT_PADDING
	end
	local PaddingRight = arg1.PaddingRight
	if not PaddingRight then
		PaddingRight = Constants_upvr.DEFAULT_PADDING
	end
	local var52 = Constants_upvr.MAX_WIDTH - PaddingLeft - PaddingRight
	if arg1.headerText then
		local vector2 = Vector2.new(var52, 2 * var49)
		local var54 = vector2
		if arg1.onClose then
			var54 -= Vector2.new(Constants_upvr.CLOSE_BUTTON_SIZE, 0)
		end
	end
	if UIBloxConfig_upvr.enableTooltipV2BodyFontFix then
		local _ = Font.BodySmall
	else
	end
	if arg1.bodyText then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	if arg1.minContentWidth then
	end
	local getHotkeysAndWidth_upvr_result1, getHotkeysAndWidth_upvr_result2 = getHotkeysAndWidth_upvr(arg1.hotkeyCodes, math.max(math.max(math.max(0, GetTextSize_upvr(arg1.headerText, var49, CaptionHeader.Font, var54):Min(vector2).X), GetTextSize_upvr(arg1.bodyText, BaseSize * Font.CaptionBody.RelativeSize, Font.CaptionBody.Font, Vector2.new(var52, math.huge)).X), arg1.minContentWidth), Font)
	local var58 = getHotkeysAndWidth_upvr_result1
	getHotkeysAndWidth_upvr_result1 = nil
	local var59 = getHotkeysAndWidth_upvr_result1
	if arg1.renderCustomComponents then
		local tbl = {
			Content = arg1.renderCustomComponents(getHotkeysAndWidth_upvr_result2);
		}
		local tbl_8 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_8.MaxSize = Vector2.new(var52, math.huge)
		tbl.SizeConstraint = React_upvr.createElement("UISizeConstraint", tbl_8)
		var59 = tbl
	elseif arg1.buttonProps then
		var59 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
			});
			SizeContraint = React_upvr.createElement("UISizeConstraint", {
				MinSize = Vector2.new(0, 28);
			});
			Button = React_upvr.createElement(Button_upvr, LuauPolyfill_upvr.Object.assign({}, arg1.buttonProps, {
				buttonType = ButtonType_upvr.PrimarySystem;
				standardSize = StandardButtonSize_upvr.XSmall;
				fontStyle = CaptionHeader;
			}));
		}
	end
	if var59 then
		local tbl_7 = {
			AutomaticSize = Enum.AutomaticSize.XY;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_7.Size = UDim2.new(0, getHotkeysAndWidth_upvr_result2, 0, 0)
		tbl_7.BackgroundTransparency = 1
		local var67 = 4
		tbl_7.LayoutOrder = var67
		if arg1.renderCustomComponents then
			var67 = "CustomComponents"
		else
			var67 = "ButtonFrame"
		end
		tbl_7.Name = var67
		local any_createElement_result1 = React_upvr.createElement("Frame", tbl_7, var59)
		local var69
	end
	if var58 and any_createElement_result1 then
		local tbl_4 = {
			AutomaticSize = Enum.AutomaticSize.XY;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4.Size = UDim2.new(0, getHotkeysAndWidth_upvr_result2, 0, 0)
		tbl_4.BackgroundTransparency = 1
		tbl_4.LayoutOrder = 3
		local tbl_9 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, arg1.listPadding or Constants_upvr.DEFAULT_LIST_PADDING);
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			Hotkeys = var58;
			CustomContent = any_createElement_result1;
		}
	else
	end
	if arg1.useLargeDropShadow then
		-- KONSTANTWARNING: GOTO [384] #270
	end
	local Small = Constants_upvr.DropShadow.Small
	local var74 = Constants_upvr.OPPOSITE_ORIENTATION[arg1.orientation]
	local OFFSET = Small.OFFSET
	local var76 = any_useState_result1 + Vector2.new(OFFSET[TooltipOrientation_upvr.Left] + OFFSET[TooltipOrientation_upvr.Right], OFFSET[TooltipOrientation_upvr.Top] + OFFSET[TooltipOrientation_upvr.Bottom])
	local clone = table.clone(Small.OFFSET)
	local var78 = Constants_upvr.CONTENT_TO_CARET_TIP - clone[var74]
	local maximum = math.max(0, var78)
	clone[var74] += maximum
	local vector2_2 = Vector2.new(clone[TooltipOrientation_upvr.Left], clone[TooltipOrientation_upvr.Top])
	local Vector2_zero_Max_result1 = Vector2.zero:Max(Constants_upvr.ORIENTATION_VECTOR[arg1.orientation] * maximum)
	var69 = Constants_upvr.ORIENTATION_VECTOR
	local var82 = Vector2.new(0.5, 0.5) - 0.5 * var69[arg1.orientation]
	local var83 = vector2_2 + Vector2.new(any_useState_result1.X * var82.X, any_useState_result1.Y * var82.Y) - arg1.contentOffsetVector + Constants_upvr.ORIENTATION_VECTOR[var74] * Constants_upvr.CONTENT_TO_CARET_CENTER
	local var84 = any_useState_result1 + Vector2.new(clone[TooltipOrientation_upvr.Left] + clone[TooltipOrientation_upvr.Right], clone[TooltipOrientation_upvr.Top] + clone[TooltipOrientation_upvr.Bottom])
	var69 = Constants_upvr.CARET_DISTANCE
	local var85 = getOffsetPosition(arg1.triggerPointCenter, arg1.triggerPointRadius, arg1.orientation, var69 + math.min(0, var78) + math.floor(arg1.distanceOffset + 0.5)) + arg1.contentOffsetVector
	local BackgroundUIDefault = Theme.BackgroundUIDefault
	local backgroundColor = arg1.backgroundColor
	if not backgroundColor then
		backgroundColor = BackgroundUIDefault.Color
	end
	local backgroundTransparency = arg1.backgroundTransparency
	if not backgroundTransparency then
		backgroundTransparency = BackgroundUIDefault.Transparency
	end
	local var89 = backgroundTransparency * useStyle_upvr_result1.Settings.PreferredTransparency
	local module = {}
	var69 = arg1.transparency
	module.GroupTransparency = var69
	var69 = UDim2.fromOffset(var85.X, var85.Y)
	module.Position = var69
	var69 = UDim2.fromOffset(var84.X, var84.Y)
	module.Size = var69
	var69 = Vector2.new(0.5, 0.5) - 0.5 * Constants_upvr.ORIENTATION_VECTOR[arg1.orientation]
	module.AnchorPoint = var69
	if arg1.canvasBackground then
		var69 = arg1.canvasBackground.Transparency
	else
		var69 = 1
	end
	module.BackgroundTransparency = var69
	if arg1.canvasBackground then
	else
	end
	module.BackgroundColor3 = nil
	module.BorderSizePixel = 0
	;({}).Caret = React_upvr.createElement(Label_upvr, {
		Image = Constants_upvr.CARET_IMAGE;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromOffset(var83.X, var83.Y);
		BackgroundTransparency = 1;
		Size = Constants_upvr.CARET_SIZE;
		Rotation = Constants_upvr.CARET_ROTATION[arg1.orientation];
		ImageColor3 = backgroundColor;
		ImageTransparency = var89;
		ZIndex = 2;
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).DropShadow = React_upvr.createElement(Label_upvr, {
		Image = Small.IMAGE;
		ImageColor3 = Theme.DropShadow.Color;
		ImageTransparency = Theme.DropShadow.Transparency;
		BackgroundTransparency = 1;
		Position = UDim2.fromOffset(Vector2_zero_Max_result1.X, Vector2_zero_Max_result1.Y);
		Size = UDim2.fromOffset(var76.X, var76.Y);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Small.SLICE_CENTER;
		ZIndex = 1;
	})
	local tbl_5 = {
		AutomaticSize = Enum.AutomaticSize.XY;
		Position = UDim2.fromOffset(vector2_2.X, vector2_2.Y);
		BackgroundColor3 = backgroundColor;
		BackgroundTransparency = var89;
		[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 293
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			any_useState_result2_upvr(arg1_2.AbsoluteSize)
			if arg1.onContentSizeChanged then
				arg1.onContentSizeChanged(arg1_2.AbsoluteSize)
			end
		end;
	}
	tbl_5.ref = arg2
	tbl_5.ZIndex = 2
	local tbl_6 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment[textAlignment.Name];
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, arg1.listPadding or Constants_upvr.DEFAULT_LIST_PADDING);
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, arg1.PaddingTop or Constants_upvr.DEFAULT_PADDING);
			PaddingBottom = UDim.new(0, arg1.PaddingBottom or Constants_upvr.DEFAULT_PADDING);
			PaddingLeft = UDim.new(0, arg1.PaddingLeft or Constants_upvr.DEFAULT_PADDING);
			PaddingRight = UDim.new(0, arg1.PaddingRight or Constants_upvr.DEFAULT_PADDING);
		});
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = Constants_upvr.CORNER_RADIUS;
		});
	}
	local headerText = arg1.headerText
	if headerText then
		headerText = React_upvr.createElement
		local tbl_2 = {
			text = arg1.headerText;
			fontStyle = CaptionHeader;
			colorStyle = Theme.TextEmphasis;
			textYAlignment = Enum.TextYAlignment.Center;
			textXAlignment = textAlignment;
			textTruncate = Enum.TextTruncate.AtEnd;
			layoutOrder = 1;
		}
		local any_Min_result1 = GetTextSize_upvr(arg1.headerText, var49, CaptionHeader.Font, var54):Min(vector2)
		tbl_2.size = UDim2.fromOffset(any_Min_result1.X, any_Min_result1.Y)
		tbl_2.fluidSizing = false
		tbl_2.richText = false
		tbl_2.lineHeight = 1
		headerText = headerText(StyledTextLabel_upvr, tbl_2)
	end
	tbl_6.Header = headerText
	headerText = arg1.bodyText
	local var102 = headerText
	if var102 then
		var102 = React_upvr.createElement
		local tbl_3 = {
			text = arg1.bodyText;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.fontStyle = Font.CaptionBody
		tbl_3.colorStyle = Theme.TextEmphasis
		tbl_3.textYAlignment = Enum.TextYAlignment.Center
		tbl_3.textXAlignment = textAlignment
		tbl_3.textTruncate = Enum.TextTruncate.None
		tbl_3.layoutOrder = 2
		local GetTextSize_upvr_result1 = GetTextSize_upvr(arg1.bodyText, BaseSize * Font.CaptionBody.RelativeSize, Font.CaptionBody.Font, Vector2.new(var52, math.huge))
		tbl_3.size = UDim2.fromOffset(GetTextSize_upvr_result1.X, GetTextSize_upvr_result1.Y)
		tbl_3.fluidSizing = false
		tbl_3.richText = false
		tbl_3.lineHeight = 1
		var102 = var102(StyledTextLabel_upvr, tbl_3)
	end
	tbl_6.Body = var102
	tbl_6.Additional = var58 or any_createElement_result1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Box = React_upvr.createElement("Frame", tbl_5, tbl_6)
	local var105 = false
	if arg1.onClose ~= nil then
		var105 = React_upvr.createElement
		var105 = var105("Frame", {
			BackgroundTransparency = 1;
			ZIndex = 3;
			Size = UDim2.fromOffset(Constants_upvr.CLOSE_BUTTON_SIZE, Constants_upvr.CLOSE_BUTTON_SIZE);
			Position = UDim2.new(1, -(Constants_upvr.CLOSE_BUTTON_SIZE + Constants_upvr.CLOSE_BUTTON_PADDING * 2), 0, Constants_upvr.CLOSE_BUTTON_SIZE / 2);
		}, {
			Button = React_upvr.createElement(IconButton_upvr, {
				backgroundTransparency = 1;
				icon = Images_upvr["icons/navigation/close"];
				iconSize = IconSize_upvr.Small;
				size = UDim2.new(1, 0, 1, 0);
				onActivated = arg1.onClose;
			});
		})
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).CloseButton = var105
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return React_upvr.createElement("CanvasGroup", module, {})
end)