-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:52
-- Luau version 6, Types version 3
-- Time taken: 0.008381 seconds

local Parent_2 = script.Parent
local Parent_3 = Parent_2.Parent.Parent
local Parent = Parent_3.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local ControlState_upvr = require(Parent_2.Enum.ControlState)
local any_extend_result1 = Roact_upvr.PureComponent:extend("Controllable")
local StateTable_upvr = require(Parent_3.StateTable.StateTable)
function any_extend_result1.init(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: ControlState_upvr (readonly)
		[2]: StateTable_upvr (readonly)
	]]
	arg1.isMounted = false
	local Initialize = ControlState_upvr.Initialize
	arg1.state = {
		currentState = Initialize;
	}
	function arg1.setDisabled(arg1_2) -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2 then
			arg1.stateTable.events.Disable()
		else
			arg1.stateTable.events.Enable()
		end
	end
	arg1.stateTable = StateTable_upvr.new(string.format("Controllable(%s)", tostring(arg1)), Initialize, {}, {
		[ControlState_upvr.Initialize] = {
			Enable = {
				nextState = ControlState_upvr.Default;
			};
			Disable = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Default] = {
			OnPressed = {
				nextState = ControlState_upvr.Pressed;
			};
			StartHover = {
				nextState = ControlState_upvr.Hover;
			};
			OnSelectionGained = {
				nextState = ControlState_upvr.Selected;
			};
			Disable = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Hover] = {
			OnSelectionGained = {
				nextState = ControlState_upvr.Selected;
			};
			OnPressed = {
				nextState = ControlState_upvr.Pressed;
			};
			EndHover = {
				nextState = ControlState_upvr.Default;
			};
			Disable = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Pressed] = {
			OnSelectionGained = {
				nextState = ControlState_upvr.SelectedPressed;
			};
			OnReleased = {
				nextState = ControlState_upvr.Default;
			};
			OnReleasedHover = {
				nextState = ControlState_upvr.Hover;
			};
			Disable = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Selected] = {
			OnSelectionLost = {
				nextState = ControlState_upvr.Default;
			};
			OnPressed = {
				nextState = ControlState_upvr.SelectedPressed;
			};
			Disable = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.SelectedPressed] = {
			OnSelectionLost = {
				nextState = ControlState_upvr.Default;
			};
			OnReleased = {
				nextState = ControlState_upvr.Selected;
			};
			Disable = {
				nextState = ControlState_upvr.Disabled;
			};
		};
		[ControlState_upvr.Disabled] = {
			Enable = {
				nextState = ControlState_upvr.Default;
			};
		};
	})
	arg1.stateTable:onStateChange(function(arg1_3, arg2) -- Line 77
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.currentState = arg2
		arg1:setState(tbl)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_3, arg2)
		end
	end)
