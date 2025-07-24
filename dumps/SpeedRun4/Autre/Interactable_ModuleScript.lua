-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:57
-- Luau version 6, Types version 3
-- Time taken: 0.005790 seconds

local Parent_2 = script.Parent.Parent
local Parent_3 = Parent_2.Parent
local UIBloxConfig_upvr = require(Parent_3.UIBloxConfig)
local Parent = Parent_3.Parent
if (UIBloxConfig_upvr.refactorInteractable or false) == false then
	return require(script.Parent.Interactable_DEPRECATED)
end
local React_upvr = require(Parent.React)
local Foundation_upvr = require(Parent.Foundation)
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
local useInteractionFeedback_upvr = require(Parent_2.Control.Hooks.useInteractionFeedback)
local useGuiControlState_upvr = require(Parent_2.Control.Hooks.useGuiControlState)
local ControlStateEvent_upvr = require(Parent_3.Core.Control.Enum.ControlStateEvent)
local Cryo_upvr = require(Parent.Cryo)
local tbl_2_upvr = {
	affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
}
local ControlState_upvr = require(Parent_2.Control.Enum.ControlState)
if UIBloxConfig_upvr.useFoundationInteractable then
	return React_upvr.forwardRef(function(arg1, arg2) -- Line 147, Named "InteractableFoundationWrapper"
		--[[ Upvalues[5]:
			[1]: ImageSetComponent_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: React_upvr (readonly)
			[4]: ControlState_upvr (readonly)
			[5]: Foundation_upvr (readonly)
		]]
		local clone = table.clone(arg1)
		local isDisabled = clone.isDisabled
		if not isDisabled then
			if clone.userInteractionEnabled ~= false then
				isDisabled = false
			else
				isDisabled = true
			end
		end
		clone.isDisabled = isDisabled
		clone.userInteractionEnabled = nil
		clone.ref = arg2
		local component = clone.component
		if not component then
			component = ImageSetComponent_upvr.Button
		end
		clone.component = component
		clone.stateLayer = tbl_2_upvr
		if arg1.onStateChanged then
			local any_useRef_result1_upvr_2 = React_upvr.useRef(ControlState_upvr.Initialize)
			function clone.onStateChanged(arg1_3) -- Line 157
				--[[ Upvalues[3]:
					[1]: ControlState_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: any_useRef_result1_upvr_2 (readonly)
				]]
				local var38 = ControlState_upvr[arg1_3]
				arg1.onStateChanged(any_useRef_result1_upvr_2.current, var38)
				any_useRef_result1_upvr_2.current = var38
			end
		end
		return React_upvr.createElement(Foundation_upvr.UNSTABLE.Interactable, clone)
	end)
end
return React_upvr.forwardRef(function(arg1, arg2) -- Line 57, Named "Interactable"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: UIBloxConfig_upvr (readonly)
		[3]: useInteractionFeedback_upvr (readonly)
		[4]: useGuiControlState_upvr (readonly)
		[5]: ControlStateEvent_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local var13_upvr
	local var22
	if UIBloxConfig_upvr.enableInteractionFeedback then
		var13_upvr = useInteractionFeedback_upvr()
	else
		var13_upvr = nil
	end
	local var15 = React_upvr
	if arg1.userInteractionEnabled ~= nil then
	else
	end
	local any_useRef_result1_upvr = var15.useRef(true)
	local tbl = {}
	var22 = var13_upvr
	tbl[1] = arg1.onStateChanged
	tbl[2] = var22
	tbl[3] = arg1.feedbackType
	var22 = any_useRef_result1_upvr.current
	local var9_result1, var9_result2_upvr = useGuiControlState_upvr(any_useRef_result1_upvr_3, React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 68
		--[[ Upvalues[3]:
			[1]: UIBloxConfig_upvr (copied, readonly)
			[2]: var13_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if UIBloxConfig_upvr.enableInteractionFeedback then
			var13_upvr(arg1.feedbackType, arg1_2, arg2_2)
		end
		if arg1.onStateChanged then
			arg1.onStateChanged(arg1_2, arg2_2)
		end
	end, tbl), var22)
	var22 = React_upvr
	var22 = arg2
	var22.useImperativeHandle(var22, function() -- Line 84
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr_3 (readonly)
		]]
		return any_useRef_result1_upvr_3.current
	end, {})
	var22 = React_upvr
	function var22(...) -- Line 89
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: React_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current == false or arg1.isDisabled then
			return nil
		end
		if arg1[React_upvr.Event.Activated] then
			return arg1[React_upvr.Event.Activated](...)
		end
		return nil
	end
	var22 = React_upvr.useEffect
	local any_useRef_result1_upvr_4 = React_upvr.useRef(var13_upvr)
	var22(function() -- Line 99
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr_4 (readonly)
			[3]: var9_result2_upvr (readonly)
			[4]: ControlStateEvent_upvr (copied, readonly)
		]]
		if arg1.isDisabled ~= nil then
			any_useRef_result1_upvr_4.current = arg1.isDisabled
			if arg1.isDisabled then
				var9_result2_upvr.events[ControlStateEvent_upvr.Disabled]()
			else
				var9_result2_upvr.events[ControlStateEvent_upvr.Enabled]()
			end
		end
		if any_useRef_result1_upvr_4.current == nil then
			any_useRef_result1_upvr_4.current = false
			var9_result2_upvr.events[ControlStateEvent_upvr.Enabled]()
		elseif any_useRef_result1_upvr_4.current == true then
			any_useRef_result1_upvr_4.current = false
			var9_result2_upvr.events[ControlStateEvent_upvr.Enabled]()
		end
	end, {arg1.isDisabled})
	var22 = React_upvr.useEffect
	var22(function() -- Line 119
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
		]]
		if arg1.userInteractionEnabled ~= nil then
			any_useRef_result1_upvr.current = arg1.userInteractionEnabled
		else
			any_useRef_result1_upvr.current = true
		end
	end, {arg1.userInteractionEnabled})
	var22 = arg1.component
	if not var22 then
		var22 = ImageSetComponent_upvr.Button
	end
	local module = {
		ref = var9_result1;
		onStateChanged = Cryo_upvr.None;
		isDisabled = Cryo_upvr.None;
		userInteractionEnabled = Cryo_upvr.None;
	}
	local None = Cryo_upvr.None
	module.feedbackType = None
	if arg1.isDisabled ~= nil then
		None = not arg1.isDisabled
	else
		None = nil
	end
	module.Active = None
	module[React_upvr.Event.Activated] = var22.useCallback(var22, {arg1[React_upvr.Event.Activated], arg1.isDisabled})
	return React_upvr.createElement(var22, Cryo_upvr.Dictionary.join(arg1, module))
end)