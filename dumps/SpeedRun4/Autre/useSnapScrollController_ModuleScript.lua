-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:43
-- Luau version 6, Types version 3
-- Time taken: 0.007493 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local ReactOtter_upvr = require(Parent_2.ReactOtter)
local useRef_upvr = React_upvr.useRef
local useState_upvr = React_upvr.useState
local useCallback_upvr = React_upvr.useCallback
local useMotor_upvr = ReactOtter_upvr.useMotor
local NavigationType_upvr = require(Parent.Enums.NavigationType)
local useEffect_upvr = React_upvr.useEffect
local useExternalEvent_upvr = require(Parent_2.UIBlox).Core.Hooks.useExternalEvent
local UserInputService_upvr = game:GetService("UserInputService")
local isPointWithinBounds_upvr = require(Parent.Utils.isPointWithinBounds)
return function(arg1, arg2, arg3, arg4) -- Line 26, Named "useSnapScrollController"
	--[[ Upvalues[11]:
		[1]: useRef_upvr (readonly)
		[2]: useState_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: useMotor_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
		[7]: NavigationType_upvr (readonly)
		[8]: useEffect_upvr (readonly)
		[9]: useExternalEvent_upvr (readonly)
		[10]: UserInputService_upvr (readonly)
		[11]: isPointWithinBounds_upvr (readonly)
	]]
	local var5_result1_upvr_2 = useRef_upvr(nil)
	local var6_result1_upvr, var6_result2_upvr = useState_upvr(arg2)
	local var5_result1_upvr_3 = useRef_upvr(nil)
	local var5_result1_upvr = useRef_upvr(false)
	local useRef_upvr_result1_upvr = useRef_upvr(nil)
	local useRef_upvr_result1_upvr_3 = useRef_upvr(nil)
	local useRef_upvr_result1_upvr_2 = useRef_upvr(nil)
	local var5_result1_upvr_4 = useRef_upvr(false)
	local var8_result1_upvr = useMotor_upvr((arg2 - 1) * -arg3.Y, useCallback_upvr(function(arg1_2) -- Line 42
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr_3 (readonly)
		]]
		if not var5_result1_upvr_3.current then
		else
			var5_result1_upvr_3.current.Position = UDim2.new(0.5, 0, 0, arg1_2)
		end
	end, {}), useCallback_upvr(function() -- Line 50
		--[[ Upvalues[1]:
			[1]: var5_result1_upvr (readonly)
		]]
		var5_result1_upvr.current = false
	end, {}))
	local tbl_6 = {}
	tbl_6[1] = arg1
	tbl_6[2] = arg3
	tbl_6[3] = arg4
	tbl_6[4] = var8_result1_upvr
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3, arg2_2) -- Line 57
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr_3 (readonly)
			[3]: var5_result1_upvr_2 (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: var5_result1_upvr_4 (readonly)
			[6]: arg4 (readonly)
			[7]: arg3 (readonly)
			[8]: var8_result1_upvr (readonly)
			[9]: ReactOtter_upvr (copied, readonly)
			[10]: var6_result2_upvr (readonly)
		]]
		local var27
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var27 = var5_result1_upvr_3
			return var27.current
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var27 = var5_result1_upvr_2
			return var27.current
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var27 = var5_result1_upvr
			return var27.current
		end
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var27 = var5_result1_upvr_4
			return var27.current
		end
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var27 = 1
			return arg4 < var27
		end
		if not arg1 or not INLINED() or not INLINED_2() or INLINED_3() or INLINED_4() or INLINED_5() then
		else
			if var5_result1_upvr_3.current == nil then
				var27 = false
			else
				var27 = true
			end
			assert(var27, "motionRef.current is nil")
			var27 = true
			var5_result1_upvr.current = var27
			var27 = arg1_3
			local clamped = math.clamp(var27, 1, arg4)
			var27 = (clamped - 1) * -arg3.Y
			if arg2_2 then
				var8_result1_upvr(ReactOtter_upvr.instant(var27))
			else
				var8_result1_upvr(ReactOtter_upvr.spring(var27, {
					frequency = 8;
				}))
			end
			var6_result2_upvr(clamped)
		end
	end, tbl_6)
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_4, arg2_3) -- Line 86
		--[[ Upvalues[3]:
			[1]: NavigationType_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr (readonly)
			[3]: var6_result1_upvr (readonly)
		]]
		if arg1_4 == NavigationType_upvr.Previous then
			any_useCallback_result1_upvr(var6_result1_upvr - 1, arg2_3)
		else
			if arg1_4 == NavigationType_upvr.Next then
				any_useCallback_result1_upvr(var6_result1_upvr + 1, arg2_3)
				return
			end
			any_useCallback_result1_upvr(var6_result1_upvr, arg2_3)
		end
	end, {var6_result1_upvr, any_useCallback_result1_upvr})
	local var5_result1_upvr_5 = useRef_upvr(nil)
	local tbl_3 = {}
	tbl_3[1] = arg3
	tbl_3[2] = any_useCallback_result1_upvr_2
	useEffect_upvr(function() -- Line 96
		--[[ Upvalues[6]:
			[1]: var5_result1_upvr_3 (readonly)
			[2]: var5_result1_upvr_5 (readonly)
			[3]: arg3 (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: any_useCallback_result1_upvr_2 (readonly)
			[6]: NavigationType_upvr (copied, readonly)
		]]
		if not var5_result1_upvr_3.current or var5_result1_upvr_5.current == arg3 then
		else
			var5_result1_upvr.current = false
			any_useCallback_result1_upvr_2(NavigationType_upvr.Current, true)
			var5_result1_upvr_5.current = arg3
		end
	end, tbl_3)
	useExternalEvent_upvr(UserInputService_upvr.TouchPinch, React_upvr.useCallback(function(arg1_5, arg2_4, arg3_2, arg4_2, arg5) -- Line 106
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr_2 (readonly)
			[2]: NavigationType_upvr (copied, readonly)
			[3]: var5_result1_upvr_4 (readonly)
			[4]: useRef_upvr_result1_upvr_3 (readonly)
		]]
		if arg4_2 == Enum.UserInputState.Begin then
			any_useCallback_result1_upvr_2(NavigationType_upvr.Current)
			var5_result1_upvr_4.current = true
		elseif arg4_2 == Enum.UserInputState.End then
			var5_result1_upvr_4.current = false
			useRef_upvr_result1_upvr_3.current = nil
		end
	end, {any_useCallback_result1_upvr_2}))
	local tbl_5 = {}
	tbl_5[1] = arg1
	tbl_5[2] = var8_result1_upvr
	useExternalEvent_upvr(UserInputService_upvr.TouchStarted, React_upvr.useCallback(function(arg1_6) -- Line 118
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr_3 (readonly)
			[3]: var5_result1_upvr_2 (readonly)
			[4]: useRef_upvr_result1_upvr_3 (readonly)
			[5]: isPointWithinBounds_upvr (copied, readonly)
			[6]: useRef_upvr_result1_upvr (readonly)
			[7]: useRef_upvr_result1_upvr_2 (readonly)
			[8]: var8_result1_upvr (readonly)
			[9]: ReactOtter_upvr (copied, readonly)
		]]
		if not arg1 or not var5_result1_upvr_3.current or not var5_result1_upvr_2.current or useRef_upvr_result1_upvr_3.current then
		else
			if not isPointWithinBounds_upvr(Vector2.new(arg1_6.Position.X, arg1_6.Position.Y), var5_result1_upvr_2.current.AbsolutePosition, var5_result1_upvr_2.current.AbsoluteSize) then return end
			useRef_upvr_result1_upvr.current = var5_result1_upvr_3.current.Position.Y.Offset
			useRef_upvr_result1_upvr_2.current = arg1_6.Position.Y
			useRef_upvr_result1_upvr_3.current = arg1_6
			var8_result1_upvr(ReactOtter_upvr.instant(var5_result1_upvr_3.current.Position.Y.Offset))
		end
	end, tbl_5))
	local tbl_4 = {}
	tbl_4[1] = arg1
	tbl_4[2] = arg3
	tbl_4[3] = arg4
	tbl_4[4] = var8_result1_upvr
	useExternalEvent_upvr(UserInputService_upvr.TouchMoved, React_upvr.useCallback(function(arg1_7) -- Line 140
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr_3 (readonly)
			[3]: var5_result1_upvr_2 (readonly)
			[4]: useRef_upvr_result1_upvr_3 (readonly)
			[5]: useRef_upvr_result1_upvr (readonly)
			[6]: useRef_upvr_result1_upvr_2 (readonly)
			[7]: var5_result1_upvr_4 (readonly)
			[8]: arg4 (readonly)
			[9]: arg3 (readonly)
			[10]: var8_result1_upvr (readonly)
			[11]: ReactOtter_upvr (copied, readonly)
		]]
		if not arg1 or not var5_result1_upvr_3.current or not var5_result1_upvr_2.current or useRef_upvr_result1_upvr_3.current ~= arg1_7 or not useRef_upvr_result1_upvr.current or not useRef_upvr_result1_upvr_2.current or var5_result1_upvr_4.current then
		else
			var8_result1_upvr(ReactOtter_upvr.instant(math.clamp((useRef_upvr_result1_upvr.current) + (arg1_7.Position.Y - useRef_upvr_result1_upvr_2.current), (arg4 - 1) * -arg3.Y - 100, 100)))
		end
	end, tbl_4))
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = any_useCallback_result1_upvr_2
	useExternalEvent_upvr(UserInputService_upvr.TouchSwipe, React_upvr.useCallback(function(arg1_8) -- Line 166
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr_3 (readonly)
			[3]: var5_result1_upvr_2 (readonly)
			[4]: useRef_upvr_result1_upvr_3 (readonly)
			[5]: var5_result1_upvr_4 (readonly)
			[6]: var5_result1_upvr (readonly)
			[7]: any_useCallback_result1_upvr_2 (readonly)
			[8]: NavigationType_upvr (copied, readonly)
		]]
		if not arg1 or not var5_result1_upvr_3.current or not var5_result1_upvr_2.current or not useRef_upvr_result1_upvr_3.current or var5_result1_upvr_4.current or var5_result1_upvr.current then
		else
			if arg1_8 == Enum.SwipeDirection.Up then
				any_useCallback_result1_upvr_2(NavigationType_upvr.Next)
				return
			end
			if arg1_8 == Enum.SwipeDirection.Down then
				any_useCallback_result1_upvr_2(NavigationType_upvr.Previous)
				return
			end
			any_useCallback_result1_upvr_2(NavigationType_upvr.Current)
		end
	end, tbl_2))
	local tbl_7 = {}
	tbl_7[1] = arg1
	tbl_7[2] = arg3
	tbl_7[3] = any_useCallback_result1_upvr_2
	useExternalEvent_upvr(UserInputService_upvr.TouchEnded, React_upvr.useCallback(function(arg1_9) -- Line 190
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr_3 (readonly)
			[3]: var5_result1_upvr_2 (readonly)
			[4]: useRef_upvr_result1_upvr_3 (readonly)
			[5]: useRef_upvr_result1_upvr (readonly)
			[6]: var5_result1_upvr (readonly)
			[7]: arg3 (readonly)
			[8]: any_useCallback_result1_upvr_2 (readonly)
			[9]: NavigationType_upvr (copied, readonly)
		]]
		if not arg1 or not var5_result1_upvr_3.current or not var5_result1_upvr_2.current or useRef_upvr_result1_upvr_3.current ~= arg1_9 or not useRef_upvr_result1_upvr.current or var5_result1_upvr.current then
		else
			local var47 = var5_result1_upvr_3.current.Position.Y.Offset - useRef_upvr_result1_upvr.current
			if arg3.Y * 0.25 < -var47 then
				any_useCallback_result1_upvr_2(NavigationType_upvr.Next)
			elseif arg3.Y * 0.25 < var47 then
				any_useCallback_result1_upvr_2(NavigationType_upvr.Previous)
			else
				any_useCallback_result1_upvr_2(NavigationType_upvr.Current)
			end
			useRef_upvr_result1_upvr_3.current = nil
			useRef_upvr_result1_upvr.current = nil
		end
	end, tbl_7))
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = any_useCallback_result1_upvr_2
	useExternalEvent_upvr(UserInputService_upvr.PointerAction, React_upvr.useCallback(function(arg1_10, arg2_5) -- Line 218
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useCallback_result1_upvr_2 (readonly)
			[3]: NavigationType_upvr (copied, readonly)
		]]
		if not arg1 then
		else
			if arg1_10 < 0 or arg2_5.Y < -0.1 then
				any_useCallback_result1_upvr_2(NavigationType_upvr.Next)
				return
			end
			if 0 < arg1_10 or 0.1 < arg2_5.Y then
				any_useCallback_result1_upvr_2(NavigationType_upvr.Previous)
			end
		end
	end, tbl))
	return var6_result1_upvr, var5_result1_upvr_2, var5_result1_upvr_3, any_useCallback_result1_upvr, any_useCallback_result1_upvr_2
end