end
any_extend_result1.validateProps = t.strictInterface({
	controlComponent = t.strictInterface({
		component = t.union(t.callback, t.string, t.table);
		props = t.optional(t.table);
		children = t.optional(t.table);
	});
	onStateChanged = t.callback;
	isDisabled = t.optional(t.boolean);
	userInteractionEnabled = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	userInteractionEnabled = true;
	isDisabled = false;
}
local Cryo_upvr = require(Parent.Cryo)
function any_extend_result1.render(arg1) -- Line 115
	--[[ Upvalues[3]:
		[1]: ControlState_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	local controlComponent_upvr = arg1.props.controlComponent
	local userInteractionEnabled_upvr = arg1.props.userInteractionEnabled
	local var49
	if var49 == ControlState_upvr.Initialize then
		var49 = nil
		return var49
	end
	var49 = controlComponent_upvr.props
	if var49 then
		var49 = controlComponent_upvr.props.Selectable
	end
	if var49 == nil then
	end
	local props = controlComponent_upvr.props
	if not props then
		props = {}
	end
	return Roact_upvr.createElement(controlComponent_upvr.component, Cryo_upvr.Dictionary.join(arg1.props, props, {
		Selectable = true;
		Active = not arg1.props.isDisabled;
		[Roact_upvr.Event.MouseEnter] = function(...) -- Line 131
			--[[ Upvalues[4]:
				[1]: userInteractionEnabled_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: controlComponent_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			if not userInteractionEnabled_upvr then
				return nil
			end
			arg1.stateTable.events.StartHover()
			if controlComponent_upvr.props[Roact_upvr.Event.MouseEnter] ~= nil then
				return controlComponent_upvr.props[Roact_upvr.Event.MouseEnter](...)
			end
			return nil
		end;
		[Roact_upvr.Event.MouseLeave] = function(...) -- Line 141
			--[[ Upvalues[4]:
				[1]: userInteractionEnabled_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: controlComponent_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			if not userInteractionEnabled_upvr then
				return nil
			end
			arg1.stateTable.events.EndHover()
			if controlComponent_upvr.props[Roact_upvr.Event.MouseLeave] ~= nil then
				return controlComponent_upvr.props[Roact_upvr.Event.MouseLeave](...)
			end
			return nil
		end;
		[Roact_upvr.Event.InputBegan] = function(...) -- Line 151
			--[[ Upvalues[4]:
				[1]: userInteractionEnabled_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: controlComponent_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			if not userInteractionEnabled_upvr then
				return nil
			end
			local selected_arg_2 = select(2, ...)
			if selected_arg_2.UserInputType == Enum.UserInputType.MouseButton1 or selected_arg_2.UserInputType == Enum.UserInputType.Touch or selected_arg_2.KeyCode == Enum.KeyCode.ButtonA then
				arg1.stateTable.events.OnPressed()
			end
			if controlComponent_upvr.props[Roact_upvr.Event.InputBegan] ~= nil then
				return controlComponent_upvr.props[Roact_upvr.Event.InputBegan](...)
			end
			return nil
		end;
		[Roact_upvr.Event.InputEnded] = function(...) -- Line 168
			--[[ Upvalues[4]:
				[1]: userInteractionEnabled_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: controlComponent_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			if not userInteractionEnabled_upvr then
				return nil
			end
			local selected_arg = select(2, ...)
			if selected_arg.UserInputType == Enum.UserInputType.MouseButton1 then
				arg1.stateTable.events.OnReleasedHover()
			elseif selected_arg.UserInputType == Enum.UserInputType.Touch or selected_arg.KeyCode == Enum.KeyCode.ButtonA or selected_arg.UserInputType == Enum.UserInputType.MouseMovement then
				arg1.stateTable.events.OnReleased()
			end
			if controlComponent_upvr.props[Roact_upvr.Event.InputEnded] ~= nil then
				return controlComponent_upvr.props[Roact_upvr.Event.InputEnded](...)
			end
			return nil
		end;
		[Roact_upvr.Event.SelectionGained] = function(...) -- Line 187
			--[[ Upvalues[4]:
				[1]: userInteractionEnabled_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: controlComponent_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			if not userInteractionEnabled_upvr then
				return nil
			end
			arg1.stateTable.events.OnSelectionGained()
			if controlComponent_upvr.props[Roact_upvr.Event.SelectionGained] ~= nil then
				return controlComponent_upvr.props[Roact_upvr.Event.SelectionGained](...)
			end
			return nil
		end;
		[Roact_upvr.Event.SelectionLost] = function(...) -- Line 197
			--[[ Upvalues[4]:
				[1]: userInteractionEnabled_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: controlComponent_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			if not userInteractionEnabled_upvr then
				return nil
			end
			arg1.stateTable.events.OnSelectionLost()
			if controlComponent_upvr.props[Roact_upvr.Event.SelectionLost] ~= nil then
				return controlComponent_upvr.props[Roact_upvr.Event.SelectionLost](...)
			end
			return nil
		end;
		[Roact_upvr.Event.Activated] = function(...) -- Line 207
			--[[ Upvalues[5]:
				[1]: userInteractionEnabled_upvr (readonly)
				[2]: controlComponent_upvr (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: ControlState_upvr (copied, readonly)
			]]
			if not userInteractionEnabled_upvr then
				return nil
			end
			if controlComponent_upvr.props[Roact_upvr.Event.Activated] and arg1.state.currentState ~= ControlState_upvr.Disabled and arg1.isMounted then
				return controlComponent_upvr.props[Roact_upvr.Event.Activated](...)
			end
			return nil
		end;
		[Roact_upvr.Ref] = controlComponent_upvr.props.forwardedRef;
		forwardedRef = Cryo_upvr.None;
		userInteractionEnabled = Cryo_upvr.None;
		isDisabled = Cryo_upvr.None;
		onStateChanged = Cryo_upvr.None;
		[Roact_upvr.Children] = Cryo_upvr.None;
		controlComponent = Cryo_upvr.None;
	}), controlComponent_upvr.children)
end
function any_extend_result1.didMount(arg1) -- Line 233
	arg1.isMounted = true
	arg1.setDisabled(arg1.props.isDisabled)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 238
	if arg1.props.isDisabled ~= arg2.isDisabled then
		arg1.setDisabled(arg1.props.isDisabled)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 244
	arg1.isMounted = false
end
return any_extend_result1