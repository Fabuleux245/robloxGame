-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:01
-- Luau version 6, Types version 3
-- Time taken: 0.004435 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Components = script.Parent.Parent.Components
local Constants_upvr = require(script.Parent.Parent.Constants)
local CheckBoxHeight_upvr = Constants_upvr.UtilityBarFormatting.CheckBoxHeight
local any_extend_result1 = Roact_upvr.PureComponent:extend("CheckBoxContainer")
local TextService_upvr = game:GetService("TextService")
local var7_upvr = Constants_upvr.UtilityBarFormatting.CheckBoxInnerPadding * 2
function any_extend_result1.init(arg1) -- Line 20
	--[[ Upvalues[5]:
		[1]: TextService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: CheckBoxHeight_upvr (readonly)
		[4]: var7_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	function arg1.onCheckBoxClicked(arg1_2, arg2) -- Line 21
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onCheckBoxChanged(arg1_2, arg2)
	end
	function arg1.onCheckBoxExpanded(arg1_3, arg2) -- Line 27
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch and arg2.UserInputState == Enum.UserInputState.End then
			arg1:setState({
				expanded = true;
			})
		end
	end
	function arg1.onCloseCheckBox(arg1_4, arg2) -- Line 39
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch and arg2.UserInputState == Enum.UserInputState.End then
			arg1:setState({
				expanded = false;
			})
		end
	end
	local var21
	if not arg1.props.orderedCheckBoxState then
		warn("CheckBoxContainer must be passed a list of Box Names or else it only creates an empty frame")
	end
	var21 = 0
	for i, v in ipairs(arg1.props.orderedCheckBoxState) do
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(v.name, Constants_upvr.DefaultFontSize.UtilBar, Constants_upvr.Font.UtilBar, Vector2.new(0, 0))
		;({})[i] = any_GetTextSize_result1.X
		var21 += 1
		local var27
	end
	arg1.ref = Roact_upvr.createRef()
	arg1.state = {
		expanded = false;
		textWidths = var27;
		numCheckBoxes = var21;
		minFullLength = 0 + any_GetTextSize_result1.X + CheckBoxHeight_upvr + var7_upvr;
	}
end
local CheckBox_upvr = require(Components.CheckBox)
local FilterFilled_upvr = Constants_upvr.Image.FilterFilled
local FilterUnfilled_upvr = Constants_upvr.Image.FilterUnfilled
local CheckBoxDropDown_upvr = require(Components.CheckBoxDropDown)
function any_extend_result1.render(arg1) -- Line 79
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: CheckBox_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: CheckBoxHeight_upvr (readonly)
		[5]: FilterFilled_upvr (readonly)
		[6]: FilterUnfilled_upvr (readonly)
		[7]: CheckBoxDropDown_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local frameWidth = arg1.props.frameWidth
	local frameHeight = arg1.props.frameHeight
	local layoutOrder = arg1.props.layoutOrder
	for i_2, v_2 in ipairs(arg1.props.orderedCheckBoxState) do
		module[v_2.name] = Roact_upvr.createElement(CheckBox_upvr, {
			name = v_2.name;
			font = Constants_upvr.Font.UtilBar;
			fontSize = Constants_upvr.DefaultFontSize.UtilBar;
			checkBoxHeight = CheckBoxHeight_upvr;
			frameHeight = frameHeight;
			layoutOrder = i_2;
			isSelected = v_2.state;
			selectedColor = Constants_upvr.Color.SelectedBlue;
			unselectedColor = Constants_upvr.Color.UnselectedGray;
			onCheckBoxClicked = arg1.onCheckBoxClicked;
		})
		local var49 = false
		if not var49 then
			var49 = v_2.state
		end
		local var50
	end
	if frameWidth < arg1.state.minFullLength then
		local tbl = {}
		i_2 = Enum.HorizontalAlignment.Left
		tbl.HorizontalAlignment = i_2
		i_2 = Enum.SortOrder.LayoutOrder
		tbl.SortOrder = i_2
		i_2 = Enum.VerticalAlignment.Top
		tbl.VerticalAlignment = i_2
		i_2 = Enum.FillDirection.Vertical
		tbl.FillDirection = i_2
		module.CheckBoxLayout = Roact_upvr.createElement("UIListLayout", tbl)
		local var52 = arg1.ref.current and arg1.state.expanded
		if var52 then
			v_2 = arg1.ref
			i_2 = v_2.current
			local AbsolutePosition = i_2.AbsolutePosition
			i_2 = UDim2.new
			v_2 = 0
			var50 = AbsolutePosition.X
			i_2 = i_2(v_2, var50, 0, AbsolutePosition.Y + frameHeight + 3)
		end
		i_2 = Roact_upvr
		i_2 = "ImageButton"
		v_2 = {}
		var50 = UDim2.new(0, frameHeight, 0, frameHeight)
		v_2.Size = var50
		v_2.LayoutOrder = layoutOrder
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var50 = FilterFilled_upvr
			return var50
		end
		if not var52 or not INLINED() then
			var50 = FilterUnfilled_upvr
		end
		v_2.Image = var50
		var50 = 1
		v_2.BackgroundTransparency = var50
		var50 = Constants_upvr.Color.Text
		v_2.BorderColor3 = var50
		var50 = Roact_upvr.Event.InputEnded
		v_2[var50] = arg1.onCheckBoxExpanded
		var50 = Roact_upvr.Ref
		v_2[var50] = arg1.ref
		var50 = {}
		local var54 = var52
		if var54 then
			var54 = Roact_upvr.createElement
			var54 = var54(CheckBoxDropDown_upvr, {
				absolutePosition = i_2;
				frameWidth = frameWidth;
				elementHeight = frameHeight;
				numElements = arg1.state.numCheckBoxes;
				onCloseCheckBox = arg1.onCloseCheckBox;
			}, module)
		end
		var50.DropDown = var54
		return i_2.createElement(i_2, v_2, var50)
	end
	module.CheckBoxLayout = Roact_upvr.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		FillDirection = Enum.FillDirection.Horizontal;
	})
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, frameWidth, 0, frameHeight);
		Position = arg1.props.pos;
		BackgroundTransparency = 1;
		LayoutOrder = layoutOrder;
	}, module)
end
return any_extend_result1