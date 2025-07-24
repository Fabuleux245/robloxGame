-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:58
-- Luau version 6, Types version 3
-- Time taken: 0.004688 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local Cryo_upvr = require(Parent_2.Cryo)
local SelectionMode_upvr = require(script.Parent.Enum.SelectionMode)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InteractableList")
any_extend_result1.validateProps = t.strictInterface({
	itemList = t.table;
	renderItem = t.callback;
	renderList = t.optional(t.callback);
	selection = t.optional(t.table);
	selectionMode = t.optional(SelectionMode_upvr.isEnumValue);
	onSelectionChanged = t.optional(t.callback);
	size = t.optional(t.UDim2);
	position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.integer);
	padding = t.optional(t.UDim);
	fillDirection = t.optional(t.enum(Enum.FillDirection));
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment));
	verticalAlignment = t.optional(t.enum(Enum.VerticalAlignment));
	sortOrder = t.optional(t.enum(Enum.SortOrder));
	automaticSize = t.optional(t.enum(Enum.AutomaticSize));
	itemSize = t.optional(t.union(t.UDim2, require(Parent.Core.Utility.bindingValidator)(t.UDim2)));
})
any_extend_result1.defaultProps = {
	renderList = function(arg1, arg2, arg3) -- Line 60, Named "renderList"
		--[[ Upvalues[1]:
			[1]: Roact_upvr (readonly)
		]]
		local module_2 = {Roact_upvr.createElement("UIListLayout", {
			Padding = arg3.padding;
			FillDirection = arg3.fillDirection;
			HorizontalAlignment = arg3.horizontalAlignment;
			VerticalAlignment = arg3.verticalAlignment;
			SortOrder = arg3.sortOrder;
			key = "$layout";
		})}
		for i in pairs(arg1) do
			table.insert(module_2, arg2(i))
		end
		return Roact_upvr.createElement("Frame", {
			Size = arg3.size;
			Position = arg3.position;
			BackgroundTransparency = 1;
			AutomaticSize = arg3.automaticSize;
			BorderSizePixel = 0;
		}, module_2)
	end;
	size = UDim2.fromScale(1, 1);
	itemSize = UDim2.fromScale(1, 1);
	selectionMode = SelectionMode_upvr.Single;
}
function any_extend_result1.init(arg1) -- Line 88
	--[[ Upvalues[2]:
		[1]: SelectionMode_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local tbl_3 = {
		interactable = {};
		selection = {};
	}
	if arg1.props.selectionMode == SelectionMode_upvr.Single then
		local next_result1_2 = next(arg1.props.itemList)
		if next_result1_2 ~= nil then
			tbl_3.selection = {next_result1_2}
		end
	end
	arg1:setState(tbl_3)
	function arg1.setInteractableState(arg1_5, arg2) -- Line 101
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
		]]
		arg1:setState(function(arg1_6) -- Line 102
			--[[ Upvalues[3]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1_5 (readonly)
				[3]: arg2 (readonly)
			]]
			local module_4 = {}
			local tbl = {}
			tbl[arg1_5] = arg2
			module_4.interactable = Cryo_upvr.Dictionary.join(arg1_6.interactable, tbl)
			return module_4
		end)
	end
	function arg1.setSelection(arg1_7) -- Line 110
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.selection = arg1_7
		arg1:setState(tbl_2)
	end
end
function any_extend_result1.getSelection(arg1) -- Line 117
	--[[ Upvalues[2]:
		[1]: SelectionMode_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	if arg1.props.selection then
		return arg1.props.selection
	end
	if arg1.props.selectionMode == SelectionMode_upvr.None then
		return {}
	end
	local any_filter_result1 = Cryo_upvr.List.filter(arg1.state.selection, function(arg1_8) -- Line 124
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var37
		if arg1.props.itemList[arg1_8] == nil then
			var37 = false
		else
			var37 = true
		end
		return var37
	end)
	local var39
	if var39 == SelectionMode_upvr.Single then
		var39 = any_filter_result1[#any_filter_result1]
		if var39 == nil then
			var39 = next(arg1.props.itemList)
		end
		if var39 ~= nil then
			return {var39}
		end
		return {}
	end
	return any_filter_result1
end
function any_extend_result1.didMount(arg1) -- Line 142
	if arg1.props.selection == nil and arg1.props.onSelectionChanged then
		arg1.props.onSelectionChanged(arg1:getSelection())
	end
end
local ControlState_upvr = require(Parent.Core.Control.Enum.ControlState)
local InteractableListItem_upvr = require(script.Parent.InteractableListItem)
function any_extend_result1.render(arg1) -- Line 148
	--[[ Upvalues[3]:
		[1]: ControlState_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InteractableListItem_upvr (readonly)
	]]
	return arg1.props.renderList(arg1.props.itemList, function(arg1_9) -- Line 149
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: InteractableListItem_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var44 = arg1.state.interactable[arg1_9]
		if not var44 then
			var44 = ControlState_upvr.Default
		end
		local module = {}
		module.id = arg1_9
		module.item = arg1.props.itemList[arg1_9]
		module.interactableState = var44
		module.selection = arg1:getSelection()
		module.renderItem = arg1.props.renderItem
		if not arg1.props.itemList[arg1_9] or not arg1.props.itemList[arg1_9].itemSize then
		end
		module.itemSize = arg1.props.itemSize
		module.selectionMode = arg1.props.selectionMode
		module.onSelectionChanged = arg1.props.onSelectionChanged
		module.setInteractableState = arg1.setInteractableState
		module.setSelection = arg1.setSelection
		module.key = tostring(arg1_9)
		return Roact_upvr.createElement(InteractableListItem_upvr, module)
	end, arg1.props)
end
return any_extend_result1