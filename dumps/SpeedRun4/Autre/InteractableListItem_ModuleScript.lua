-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:58
-- Luau version 6, Types version 3
-- Time taken: 0.002666 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local Cryo_upvr = require(Parent.Cryo)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InteractableListItem")
local SelectionMode_upvr = require(script.Parent.Enum.SelectionMode)
function any_extend_result1.init(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: SelectionMode_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	function arg1.onStateChanged(arg1_2, arg2) -- Line 21
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setInteractableState(arg1.props.id, arg2)
	end
	function arg1.onActivated() -- Line 24
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: SelectionMode_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		local selection = arg1.props.selection
		({})[1] = arg1.props.id
		local var14
		if arg1.props.selectionMode == SelectionMode_upvr.Multiple then
			var14 = Cryo_upvr.List.filter(selection, function(arg1_4) -- Line 28
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				local var16
				if arg1_4 == arg1.props.id then
					var16 = false
				else
					var16 = true
				end
				return var16
			end)
			if #var14 == #selection then
				table.insert(var14, arg1.props.id)
			end
		end
		if arg1.props.onSelectionChanged then
			arg1.props.onSelectionChanged(var14, selection)
		end
		if arg1.props.selectionMode ~= SelectionMode_upvr.None then
			arg1.props.setSelection(var14)
		end
	end
end
local Interactable_upvr = require(Parent_2.Core.Control.Interactable)
function any_extend_result1.render(arg1) -- Line 44
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Interactable_upvr (readonly)
	]]
	local var18
	if Cryo_upvr.List.find(arg1.props.selection, arg1.props.id) == nil then
		var18 = false
	else
		var18 = true
	end
	local any_renderItem_result1, any_renderItem_result2 = arg1.props.renderItem(arg1.props.item, arg1.props.interactableState, var18, arg1.props.id)
	local var22 = any_renderItem_result2
	if not var22 then
		var22 = {}
	end
	return Roact_upvr.createElement(Interactable_upvr, Cryo_upvr.Dictionary.join({
		Size = arg1.props.itemSize;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, var22, {
		onStateChanged = arg1.onStateChanged;
		[Roact_upvr.Event.Activated] = arg1.onActivated;
	}), any_renderItem_result1)
end
return any_extend_result1