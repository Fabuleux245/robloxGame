-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:58
-- Luau version 6, Types version 3
-- Time taken: 0.004221 seconds

local Parent = script.Parent.Parent.Parent.Parent
local UIBlox = Parent.UIBlox
local Roact_upvr = require(Parent.Roact)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local t = require(Parent.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("RadioButtonList")
any_extend_result1_upvr.validateProps = t.strictInterface({
	radioButtons = t.array(t.union(t.string, t.strictInterface({
		label = t.string;
		isDisabled = t.optional(t.boolean);
	})));
	onActivated = t.callback;
	elementSize = t.UDim2;
	initialValue = t.optional(t.number);
	currentValue = t.optional(t.number);
	layoutOrder = t.optional(t.number);
	padding = t.optional(t.UDim);
	automaticSize = t.optional(t.boolean);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	forwardRef = t.optional(t.table);
})
function any_extend_result1_upvr.init(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: RoactGamepad_upvr (readonly)
	]]
	arg1.state = {
		currentValue = arg1.props.initialValue or 0;
	}
	local tbl_2 = {}
	for i, v in ipairs(arg1.props.radioButtons) do
		local var18
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var18 = v.isDisabled
			return var18
		end
		if type(v) ~= "table" or not INLINED() then
			var18 = false
		end
		tbl_2[i] = var18
	end
	arg1.state.disabledIndices = tbl_2
	function arg1.doLogic(arg1_2) -- Line 58
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.disabledIndices[arg1_2] then
		else
			local tbl_3 = {}
			tbl_3.currentValue = arg1_2
			arg1:setState(tbl_3)
			arg1.props.onActivated(arg1_2)
		end
	end
	arg1.gamepadRefs = RoactGamepad_upvr.createRefCache()
end
local RadioButton_upvr = require(script.Parent.RadioButton)
local CursorKind_upvr = require(UIBlox.App.SelectionImage.CursorKind)
function any_extend_result1_upvr.renderWithProviders(arg1, arg2, arg3) -- Line 71
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: RadioButton_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
	]]
	local module = {
		layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = arg1.props.padding;
		});
	}
	local _
	for i_2_upvr, v_2 in ipairs(arg1.props.radioButtons) do
		local tbl = {}
		local var34
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var34 = v_2.label
			return var34
		end
		if type(v_2) ~= "table" or not INLINED_2() then
			var34 = v_2
		end
		tbl.text = var34
		if arg1.props.currentValue ~= nil then
			if i_2_upvr ~= arg1.props.currentValue then
				var34 = false
			else
				var34 = true
			end
		elseif i_2_upvr ~= arg1.state.currentValue then
			var34 = false
		else
			var34 = true
		end
		tbl.isSelected = var34
		var34 = arg1.state.disabledIndices[i_2_upvr]
		tbl.isDisabled = var34
		var34 = arg1.doLogic
		tbl.onActivated = var34
		var34 = arg1.props.elementSize
		tbl.size = var34
		tbl.layoutOrder = i_2_upvr
		tbl.id = i_2_upvr
		var34 = Roact_upvr.Ref
		tbl[var34] = arg1.gamepadRefs[i_2_upvr]
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var34 = arg1.gamepadRefs[i_2_upvr - 1]
			return var34
		end
		if 1 >= i_2_upvr or not INLINED_3() then
			var34 = nil
		end
		tbl.NextSelectionUp = var34
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var34 = arg1.gamepadRefs[i_2_upvr + 1]
			return var34
		end
		if i_2_upvr >= #arg1.props.radioButtons or not INLINED_4() then
			var34 = nil
		end
		tbl.NextSelectionDown = var34
		var34 = arg2(CursorKind_upvr.RoundedRect)
		tbl.SelectionImageObject = var34
		var34 = {}
		var34.OnActivatedButton = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, function() -- Line 94
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: i_2_upvr (readonly)
			]]
			arg1.doLogic(i_2_upvr)
		end)
		tbl.inputBindings = var34
		module["RadioButton"..i_2_upvr] = Roact_upvr.createElement(RoactGamepad_upvr.Focusable[RadioButton_upvr], tbl)
	end
	i_2_upvr = RoactGamepad_upvr
	local module_3 = {}
	if arg1.props.automaticSize then
	else
	end
	module_3.Size = UDim2.fromScale(1, 1)
	if arg1.props.automaticSize then
	else
	end
	module_3.AutomaticSize = nil
	module_3.BackgroundTransparency = 1
	module_3.LayoutOrder = arg1.props.layoutOrder
	module_3.NextSelectionLeft = arg1.props.NextSelectionLeft
	module_3.NextSelectionRight = arg1.props.NextSelectionRight
	module_3.NextSelectionDown = arg1.props.NextSelectionDown
	module_3.NextSelectionUp = arg1.props.NextSelectionUp
	module_3[Roact_upvr.Ref] = arg1.props.forwardRef
	return Roact_upvr.createElement(i_2_upvr.Focusable.Frame, module_3, module)
end
local withSelectionCursorProvider_upvr = require(UIBlox.App.SelectionImage.withSelectionCursorProvider)
function any_extend_result1_upvr.render(arg1) -- Line 114
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 115
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithProviders(arg1_3)
	end)
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 120
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)