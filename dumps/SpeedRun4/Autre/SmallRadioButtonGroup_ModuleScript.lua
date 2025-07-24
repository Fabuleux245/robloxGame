-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:05
-- Luau version 6, Types version 3
-- Time taken: 0.003645 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local RoactGamepad_upvr = require(Parent_2.RoactGamepad)
local t = require(Parent_2.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("SmallRadioButtonGroup")
any_extend_result1_upvr.validateProps = t.strictInterface({
	items = t.optional(t.array(t.tuple(t.strictInterface({
		text = t.string;
		id = t.string;
		isDisabled = t.optional(t.boolean);
	}))));
	selectedValue = t.optional(t.string);
	onActivated = t.callback;
	layoutOrder = t.optional(t.number);
	useDefaultControlState = t.optional(t.boolean);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	frameRef = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	selectedValue = nil;
}
function any_extend_result1_upvr.init(arg1) -- Line 58
	--[[ Upvalues[1]:
		[1]: RoactGamepad_upvr (readonly)
	]]
	arg1.gamepadRefs = RoactGamepad_upvr.createRefCache()
end
local withSelectionCursorProvider_upvr = require(Parent.App.SelectionImage.withSelectionCursorProvider)
local SmallRadioButtonCell_upvr = require(Parent.App.Cell.Small.SelectionGroup.SmallRadioButtonCell)
local CursorKind_upvr = require(Parent.App.SelectionImage.CursorKind)
function any_extend_result1_upvr.render(arg1) -- Line 62
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
		[3]: RoactGamepad_upvr (readonly)
		[4]: SmallRadioButtonCell_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	assert(arg1.validateProps(arg1.props))
	local module_2 = {
		layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 1);
		});
	}
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1.props.items)
	local var26
	for i_upvr, v_upvr in var26, ipairs_result2, ipairs_result3 do
		module_2["smallRadioButtonCell"..v_upvr.id] = withSelectionCursorProvider_upvr(function(arg1_2) -- Line 72
			--[[ Upvalues[7]:
				[1]: Roact_upvr (copied, readonly)
				[2]: RoactGamepad_upvr (copied, readonly)
				[3]: SmallRadioButtonCell_upvr (copied, readonly)
				[4]: v_upvr (readonly)
				[5]: arg1 (readonly)
				[6]: i_upvr (readonly)
				[7]: CursorKind_upvr (copied, readonly)
			]]
			local module_4 = {
				id = v_upvr.id;
				text = v_upvr.text;
			}
			local onActivated = arg1.props.onActivated
			module_4.onActivated = onActivated
			if arg1.props.selectedValue ~= v_upvr.id then
				onActivated = false
			else
				onActivated = true
			end
			module_4.isSelected = onActivated
			onActivated = v_upvr.isDisabled
			module_4.isDisabled = onActivated
			onActivated = i_upvr
			module_4.layoutOrder = onActivated
			onActivated = arg1.props.useDefaultControlState
			module_4.useDefaultControlState = onActivated
			onActivated = Roact_upvr.Ref
			module_4[onActivated] = arg1.gamepadRefs[i_upvr]
			local function INLINED() -- Internal function, doesn't exist in bytecode
				onActivated = arg1.gamepadRefs[i_upvr - 1]
				return onActivated
			end
			if 1 >= i_upvr or not INLINED() then
				onActivated = nil
			end
			module_4.NextSelectionUp = onActivated
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				onActivated = arg1.gamepadRefs[i_upvr + 1]
				return onActivated
			end
			if i_upvr >= #arg1.props.items or not INLINED_2() then
				onActivated = nil
			end
			module_4.NextSelectionDown = onActivated
			onActivated = arg1_2(CursorKind_upvr.SelectionCell)
			module_4.SelectionImageObject = onActivated
			return Roact_upvr.createElement(RoactGamepad_upvr.Focusable[SmallRadioButtonCell_upvr], module_4)
		end)
	end
	var26 = arg1.props.items
	if var26 then
		i_upvr = arg1.props
		if 0 >= #i_upvr.items then
			var26 = false
		else
			var26 = true
		end
	end
	if not var26 or not RoactGamepad_upvr.Focusable.Frame then
	end
	local module_3 = {}
	if not var26 or not arg1.gamepadRefs[1] then
	end
	module_3.defaultChild = nil
	module_3.Size = UDim2.new(1, 0, 1, 0)
	module_3.BackgroundTransparency = 1
	module_3.LayoutOrder = arg1.props.layoutOrder
	module_3.NextSelectionLeft = arg1.props.NextSelectionLeft
	module_3.NextSelectionRight = arg1.props.NextSelectionRight
	module_3.NextSelectionDown = arg1.props.NextSelectionDown
	module_3.NextSelectionUp = arg1.props.NextSelectionUp
	module_3[Roact_upvr.Ref] = arg1.props.frameRef
	return Roact_upvr.createElement("Frame", module_3, module_2)
end
local Cryo_upvr = require(Parent_2.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 106
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)