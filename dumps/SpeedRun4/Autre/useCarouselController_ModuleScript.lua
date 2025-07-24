-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:52
-- Luau version 6, Types version 3
-- Time taken: 0.013452 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local React_upvr = require(Parent_2.React)
local SocialCommon = require(Parent_2.SocialCommon)
local getClosestItemToCenter_upvr = require(Parent.Utils.getClosestItemToCenter)
local tbl_2_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local function _(arg1, arg2, arg3) -- Line 75, Named "isWithinEpsilon"
	local var8
	if math.abs(arg1 - arg2) >= arg3 then
		var8 = false
	else
		var8 = true
	end
	return var8
end
local Otter_upvr = require(Parent_2.Otter)
local RunService_upvr = game:GetService("RunService")
local function createController_upvr(arg1, arg2, arg3) -- Line 79, Named "createController"
	--[[ Upvalues[5]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
		[4]: getClosestItemToCenter_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local var11_upvw = false
	local var12_upvw
	local var13_upvw = false
	local var14_upvw = 0
	local var15_upvw = false
	local function resetMotor_upvr(arg1_3, arg2_2, arg3_2) -- Line 111, Named "resetMotor"
		--[[ Upvalues[5]:
			[1]: var12_upvw (read and write)
			[2]: Otter_upvr (copied, readonly)
			[3]: var11_upvw (read and write)
			[4]: var14_upvw (read and write)
			[5]: arg1 (readonly)
		]]
		if var12_upvw then
			var12_upvw:destroy()
			var12_upvw = nil
		end
		local any_createSingleMotor_result1_upvr = Otter_upvr.createSingleMotor(arg1_3)
		var12_upvw = any_createSingleMotor_result1_upvr
		any_createSingleMotor_result1_upvr:onStep(function(arg1_4) -- Line 123
			--[[ Upvalues[7]:
				[1]: var12_upvw (copied, read and write)
				[2]: any_createSingleMotor_result1_upvr (readonly)
				[3]: var11_upvw (copied, read and write)
				[4]: var14_upvw (copied, read and write)
				[5]: arg2_2 (readonly)
				[6]: arg1_3 (readonly)
				[7]: arg1 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var18
			if var18 ~= any_createSingleMotor_result1_upvr then
				var18 = any_createSingleMotor_result1_upvr:destroy
				var18()
			else
				var18 = var11_upvw
				if var18 then
					var18 = any_createSingleMotor_result1_upvr:destroy
					var18()
					var18 = nil
					var12_upvw = var18
					return
				end
				if math.abs(arg1_4 - var14_upvw) >= 0.5 then
					var18 = false
				else
					var18 = true
				end
				if var18 then
				else
				end
				if arg2_2 and arg2_2(arg1_3, arg1_4) then return end
				if arg1.current then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					arg1.current.CanvasPosition = Vector2.new(arg1_4, 0)
				end
			end
		end)
		if arg3_2 then
			any_createSingleMotor_result1_upvr:onComplete(arg3_2)
		end
		any_createSingleMotor_result1_upvr:start()
	end
	local function setGoal_upvr(arg1_5, arg2_3, arg3_3) -- Line 156, Named "setGoal"
		--[[ Upvalues[4]:
			[1]: var12_upvw (read and write)
			[2]: var14_upvw (read and write)
			[3]: Otter_upvr (copied, readonly)
			[4]: tbl_2_upvr (copied, readonly)
		]]
		local var19
		if not var12_upvw then
		else
			if var12_upvw == nil then
				var19 = false
			else
				var19 = true
			end
			assert(var19, "setGoal called before resetMotor")
			var19 = arg1_5.X
			var14_upvw = var19 * (arg2_3 - 1)
			if arg3_3 then
				var12_upvw:setGoal(Otter_upvr.instant(var14_upvw))
				return
			end
			var12_upvw:setGoal(Otter_upvr.spring(var14_upvw, tbl_2_upvr))
		end
	end
	local var40_upvw
	local module = {}
	module.carouselRef = arg1
	function module.getWasTouched() -- Line 91
		--[[ Upvalues[1]:
			[1]: var15_upvw (read and write)
		]]
		return var15_upvw
	end
	function module.getIsNavigationLocked() -- Line 100
		--[[ Upvalues[1]:
			[1]: var13_upvw (read and write)
		]]
		return var13_upvw
	end
	function module.handleDeleteTransition(arg1_6, arg2_4, arg3_4, arg4, arg5, arg6) -- Line 171
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: var11_upvw (read and write)
			[4]: var15_upvw (read and write)
			[5]: var13_upvw (read and write)
			[6]: resetMotor_upvr (readonly)
			[7]: setGoal_upvr (readonly)
			[8]: UserGameSettings_upvr (copied, readonly)
			[9]: Otter_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		local current_10_upvr = arg1.current
		local current_7_upvr = arg2.current
		local handleDeleteNextImageMovement
		if not current_10_upvr or not current_7_upvr then
		else
			if current_10_upvr == nil then
				handleDeleteNextImageMovement = false
			else
				handleDeleteNextImageMovement = true
			end
			assert(handleDeleteNextImageMovement, "carousel should exist")
			if current_7_upvr == nil then
				handleDeleteNextImageMovement = false
				-- KONSTANTWARNING: GOTO [23] #18
			end
			-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 17. Error Block 26 start (CF ANALYSIS FAILED)
			handleDeleteNextImageMovement = true
			assert(handleDeleteNextImageMovement, "selectedItem should exist")
			local ScrollingEnabled_upvr = current_10_upvr.ScrollingEnabled
			handleDeleteNextImageMovement = false
			current_10_upvr.ScrollingEnabled = handleDeleteNextImageMovement
			handleDeleteNextImageMovement = false
			var11_upvw = handleDeleteNextImageMovement
			handleDeleteNextImageMovement = false
			var15_upvw = handleDeleteNextImageMovement
			handleDeleteNextImageMovement = true
			var13_upvw = handleDeleteNextImageMovement
			function handleDeleteNextImageMovement() -- Line 194
				--[[ Upvalues[12]:
					[1]: arg3_4 (readonly)
					[2]: current_7_upvr (readonly)
					[3]: arg4 (readonly)
					[4]: resetMotor_upvr (copied, readonly)
					[5]: current_10_upvr (readonly)
					[6]: arg6 (readonly)
					[7]: arg1_6 (readonly)
					[8]: var13_upvw (copied, read and write)
					[9]: ScrollingEnabled_upvr (readonly)
					[10]: setGoal_upvr (copied, readonly)
					[11]: arg5 (readonly)
					[12]: UserGameSettings_upvr (copied, readonly)
				]]
				resetMotor_upvr(current_10_upvr.CanvasPosition.X, function(arg1_7, arg2_5) -- Line 195, Named "onStep"
					--[[ Upvalues[3]:
						[1]: arg3_4 (copied, readonly)
						[2]: current_7_upvr (copied, readonly)
						[3]: arg4 (copied, readonly)
					]]
					local var24 = current_7_upvr
					var24.Size = UDim2.fromOffset(math.round(arg3_4.X - math.abs(arg1_7 - arg2_5)), arg3_4.Y)
					if arg4 ~= 1 then
						var24 = false
					else
						var24 = true
					end
					return var24
				end, function() -- Line 205
					--[[ Upvalues[6]:
						[1]: arg6 (copied, readonly)
						[2]: current_7_upvr (copied, readonly)
						[3]: arg1_6 (copied, readonly)
						[4]: var13_upvw (copied, read and write)
						[5]: current_10_upvr (copied, readonly)
						[6]: ScrollingEnabled_upvr (copied, readonly)
					]]
					arg6()
					current_7_upvr.Visible = false
					arg1_6(1)
					var13_upvw = false
					current_10_upvr.ScrollingEnabled = ScrollingEnabled_upvr
				end)
				local var26 = arg5
				if not var26 then
					var26 = UserGameSettings_upvr.ReducedMotion
				end
				setGoal_upvr(arg3_4, arg4 - 1, var26)
			end
			local function handleDeleteImagesFadeIn_upvr() -- Line 216, Named "handleDeleteImagesFadeIn"
				--[[ Upvalues[12]:
					[1]: arg2_4 (readonly)
					[2]: arg4 (readonly)
					[3]: resetMotor_upvr (copied, readonly)
					[4]: current_10_upvr (readonly)
					[5]: arg6 (readonly)
					[6]: current_7_upvr (readonly)
					[7]: Otter_upvr (copied, readonly)
					[8]: arg1_6 (readonly)
					[9]: var13_upvw (copied, read and write)
					[10]: ScrollingEnabled_upvr (readonly)
					[11]: setGoal_upvr (copied, readonly)
					[12]: arg3_4 (readonly)
				]]
				local var27
				if not arg2_4 then
				else
					if arg2_4 == nil then
						var27 = false
					else
						var27 = true
					end
					assert(var27, "setPostDeletionItemBinding should exist")
					var27 = resetMotor_upvr
					var27(current_10_upvr.CanvasPosition.X, function(arg1_8, arg2_6) -- Line 221
						--[[ Upvalues[1]:
							[1]: arg4 (copied, readonly)
						]]
						local var29
						if arg4 ~= 1 then
							var29 = false
						else
							var29 = true
						end
						return var29
					end, function() -- Line 225
						--[[ Upvalues[8]:
							[1]: arg6 (copied, readonly)
							[2]: current_7_upvr (copied, readonly)
							[3]: Otter_upvr (copied, readonly)
							[4]: arg1_6 (copied, readonly)
							[5]: arg2_4 (copied, readonly)
							[6]: var13_upvw (copied, read and write)
							[7]: current_10_upvr (copied, readonly)
							[8]: ScrollingEnabled_upvr (copied, readonly)
						]]
						arg6()
						current_7_upvr.Visible = false
						local any_createSingleMotor_result1_2 = Otter_upvr.createSingleMotor(0)
						any_createSingleMotor_result1_2:onStep(function(arg1_9) -- Line 229
							--[[ Upvalues[2]:
								[1]: arg1_6 (copied, readonly)
								[2]: arg2_4 (copied, readonly)
							]]
							arg1_6(arg1_9)
							arg2_4(1)
						end)
						any_createSingleMotor_result1_2:onComplete(function() -- Line 233
							--[[ Upvalues[3]:
								[1]: var13_upvw (copied, read and write)
								[2]: current_10_upvr (copied, readonly)
								[3]: ScrollingEnabled_upvr (copied, readonly)
							]]
							var13_upvw = false
							current_10_upvr.ScrollingEnabled = ScrollingEnabled_upvr
						end)
						any_createSingleMotor_result1_2:setGoal(Otter_upvr.spring(1, {
							frequency = 2;
						}))
					end)
					var27 = setGoal_upvr
					var27(arg3_4, arg4 - 1, true)
				end
			end
			local any_createSingleMotor_result1_3 = Otter_upvr.createSingleMotor(1)
			any_createSingleMotor_result1_3:onStep(arg1_6)
			if UserGameSettings_upvr.ReducedMotion then
				any_createSingleMotor_result1_3:onComplete(function() -- Line 243, Named "handleDeleteNextImageFadeOut"
					--[[ Upvalues[3]:
						[1]: arg2_4 (readonly)
						[2]: Otter_upvr (copied, readonly)
						[3]: handleDeleteImagesFadeIn_upvr (readonly)
					]]
					local var35
					if not arg2_4 then
					else
						if arg2_4 == nil then
							var35 = false
						else
							var35 = true
						end
						assert(var35, "setPostDeletionItemBinding should exist")
						var35 = Otter_upvr
						var35 = 1
						local any_createSingleMotor_result1 = var35.createSingleMotor(var35)
						var35 = any_createSingleMotor_result1:onStep
						var35(arg2_4)
						var35 = any_createSingleMotor_result1:onComplete
						var35(handleDeleteImagesFadeIn_upvr)
						var35 = any_createSingleMotor_result1:setGoal
						var35(Otter_upvr.spring(0, {
							frequency = 6;
						}))
					end
				end)
			else
				any_createSingleMotor_result1_3:onComplete(handleDeleteNextImageMovement)
			end
			any_createSingleMotor_result1_3:setGoal(Otter_upvr.spring(0, {
				frequency = 4;
			}))
			-- KONSTANTERROR: [22] 17. Error Block 26 end (CF ANALYSIS FAILED)
		end
	end
	function module.handleInertialMove(arg1_10, arg2_7) -- Line 267
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: var11_upvw (read and write)
			[3]: getClosestItemToCenter_upvr (copied, readonly)
			[4]: resetMotor_upvr (readonly)
			[5]: setGoal_upvr (readonly)
			[6]: var40_upvw (read and write)
			[7]: RunService_upvr (copied, readonly)
			[8]: arg3 (readonly)
		]]
		local current = arg1.current
		local var42
		if var11_upvw or not current then
		else
			if current == nil then
				var42 = false
			else
				var42 = true
			end
			assert(var42, "carousel should not be nil")
			var42 = current:GetSampledInertialVelocity()
			local var43_upvw = -var42.X
			current:ClearInertialScrolling()
			var42 = arg1_10
			local var6_result1, var6_result2_2 = getClosestItemToCenter_upvr(var42, current)
			if math.abs(var43_upvw) < 60 and var6_result1 == arg2_7 then
				if 0.5 < var6_result2_2 then
					resetMotor_upvr(current.CanvasPosition.X)
					setGoal_upvr(arg1_10, arg2_7, false)
				end
				return
			end
			if var40_upvw then
				var40_upvw:Disconnect()
				var40_upvw = nil
			end
			function var6_result2_2(arg1_11) -- Line 297
				--[[ Upvalues[10]:
					[1]: arg1 (copied, readonly)
					[2]: var11_upvw (copied, read and write)
					[3]: var40_upvw (copied, read and write)
					[4]: getClosestItemToCenter_upvr (copied, readonly)
					[5]: arg1_10 (readonly)
					[6]: var43_upvw (read and write)
					[7]: arg2_7 (readonly)
					[8]: resetMotor_upvr (copied, readonly)
					[9]: setGoal_upvr (copied, readonly)
					[10]: arg3 (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local current_2 = arg1.current
				local var48
				if not current_2 or var11_upvw then
					if var40_upvw == nil then
						var48 = false
					else
						var48 = true
					end
					assert(var48, "handleInertialMoveConn should exist")
					var40_upvw:Disconnect()
					var40_upvw = nil
					do
						return
					end
					local _
				end
				if current_2 == nil then
					var48 = false
				else
					var48 = true
				end
				assert(var48, "carousel should not be nil")
				local var6_result1_2, var6_result2 = getClosestItemToCenter_upvr(arg1_10, current_2)
				if math.abs(var43_upvw) < 60 then
					if var40_upvw == nil then
					else
					end
					assert(true, "handleInertialMoveConn should exist")
					var40_upvw:Disconnect()
					var40_upvw = nil
					if var6_result1_2 == arg2_7 then
						resetMotor_upvr(current_2.CanvasPosition.X)
						setGoal_upvr(arg1_10, arg2_7, false)
					else
						arg3(var6_result1_2)
					end
				end
				current_2.CanvasPosition += Vector2.new(var43_upvw * arg1_11, 0)
				local var52
				if math.abs(var43_upvw) < 120 then
					var52 = 0.7
				else
					var52 = math.max((var6_result2) / (arg1_10.X / 2) * 1.25, 0.85) * 0.95
				end
				var43_upvw *= var52 ^ (arg1_11 / (1/60))
			end
			var40_upvw = RunService_upvr.RenderStepped:Connect(var6_result2_2)
		end
	end
	function module.onInputBegan(arg1_12, arg2_8) -- Line 343
		--[[ Upvalues[3]:
			[1]: var13_upvw (read and write)
			[2]: var11_upvw (read and write)
			[3]: var15_upvw (read and write)
		]]
		if var13_upvw then
		elseif arg2_8.UserInputType == Enum.UserInputType.Touch then
			var11_upvw = true
			var15_upvw = true
		end
	end
	module.resetMotor = resetMotor_upvr
	function module.resetTouchState() -- Line 95
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: var15_upvw (read and write)
		]]
		var11_upvw = false
		var15_upvw = false
	end
	module.setGoal = setGoal_upvr
	function module.setIsNavigationLocked(arg1_2) -- Line 104
		--[[ Upvalues[3]:
			[1]: var11_upvw (read and write)
			[2]: var15_upvw (read and write)
			[3]: var13_upvw (read and write)
		]]
		if arg1_2 == true then
			var11_upvw = false
			var15_upvw = false
		end
		var13_upvw = arg1_2
	end
	module.resetMotor(0)
	return module
end
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useBinding_upvr = React_upvr.useBinding
local useIsHovered_upvr = SocialCommon.Hooks.useIsHovered
local useIsTouchDown_upvr = SocialCommon.Hooks.useIsTouchDown
local useLastInput_upvr = require(Parent_2.Responsive).useLastInput
local useEffectOnce_upvr = require(Parent_2.RoactUtils).Hooks.useEffectOnce
local useExternalEvent_upvr = require(Parent_2.UIBlox).Core.Hooks.useExternalEvent
local UserInputService_upvr = game:GetService("UserInputService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local EventNames_upvr = require(Parent.Analytics.EventNames)
local FFlagUseMediaPlayerInCarousel_upvr = require(Parent_2.SharedFlags).FFlagUseMediaPlayerInCarousel
return function(arg1, arg2, arg3) -- Line 372
	--[[ Upvalues[15]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useBinding_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useIsHovered_upvr (readonly)
		[5]: useIsTouchDown_upvr (readonly)
		[6]: useLastInput_upvr (readonly)
		[7]: createController_upvr (readonly)
		[8]: UserGameSettings_upvr (readonly)
		[9]: useEffectOnce_upvr (readonly)
		[10]: getClosestItemToCenter_upvr (readonly)
		[11]: useExternalEvent_upvr (readonly)
		[12]: UserInputService_upvr (readonly)
		[13]: ContextActionService_upvr (readonly)
		[14]: EventNames_upvr (readonly)
		[15]: FFlagUseMediaPlayerInCarousel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useBinding_upvr_result1, var56_result2_upvr = useBinding_upvr(1)
	local useBinding_upvr_result1_2, useBinding_upvr_result2_upvr = useBinding_upvr(1)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local var57_result1_upvr, var57_result2_upvr, var57_result3_upvr = useIsHovered_upvr()
	local useIsTouchDown_upvr_result1_upvr = useIsTouchDown_upvr()
	local any_useRef_result1 = React_upvr.useRef(nil)
	local var88
	if any_useRef_result1.current == nil then
		var88 = React_upvr.useRef(nil)
		any_useRef_result1.current = createController_upvr(any_useRef_result1_upvr, var88, arg3)
	end
	local current_3_upvr = any_useRef_result1.current
	if current_3_upvr == nil then
		var88 = false
	else
		var88 = true
	end
	assert(var88, "carouselController should exist")
	var88 = React_upvr
	function var88() -- Line 392
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
			[3]: current_3_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: arg2 (readonly)
		]]
		local current_9 = any_useRef_result1_upvr.current
		local var80
		if not current_9 then
		else
			if current_9 == nil then
				var80 = false
			else
				var80 = true
			end
			assert(var80, "carousel should exist")
			local var81 = false
			var80 = UserGameSettings_upvr.ReducedMotion
			if var80 then
				var81 = true
			end
			var80 = current_3_upvr.resetMotor
			var80(current_9.CanvasPosition.X)
			var80 = current_3_upvr.setGoal
			var80(arg1, arg2, var81)
		end
	end
	local tbl = {}
	tbl[1] = arg2
	var88.useEffect(var88, tbl)
	function var88() -- Line 410
		--[[ Upvalues[3]:
			[1]: current_3_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		current_3_upvr.setGoal(arg1, arg2, true)
	end
	if arg2 == nil then
	else
	end
	useEffectOnce_upvr(var88, true)
	var88 = React_upvr
	function var88() -- Line 416
		--[[ Upvalues[3]:
			[1]: current_3_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		current_3_upvr.setGoal(arg1, arg2, true)
	end
	local tbl_3 = {}
	tbl_3[1] = arg1
	var88.useEffect(var88, tbl_3)
	var88 = React_upvr
	function var88() -- Line 421
		--[[ Upvalues[4]:
			[1]: useIsTouchDown_upvr_result1_upvr (readonly)
			[2]: current_3_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		if not useIsTouchDown_upvr_result1_upvr and current_3_upvr.getWasTouched() then
			current_3_upvr.resetTouchState()
			current_3_upvr.handleInertialMove(arg1, arg2)
		end
	end
	var88.useEffect(var88, {useIsTouchDown_upvr_result1_upvr})
	var88 = React_upvr
	function var88(arg1_13) -- Line 428
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: current_3_upvr (readonly)
			[3]: getClosestItemToCenter_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: var57_result1_upvr (readonly)
			[6]: arg3 (readonly)
		]]
		local current_4 = any_useRef_result1_upvr.current
		local var92
		if not current_4 then
		else
			if current_4 == nil then
				var92 = false
			else
				var92 = true
			end
			assert(var92, "carousel should exist")
			var92 = current_3_upvr
			if var92.getIsNavigationLocked() then return end
			var92 = arg1
			var92 = var57_result1_upvr
			if var92 then
				var92 = 0
				if var92 < arg1_13 then
					var92 = arg3
					var92(getClosestItemToCenter_upvr(var92, current_4) - 1)
					return
				end
			end
			var92 = var57_result1_upvr
			if var92 then
				var92 = 0
				if arg1_13 < var92 then
					var92 = arg3
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var92(getClosestItemToCenter_upvr(var92, current_4) + 1)
				end
			end
		end
	end
	local tbl_4 = {var57_result1_upvr}
	tbl_4[2] = arg1
	var88 = useExternalEvent_upvr
	var88(UserInputService_upvr.PointerAction, var88.useCallback(var88, tbl_4))
	var88 = React_upvr.useCallback
	var88 = var88(function(arg1_14) -- Line 449
		--[[ Upvalues[6]:
			[1]: UserGameSettings_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: current_3_upvr (readonly)
			[4]: getClosestItemToCenter_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: arg3 (readonly)
		]]
		local var95
		if not UserGameSettings_upvr.ReducedMotion then
		else
			local current_6 = any_useRef_result1_upvr.current
			if not current_6 then return end
			if current_6 == nil then
				var95 = false
			else
				var95 = true
			end
			assert(var95, "carousel should exist")
			var95 = current_3_upvr
			if var95.getIsNavigationLocked() then return end
			var95 = arg1
			local getClosestItemToCenter_upvr_result1 = getClosestItemToCenter_upvr(var95, current_6)
			var95 = Enum.SwipeDirection.Left
			if arg1_14 == var95 then
				var95 = arg3
				var95(getClosestItemToCenter_upvr_result1 + 1)
				return
			end
			var95 = Enum.SwipeDirection.Right
			if arg1_14 == var95 then
				var95 = arg3
				var95(getClosestItemToCenter_upvr_result1 - 1)
			end
		end
	end, {})
	useExternalEvent_upvr(UserInputService_upvr.TouchSwipe, var88)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	React_upvr.useEffect(function() -- Line 473
		--[[ Upvalues[8]:
			[1]: ContextActionService_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: current_3_upvr (readonly)
			[4]: useAnalytics_upvr_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: getClosestItemToCenter_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: arg3 (readonly)
		]]
		ContextActionService_upvr:BindCoreAction("CapturesCarouselNavigateShortcutAction", function(arg1_15, arg2_9, arg3_5) -- Line 474
			--[[ Upvalues[7]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: current_3_upvr (copied, readonly)
				[3]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[4]: EventNames_upvr (copied, readonly)
				[5]: getClosestItemToCenter_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
				[7]: arg3 (copied, readonly)
			]]
			local current_8 = any_useRef_result1_upvr.current
			local var102
			if not current_8 then
			else
				if current_8 == nil then
					var102 = false
				else
					var102 = true
				end
				assert(var102, "carousel should exist")
				var102 = current_3_upvr
				if var102.getIsNavigationLocked() then return end
				if arg2_9 == Enum.UserInputState.End then
					var102 = useAnalytics_upvr_result1_upvr
					var102 = EventNames_upvr.CapturesCarouselNavigatedByKeyboard
					var102.fireEvent(var102)
					var102 = arg1
					local getClosestItemToCenter_upvr_result1_2 = getClosestItemToCenter_upvr(var102, current_8)
					var102 = arg3_5.KeyCode
					if var102 == Enum.KeyCode.Left then
						var102 = arg3
						var102(getClosestItemToCenter_upvr_result1_2 - 1)
						return
					end
					var102 = arg3_5.KeyCode
					if var102 == Enum.KeyCode.Right then
						var102 = arg3
						var102(getClosestItemToCenter_upvr_result1_2 + 1)
					end
				end
			end
		end, false, Enum.KeyCode.Left, Enum.KeyCode.Right)
		return function() -- Line 496
			--[[ Upvalues[1]:
				[1]: ContextActionService_upvr (copied, readonly)
			]]
			ContextActionService_upvr:UnbindCoreAction("CapturesCarouselNavigateShortcutAction")
		end
	end, {})
	local var59_result1_upvr = useLastInput_upvr()
	local tbl_5 = {}
	tbl_5[1] = arg1
	tbl_5[2] = arg2
	tbl_5[3] = var56_result2_upvr
	return {
		carouselInputBegan = React_upvr.useCallback(function(arg1_16, arg2_10) -- Line 501
			--[[ Upvalues[3]:
				[1]: current_3_upvr (readonly)
				[2]: UserGameSettings_upvr (copied, readonly)
				[3]: var57_result2_upvr (readonly)
			]]
			if current_3_upvr.getIsNavigationLocked() then
			else
				if UserGameSettings_upvr.ReducedMotion then
					var57_result2_upvr(arg1_16, arg2_10)
					return
				end
				current_3_upvr.onInputBegan(arg1_16, arg2_10)
				var57_result2_upvr(arg1_16, arg2_10)
			end
		end, {current_3_upvr.onInputBegan, var57_result2_upvr});
		carouselInputEnded = React_upvr.useCallback(function(arg1_17, arg2_11) -- Line 515
			--[[ Upvalues[4]:
				[1]: FFlagUseMediaPlayerInCarousel_upvr (copied, readonly)
				[2]: var59_result1_upvr (readonly)
				[3]: current_3_upvr (readonly)
				[4]: var57_result3_upvr (readonly)
			]]
			if FFlagUseMediaPlayerInCarousel_upvr and var59_result1_upvr == "Touch" and not current_3_upvr.getWasTouched() then
				current_3_upvr.onInputBegan(arg1_17, arg2_11)
			end
			var57_result3_upvr(arg1_17, arg2_11)
		end, {var57_result3_upvr});
		carouselRef = any_useRef_result1_upvr;
		deleteSelectedItem = React_upvr.useCallback(function(arg1_18) -- Line 522
			--[[ Upvalues[5]:
				[1]: current_3_upvr (readonly)
				[2]: var56_result2_upvr (readonly)
				[3]: useBinding_upvr_result2_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: arg2 (readonly)
			]]
			current_3_upvr.handleDeleteTransition(var56_result2_upvr, useBinding_upvr_result2_upvr, arg1, arg2, false, arg1_18)
		end, tbl_5);
		postDeletionItemBinding = useBinding_upvr_result1_2;
		selectedItemFadeOutBinding = useBinding_upvr_result1;
		selectedItemRef = React_upvr.useRef(nil);
		setIsNavigationLocked = current_3_upvr.setIsNavigationLocked;
	}
end