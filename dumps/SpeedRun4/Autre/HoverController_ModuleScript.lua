-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:40
-- Luau version 6, Types version 3
-- Time taken: 0.002804 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local UIBloxConfig_upvr = require(Parent.UIBloxConfig)
local Constants_upvr = require(Parent_3.Constants)
local ControlState_upvr = require(Parent.Core.Control.Enum.ControlState)
local LuauPolyfill_upvr = require(Parent_2.LuauPolyfill)
local TooltipController_upvr = require(Parent_3.TooltipController)
return function(arg1) -- Line 17, Named "HoverController"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: UIBloxConfig_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: LuauPolyfill_upvr (readonly)
		[6]: TooltipController_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useRef_result1_upvr = React_upvr.useRef(tick())
	local var17
	if UIBloxConfig_upvr.enableTooltipV2HoverControllerReRenderFix then
		var17 = {}
	else
		var17 = nil
	end
	React_upvr.useEffect(function() -- Line 21
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		return function() -- Line 22
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (copied, readonly)
			]]
			any_useRef_result1_upvr.current = tick()
		end
	end, var17)
	local delayTime_upvr = arg1.delayTime
	if not delayTime_upvr then
		delayTime_upvr = Constants_upvr.DEFAULT_DELAY_TIME
	end
	var17 = React_upvr
	function var17(arg1_2, arg2) -- Line 30
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: ControlState_upvr (copied, readonly)
			[4]: UIBloxConfig_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr (readonly)
			[6]: delayTime_upvr (readonly)
		]]
		if arg1.disabled then
			any_useState_result2_upvr(false)
		else
			if arg2 == ControlState_upvr.Hover or UIBloxConfig_upvr.supportControlStateSelectedForTooltipHover and arg2 == ControlState_upvr.Selected then
				local current_upvr = any_useRef_result1_upvr.current
				delay(delayTime_upvr, function() -- Line 40
					--[[ Upvalues[3]:
						[1]: any_useRef_result1_upvr (copied, readonly)
						[2]: current_upvr (readonly)
						[3]: any_useState_result2_upvr (copied, readonly)
					]]
					if any_useRef_result1_upvr.current == current_upvr then
						any_useState_result2_upvr(true)
					end
				end)
				return
			end
			current_upvr = ControlState_upvr.Hover
			local function INLINED() -- Internal function, doesn't exist in bytecode
				current_upvr = UIBloxConfig_upvr.supportControlStateSelectedForTooltipHover
				return current_upvr
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				current_upvr = ControlState_upvr.Selected
				return arg1_2 == current_upvr
			end
			if arg1_2 == current_upvr or INLINED() and INLINED_2() then
				current_upvr = any_useRef_result1_upvr
				current_upvr.current = tick()
				current_upvr = any_useState_result2_upvr
				current_upvr(false)
			end
		end
	end
	var17 = LuauPolyfill_upvr.Object.assign
	local tbl = {
		delayTime = LuauPolyfill_upvr.Object.None;
		active = any_useState_result1;
	}
	local any_useCallback_result1_upvr = var17.useCallback(var17, {delayTime_upvr})
	function tbl.renderTriggerPoint(arg1_3) -- Line 58
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		return arg1.renderTriggerPoint(arg1_3, any_useCallback_result1_upvr)
	end
	var17 = var17({}, arg1, tbl)
	return React_upvr.createElement(TooltipController_upvr, var17)
end