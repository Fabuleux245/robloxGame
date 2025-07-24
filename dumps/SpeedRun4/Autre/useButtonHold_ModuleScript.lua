-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:53
-- Luau version 6, Types version 3
-- Time taken: 0.006548 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
local React_upvr = require(Parent.React)
local function useFakeCancelHoldAfterBlur_upvr(arg1, arg2, arg3) -- Line 19, Named "useFakeCancelHoldAfterBlur"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local tbl_7 = {}
	tbl_7[1] = arg2
	tbl_7[2] = arg3
	local any_useCallback_result1_5_upvr = React_upvr.useCallback(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		arg2({
			eventData = {
				UserInputState = Enum.UserInputState.End;
			};
		})
		arg3()
	end, tbl_7)
	local tbl_4 = {}
	tbl_4[1] = arg1
	tbl_4[2] = any_useCallback_result1_5_upvr
	React_upvr.useEffect(function() -- Line 32
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useCallback_result1_5_upvr (readonly)
		]]
		if arg1 and arg1:IsA("GuiObject") then
			local any_Connect_result1_upvr = arg1.SelectionLost:Connect(any_useCallback_result1_5_upvr)
			return function() -- Line 35
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
			end
		end
		function any_Connect_result1_upvr() -- Line 39
		end
		return any_Connect_result1_upvr
	end, tbl_4)
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local ButtonHoldStateEnum_upvr = require(FocusNavigationUtils.ButtonHoldStateEnum)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixButtonHoldImprecision2", false)
local InputHandlers_upvr = require(Parent.InputHandlers)
return function(arg1, arg2) -- Line 43, Named "useButtonHold"
	--[[ Upvalues[6]:
		[1]: ArgCheck_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ButtonHoldStateEnum_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: InputHandlers_upvr (readonly)
		[6]: useFakeCancelHoldAfterBlur_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local var18 = ArgCheck_upvr
	if 0 > arg1 then
		var18 = false
	else
		var18 = true
	end
	var18.assert(var18, "signalHoldIntentSeconds must be greater than or equal to 0")
	var18 = ArgCheck_upvr
	if 0 >= arg2 then
		var18 = false
		-- KONSTANTWARNING: GOTO [18] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 33 start (CF ANALYSIS FAILED)
	var18 = true
	var18.assert(var18, "signalHoldCompleteSeconds must be greater than 0")
	var18 = ArgCheck_upvr
	if arg1 >= arg2 then
		var18 = false
	else
		var18 = true
	end
	var18.assert(var18, "signalHoldIntentSeconds should be less than signalHoldCompleteSeconds")
	var18 = React_upvr
	var18 = ButtonHoldStateEnum_upvr.NOT_HELD
	local any_useState_result1, any_useState_result2_upvr_2 = var18.useState(var18)
	if game_DefineFastFlag_result1_upvr then
		local any_useRef_result1_upvw = React_upvr.useRef(nil)
	end
	local any_useBinding_result1_upvr, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(nil)
	local tbl_6 = {}
	local var32 = arg1
	tbl_6[1] = any_useBinding_result1_upvr
	tbl_6[2] = var32
	local any_useCallback_result1 = React_upvr.useCallback(function(arg1_2) -- Line 66
		--[[ Upvalues[8]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: any_useRef_result1_upvw (read and write)
			[4]: any_useBinding_result2_upvr (readonly)
			[5]: any_useBinding_result1_upvr (readonly)
			[6]: arg1 (readonly)
			[7]: any_useState_result2_upvr_2 (readonly)
			[8]: ButtonHoldStateEnum_upvr (copied, readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			local tick_result1 = tick()
			local var29 = ArgCheck_upvr
			if any_useRef_result1_upvw.current == nil then
				var29 = false
			else
				var29 = true
			end
			var29.assert(var29, "startTime.current should not be nil")
			if any_useRef_result1_upvw.current then
				local var30 = ArgCheck_upvr
				if any_useRef_result1_upvw.current > tick_result1 then
					var30 = false
				else
					var30 = true
				end
				var30.assert(var30, "startTime.current should be less than or equal to tick()")
				any_useBinding_result2_upvr(tick_result1 - any_useRef_result1_upvw.current)
				-- KONSTANTWARNING: GOTO [47] #38
			end
		else
			any_useBinding_result2_upvr(any_useBinding_result1_upvr:getValue() + arg1_2)
		end
		if arg1 <= any_useBinding_result1_upvr:getValue() then
			any_useState_result2_upvr_2(ButtonHoldStateEnum_upvr.HOLDING)
		end
	end, tbl_6)
	local tbl = {}
	if game_DefineFastFlag_result1_upvr then
		var32 = arg2
	else
		var32 = nil
	end
	tbl[1] = var32
	local any_useCallback_result1_3 = React_upvr.useCallback(function() -- Line 85
		--[[ Upvalues[6]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: any_useBinding_result2_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: any_useRef_result1_upvw (read and write)
			[5]: any_useState_result2_upvr_2 (readonly)
			[6]: ButtonHoldStateEnum_upvr (copied, readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			any_useBinding_result2_upvr(arg2)
			any_useRef_result1_upvw.current = nil
		end
		any_useState_result2_upvr_2(ButtonHoldStateEnum_upvr.COMPLETED)
	end, tbl)
	local any_useCallback_result1_4 = React_upvr.useCallback(function() -- Line 93
		--[[ Upvalues[5]:
			[1]: any_useBinding_result2_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[3]: any_useRef_result1_upvw (read and write)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: ButtonHoldStateEnum_upvr (copied, readonly)
		]]
		any_useBinding_result2_upvr(0)
		if game_DefineFastFlag_result1_upvr then
			any_useRef_result1_upvw.current = nil
		end
		any_useState_result2_upvr_2(ButtonHoldStateEnum_upvr.NOT_HELD)
	end, {})
	local tbl_5 = {}
	local tbl_3 = {}
	tbl_3.durationSeconds = arg2
	tbl_3.onStep = any_useCallback_result1
	tbl_3.onComplete = any_useCallback_result1_3
	tbl_5.hold = tbl_3
	tbl_5.onPress = React_upvr.useCallback(function() -- Line 59
		--[[ Upvalues[4]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: any_useRef_result1_upvw (read and write)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: ButtonHoldStateEnum_upvr (copied, readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			any_useRef_result1_upvw.current = tick()
		end
		any_useState_result2_upvr_2(ButtonHoldStateEnum_upvr.JUST_PRESSED)
	end, {})
	tbl_5.onRelease = any_useCallback_result1_4
	local tbl_2 = {any_useCallback_result1_4, any_useCallback_result1, any_useCallback_result1_3}
	tbl_2[4] = arg2
	local any_useCallback_result1_2_upvr = React_upvr.useCallback(InputHandlers_upvr.handleInput(tbl_5), tbl_2)
	useFakeCancelHoldAfterBlur_upvr(any_useState_result1_2, any_useCallback_result1_2_upvr, any_useCallback_result1_4)
	do
		return {
			eventHandler = React_upvr.useCallback(function(arg1_3) -- Line 114
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (readonly)
					[2]: any_useCallback_result1_2_upvr (readonly)
				]]
				any_useState_result2_upvr(arg1_3.targetInstance)
				any_useCallback_result1_2_upvr(arg1_3)
			end, {any_useCallback_result1_2_upvr});
			holdState = any_useState_result1;
			holdTime = any_useBinding_result1_upvr;
			holdProgress = any_useBinding_result1_upvr:map(function(arg1_4) -- Line 125
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				return arg1_4 / arg2
			end);
			cancelHold = any_useCallback_result1_4;
		}
	end
	-- KONSTANTERROR: [17] 14. Error Block 33 end (CF ANALYSIS FAILED)
end