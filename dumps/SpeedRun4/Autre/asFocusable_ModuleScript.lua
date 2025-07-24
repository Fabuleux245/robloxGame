-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:33
-- Luau version 6, Types version 3
-- Time taken: 0.008770 seconds

local Parent = script.Parent.Parent
local Cryo_upvr = require(Parent.Cryo)
local t = require(Parent.t)
local module_upvr = {
	parentFocusNode = Cryo_upvr.None;
	parentNeighbors = Cryo_upvr.None;
	focusController = Cryo_upvr.None;
	onFocusGained = Cryo_upvr.None;
	onFocusLost = Cryo_upvr.None;
	onFocusChanged = Cryo_upvr.None;
	inputBindings = Cryo_upvr.None;
	innerRef = Cryo_upvr.None;
	restorePreviousChildFocus = Cryo_upvr.None;
	defaultChild = Cryo_upvr.None;
}
local tbl_3_upvr = {
	restorePreviousChildFocus = false;
	inputBindings = {};
}
local Roact_upvr = require(Parent.Roact)
local any_intersection_result1_upvr = t.intersection(t.interface({
	parentFocusNode = t.optional(t.table);
	focusController = t.optional(t.table);
	innerRef = t.optional(t.table);
	restorePreviousChildFocus = t.boolean;
	inputBindings = t.table;
	defaultChild = t.optional(t.table);
	onFocusGained = t.optional(t.callback);
	onFocusLost = t.optional(t.callback);
	onFocusChanged = t.optional(t.callback);
}), function(arg1) -- Line 34, Named "checkFocusManager"
	if arg1.focusController ~= nil and arg1.parentFocusNode ~= nil then
		return false, "Cannot attach a new focusController beneath an existing one"
	end
	return true
end)
local tbl_4_upvr = {}
local FocusNode_upvr = require(script.Parent.FocusNode)
local getEngineInterface_upvr = require(script.Parent.getEngineInterface)
local FocusControllerInternalApi_upvr = require(script.Parent.FocusControllerInternalApi)
local FocusContext_upvr = require(script.Parent.FocusContext)
return function(arg1) -- Line 69, Named "asFocusable"
	--[[ Upvalues[10]:
		[1]: Roact_upvr (readonly)
		[2]: any_intersection_result1_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: FocusNode_upvr (readonly)
		[6]: getEngineInterface_upvr (readonly)
		[7]: FocusControllerInternalApi_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: FocusContext_upvr (readonly)
	]]
	local any_extend_result1_upvr = Roact_upvr.Component:extend("Focusable(%s)":format(tostring(arg1)))
	any_extend_result1_upvr.validateProps = any_intersection_result1_upvr
	any_extend_result1_upvr.defaultProps = tbl_3_upvr
	function any_extend_result1_upvr.init(arg1_2) -- Line 79
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: tbl_4_upvr (copied, readonly)
			[3]: FocusNode_upvr (copied, readonly)
			[4]: getEngineInterface_upvr (copied, readonly)
		]]
		arg1_2.focused = false
		arg1_2.defaultRef = Roact_upvr.createRef()
		local parentNeighbors_2 = arg1_2.props.parentNeighbors
		if not parentNeighbors_2 then
			parentNeighbors_2 = tbl_4_upvr
		end
		local tbl_2 = {
			focusNode = FocusNode_upvr.new(arg1_2.props, arg1_2:getRef());
			parentNeighbors = parentNeighbors_2;
		}
		local tbl_5 = {}
		local NextSelectionLeft = arg1_2.props.NextSelectionLeft
		if not NextSelectionLeft then
			NextSelectionLeft = parentNeighbors_2.NextSelectionLeft
		end
		tbl_5.NextSelectionLeft = NextSelectionLeft
		NextSelectionLeft = arg1_2.props.NextSelectionRight
		local var19 = NextSelectionLeft
		if not var19 then
			var19 = parentNeighbors_2.NextSelectionRight
		end
		tbl_5.NextSelectionRight = var19
		var19 = arg1_2.props.NextSelectionUp
		local var20 = var19
		if not var20 then
			var20 = parentNeighbors_2.NextSelectionUp
		end
		tbl_5.NextSelectionUp = var20
		var20 = arg1_2.props.NextSelectionDown
		local var21 = var20
		if not var21 then
			var21 = parentNeighbors_2.NextSelectionDown
		end
		tbl_5.NextSelectionDown = var21
		tbl_2.neighbors = tbl_5
		tbl_2.needsDescendantAddedRefocusCounter = 0
		tbl_2.needsDescendantRemovedRefocusCounter = 0
		arg1_2:setState(tbl_2)
		function arg1_2.updateFocusedState(arg1_3) -- Line 97
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			if not arg1_2.focused and arg1_3 then
				arg1_2:gainFocus()
			elseif arg1_2.focused and not arg1_3 then
				arg1_2:loseFocus()
			end
		end
		if arg1_2:isRoot() then
			local var24_upvw = false
			function arg1_2.ancestryChanged(arg1_4) -- Line 111
				--[[ Upvalues[3]:
					[1]: var24_upvw (read and write)
					[2]: arg1_2 (readonly)
					[3]: getEngineInterface_upvr (copied, readonly)
				]]
				if not var24_upvw and arg1_4:IsDescendantOf(game) then
					var24_upvw = true
					arg1_2:getFocusControllerInternal():initialize(getEngineInterface_upvr(arg1_4))
				end
			end
			function arg1_2.ancestryChangedListener(arg1_5) -- Line 121
				--[[ Upvalues[2]:
					[1]: arg1_2 (readonly)
					[2]: Roact_upvr (copied, readonly)
				]]
				arg1_2.ancestryChanged(arg1_5)
				local var26 = arg1_2.props[Roact_upvr.Event.AncestryChanged]
				if var26 ~= nil then
					var26(arg1_5)
				end
			end
			function arg1_2.refreshFocusOnDescendantAdded(arg1_6) -- Line 130
				--[[ Upvalues[2]:
					[1]: arg1_2 (readonly)
					[2]: Roact_upvr (copied, readonly)
				]]
				if arg1_2:getFocusControllerInternal():needsDescendantAddedRefocus() then
					arg1_2:setState(function(arg1_7) -- Line 132
						return {
							needsDescendantAddedRefocusCounter = arg1_7.needsDescendantAddedRefocusCounter + 1;
						}
					end)
				end
				local var30 = arg1_2.props[Roact_upvr.Event.DescendantAdded]
				if var30 ~= nil then
					var30(arg1_6)
				end
			end
			function arg1_2.refreshFocusOnDescendantRemoved(arg1_8) -- Line 145
				--[[ Upvalues[2]:
					[1]: arg1_2 (readonly)
					[2]: Roact_upvr (copied, readonly)
				]]
				if arg1_2:getFocusControllerInternal():needsDescendantRemovedRefocus() then
					arg1_2:setState(function(arg1_9) -- Line 147
						return {
							needsDescendantRemovedRefocusCounter = arg1_9.needsDescendantRemovedRefocusCounter + 1;
						}
					end)
				end
				local var34 = arg1_2.props[Roact_upvr.Event.DescendantRemoving]
				if var34 ~= nil then
					var34(arg1_8)
				end
			end
		end
	end
	function any_extend_result1_upvr.getDerivedStateFromProps(arg1_10, arg2) -- Line 162
		--[[ Upvalues[1]:
			[1]: tbl_4_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var35
		if not arg2.neighbors then
			local var36 = tbl_4_upvr
		end
		var35 = arg1_10.parentNeighbors
		if not var35 then
			var35 = tbl_4_upvr
		end
		local NextSelectionLeft_2 = arg1_10.NextSelectionLeft
		if not NextSelectionLeft_2 then
			NextSelectionLeft_2 = var35.NextSelectionLeft
		end
		local NextSelectionRight = arg1_10.NextSelectionRight
		if not NextSelectionRight then
			NextSelectionRight = var35.NextSelectionRight
		end
		local NextSelectionUp = arg1_10.NextSelectionUp
		if not NextSelectionUp then
			NextSelectionUp = var35.NextSelectionUp
		end
		local NextSelectionDown = arg1_10.NextSelectionDown
		if not NextSelectionDown then
			NextSelectionDown = var35.NextSelectionDown
		end
		if NextSelectionLeft_2 ~= var36.NextSelectionLeft or NextSelectionRight ~= var36.NextSelectionRight or NextSelectionDown ~= var36.NextSelectionDown or NextSelectionUp ~= var36.NextSelectionUp then
			return {
				parentNeighbors = var35;
				neighbors = {
					NextSelectionLeft = NextSelectionLeft_2;
					NextSelectionRight = NextSelectionRight;
					NextSelectionUp = NextSelectionUp;
					NextSelectionDown = NextSelectionDown;
				};
			}
		end
		return nil
	end
	function any_extend_result1_upvr.gainFocus(arg1_11) -- Line 195
		arg1_11.focused = true
		if arg1_11.props.onFocusGained ~= nil then
			arg1_11.props.onFocusGained()
		end
		if arg1_11.props.onFocusChanged ~= nil then
			arg1_11.props.onFocusChanged(true)
		end
	end
	function any_extend_result1_upvr.loseFocus(arg1_12) -- Line 207
		arg1_12.focused = false
		if arg1_12.props.onFocusLost ~= nil then
			arg1_12.props.onFocusLost()
		end
		if arg1_12.props.onFocusChanged ~= nil then
			arg1_12.props.onFocusChanged(false)
		end
	end
	function any_extend_result1_upvr.isRoot(arg1_13) -- Line 222
		local var43 = false
		if arg1_13.props.focusController ~= nil then
			if arg1_13.props.parentFocusNode ~= nil then
				var43 = false
			else
				var43 = true
			end
		end
		return var43
	end
	function any_extend_result1_upvr.getFocusControllerInternal(arg1_14) -- Line 226
		--[[ Upvalues[1]:
			[1]: FocusControllerInternalApi_upvr (copied, readonly)
		]]
		return arg1_14.state.focusNode.focusController[FocusControllerInternalApi_upvr]
	end
	function any_extend_result1_upvr.getRef(arg1_15) -- Line 230
		local innerRef = arg1_15.props.innerRef
		if not innerRef then
			innerRef = arg1_15.defaultRef
		end
		return innerRef
	end
	local function render(arg1_16) -- Line 234
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: module_upvr (copied, readonly)
			[4]: tbl_4_upvr (copied, readonly)
			[5]: FocusContext_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		local any_getRef_result1 = arg1_16:getRef()
		local tbl = {
			NextSelectionLeft = any_getRef_result1;
			NextSelectionRight = any_getRef_result1;
			NextSelectionDown = any_getRef_result1;
			NextSelectionUp = any_getRef_result1;
			[Roact_upvr.Ref] = any_getRef_result1;
		}
		local var47
		if arg1_16:isRoot() then
			var47 = Cryo_upvr.Dictionary.join(tbl, arg1_16.props, {
				[Roact_upvr.Event.AncestryChanged] = arg1_16.ancestryChangedListener;
				[Roact_upvr.Event.DescendantAdded] = arg1_16.refreshFocusOnDescendantAdded;
				[Roact_upvr.Event.DescendantRemoving] = arg1_16.refreshFocusOnDescendantRemoved;
			}, module_upvr)
		else
			local parentNeighbors = arg1_16.props.parentNeighbors
			if not parentNeighbors then
				parentNeighbors = tbl_4_upvr
			end
			var47 = Cryo_upvr.Dictionary.join(tbl, parentNeighbors, arg1_16.props, module_upvr)
		end
		return Roact_upvr.createElement(FocusContext_upvr.Provider, {
			value = arg1_16.state;
		}, Roact_upvr.createElement(arg1, var47))
	end
	any_extend_result1_upvr.render = render
	function any_extend_result1_upvr.didMount(arg1_17) -- Line 272
		arg1_17.state.focusNode:attachToTree(arg1_17.props.parentFocusNode, arg1_17.updateFocusedState)
		if arg1_17:isRoot() then
			arg1_17.ancestryChanged(arg1_17:getRef():getValue())
		end
	end
	function any_extend_result1_upvr.didUpdate(arg1_18, arg2, arg3) -- Line 283
		arg1_18.state.focusNode:updateNavProps(arg1_18.props)
		local innerRef_2 = arg1_18.props.innerRef
		if not innerRef_2 then
			innerRef_2 = arg1_18.defaultRef
		end
		if arg1_18.state.focusNode.ref ~= innerRef_2 then
			error("Cannot change the ref passed to a Focusable component", 0)
		end
		if arg1_18.state.needsDescendantAddedRefocusCounter ~= arg3.needsDescendantAddedRefocusCounter then
			arg1_18:getFocusControllerInternal():descendantAddedRefocus()
		end
		if arg1_18.state.needsDescendantRemovedRefocusCounter ~= arg3.needsDescendantRemovedRefocusCounter then
			arg1_18:getFocusControllerInternal():descendantRemovedRefocus()
		end
	end
	function any_extend_result1_upvr.willUnmount(arg1_19) -- Line 305
		arg1_19.state.focusNode:detachFromTree()
		if arg1_19:isRoot() then
			arg1_19:getFocusControllerInternal():teardown()
		end
	end
	return Roact_upvr.forwardRef(function(arg1_20, arg2) -- Line 313
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FocusContext_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: module_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_extend_result1_upvr (readonly)
		]]
		return Roact_upvr.createElement(FocusContext_upvr.Consumer, {
			render = function(arg1_21) -- Line 315, Named "render"
				--[[ Upvalues[7]:
					[1]: arg1_20 (readonly)
					[2]: Cryo_upvr (copied, readonly)
					[3]: module_upvr (copied, readonly)
					[4]: Roact_upvr (copied, readonly)
					[5]: arg2 (readonly)
					[6]: arg1 (copied, readonly)
					[7]: any_extend_result1_upvr (copied, readonly)
				]]
				if arg1_21 == nil and arg1_20.focusController == nil then
					local module_2 = {}
					module_2[Roact_upvr.Ref] = arg2
					return Roact_upvr.createElement(arg1, Cryo_upvr.Dictionary.join(arg1_20, module_upvr, module_2))
				end
				local module = {}
				if not arg1_21 or not arg1_21.focusNode then
				end
				module.parentFocusNode = nil
				if not arg1_21 or not arg1_21.neighbors then
				end
				module.parentNeighbors = nil
				module.innerRef = arg2
				return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1_20, module))
			end;
		})
	end)
end