-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:35
-- Luau version 6, Types version 3
-- Time taken: 0.006038 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent_4 = Parent_2.Parent
local Cryo_upvr = require(Parent_4.Cryo)
local Roact_upvr = require(Parent_4.Roact)
local t = require(Parent_4.t)
local ToastIcon_upvr = require(Parent.ToastIcon)
local ToastText_upvr = require(Parent.ToastText)
local ButtonType_upvr = require(Parent_3.Button.Enum.ButtonType)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ToastFrame")
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	buttonProps = t.optional(t.strictInterface({
		buttonDimensions = t.Vector2;
		buttonText = t.string;
		onActivated = t.callback;
	}));
	iconProps = t.optional(ToastIcon_upvr.validateProps);
	iconChildren = t.optional(t.table);
	isCompact = t.optional(t.boolean);
	layoutOrder = t.optional(t.integer);
	padding = t.numberMin(0);
	position = t.optional(t.UDim2);
	size = t.UDim2;
	subtitleTextProps = t.optional(ToastText_upvr.validateProps);
	textFrameSize = t.UDim2;
	titleTextProps = ToastText_upvr.validateProps;
	buttonType = t.optional(ButtonType_upvr.isEnumValue);
})
any_extend_result1.defaultProps = {
	padding = 0;
	size = UDim2.new(1, 0, 1, 0);
	textFrameSize = UDim2.new(1, 0, 1, 0);
}
local function renderToastIcon_upvr(arg1, arg2) -- Line 47, Named "renderToastIcon"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ToastIcon_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	if arg1 then
		if type(arg1.Image) == "function" then
			return arg1.Image(arg1)
		end
		return Roact_upvr.createElement(ToastIcon_upvr, Cryo_upvr.Dictionary.join(arg1, {
			LayoutOrder = 1;
		}), arg2)
	end
	return nil
end
local Button_upvr = require(Parent_3.Button.Button)
local StandardButtonSize_upvr = require(Parent_2.Core.Button.Enum.StandardButtonSize)
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[7]:
		[1]: ButtonType_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: renderToastIcon_upvr (readonly)
		[4]: ToastText_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: Button_upvr (readonly)
		[7]: StandardButtonSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local buttonProps = arg1.props.buttonProps
	local var19
	if buttonProps then
	end
	if buttonProps then
	end
	if buttonProps then
	end
	if buttonProps then
		local buttonType = buttonProps.buttonType
		if not buttonType then
			buttonType = ButtonType_upvr.PrimarySystem
		end
	end
	local isCompact = arg1.props.isCompact
	if buttonProps then
	end
	local padding = arg1.props.padding
	local subtitleTextProps = arg1.props.subtitleTextProps
	if not subtitleTextProps then
		-- KONSTANTWARNING: GOTO [60] #40
	end
	if isCompact then
	else
	end
	local module = {}
	local tbl_2 = {}
	if isCompact then
		var19 = Enum.FillDirection.Vertical
		-- KONSTANTWARNING: GOTO [110] #71
	end
	var19 = Enum.FillDirection.Horizontal
	tbl_2.FillDirection = var19
	var19 = UDim.new(0, padding)
	tbl_2.Padding = var19
	var19 = Enum.SortOrder.LayoutOrder
	tbl_2.SortOrder = var19
	if isCompact then
		var19 = Enum.HorizontalAlignment.Center
	else
		var19 = Enum.HorizontalAlignment.Left
	end
	tbl_2.HorizontalAlignment = var19
	var19 = Enum.VerticalAlignment.Center
	tbl_2.VerticalAlignment = var19
	module.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_2)
	if 0 < padding then
		local tbl_4 = {}
		var19 = UDim.new(0, padding)
		tbl_4.PaddingBottom = var19
		var19 = UDim.new(0, padding)
		tbl_4.PaddingLeft = var19
		var19 = UDim.new(0, padding)
		tbl_4.PaddingRight = var19
		var19 = UDim.new(0, padding)
		tbl_4.PaddingTop = var19
	end
	module.UIPadding = Roact_upvr.createElement("UIPadding", tbl_4)
	local tbl_6 = {}
	var19 = arg1.props.anchorPoint
	tbl_6.AnchorPoint = var19
	var19 = 1
	tbl_6.BackgroundTransparency = var19
	var19 = 0
	tbl_6.BorderSizePixel = var19
	var19 = false
	tbl_6.ClipsDescendants = var19
	var19 = 1
	tbl_6.LayoutOrder = var19
	var19 = arg1.props.position
	tbl_6.Position = var19
	if not buttonProps then
		var19 = arg1.props.size
	elseif isCompact then
		var19 = UDim2.new(1, 0, 1, -buttonProps.buttonDimensions.Y)
	else
		var19 = UDim2.new(1, -buttonProps.buttonDimensions.X, 1, 0)
	end
	tbl_6.Size = var19
	local tbl = {
		FillDirection = Enum.FillDirection.Horizontal;
		Padding = UDim.new(0, padding);
		SortOrder = Enum.SortOrder.LayoutOrder;
	}
	if not Enum.VerticalAlignment.Center then
		if isCompact then
		else
		end
	end
	tbl.VerticalAlignment = Enum.VerticalAlignment.Center
	;({}).UIListLayout = Roact_upvr.createElement("UIListLayout", tbl)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).ToastIcon = renderToastIcon_upvr(arg1.props.iconProps, arg1.props.iconChildren)
	local tbl_5 = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		ToastTitle = Roact_upvr.createElement(ToastText_upvr, Cryo_upvr.Dictionary.join(arg1.props.titleTextProps, {
			LayoutOrder = 1;
		}));
	}
	if subtitleTextProps then
	end
	tbl_5.ToastSubtitle = Roact_upvr.createElement(ToastText_upvr, Cryo_upvr.Dictionary.join(subtitleTextProps, {
		LayoutOrder = 2;
	}))
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).ToastTextFrame = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		Size = arg1.props.textFrameSize;
	}, tbl_5)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.ToastMessageFrame = Roact_upvr.createElement("Frame", tbl_6, {})
	if buttonProps then
		local tbl_3 = {
			buttonType = buttonType;
			fitContent = not isCompact;
			layoutOrder = 2;
		}
		if not isCompact then
		else
		end
		tbl_3.maxWidth = nil
		tbl_3.onActivated = buttonProps.onActivated
		tbl_3.standardSize = StandardButtonSize_upvr.Small
		tbl_3.text = buttonProps.buttonText
	end
	module.ToastButton = Roact_upvr.createElement(Button_upvr, tbl_3)
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg1.props.anchorPoint;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ClipsDescendants = true;
		LayoutOrder = arg1.props.layoutOrder;
		Position = arg1.props.position;
		Size = arg1.props.size;
	}, module)
end
return any_extend_result1