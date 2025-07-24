-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:51
-- Luau version 6, Types version 3
-- Time taken: 0.017504 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local React = require(Parent_2.React)
local ReactOtter_upvr = require(Parent_2.ReactOtter)
local SnapDirection_upvr = require(Parent.Enums.SnapDirection)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("UpdateCaptureControlsForFoundationStyling", false)
local tbl_10_upvr = {
	x = 0.5;
	y = 0.5;
}
local tbl_9_upvr = {
	xOffset = -100;
	yOffset = -100;
}
local tbl_6_upvr = {
	duration = 0.4;
	easingStyle = {0.19, 1, 0.22, 1};
}
local function validateRefs_upvr(arg1) -- Line 34, Named "validateRefs"
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
	]]
	for _, v in arg1 do
		if v.current == nil then
			return false
		end
		if game_DefineFastFlag_result1_upvr_2 and (v.current.AbsoluteSize.X <= 0 or v.current.AbsoluteSize.Y <= 0) then
			return false
		end
	end
	return true
end
local function clampItemPosition_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 51, Named "clampItemPosition"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13 = arg1 - arg3
	local var14
	if var13.X + arg2.X < arg5.X and var13.Y < arg5.Y then
		local Y = arg5.Y
	elseif var13.Y < arg5.Y then
		var14 = arg5.X
	end
	local var16 = var14
	if arg2.X < arg4.X - var14 then
		var16 = math.clamp(var13.X, var14, arg4.X - arg2.X)
	end
	if arg2.Y < arg4.Y - Y then
	end
	return Vector2.new(var16, math.clamp(var13.Y, Y, arg4.Y - arg2.Y))
end
local function getSnapPosition_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 79, Named "getSnapPosition"
	--[[ Upvalues[1]:
		[1]: clampItemPosition_upvr (readonly)
	]]
	return clampItemPosition_upvr(Vector2.new(arg4.X * arg5.X, arg4.Y * arg5.Y) - Vector2.new(arg1.X * arg2.X, arg1.Y * arg2.Y) + arg3, arg1, arg3, arg4, arg6)
end
local function getSnapAnchorPoint_upvr(arg1, arg2, arg3, arg4) -- Line 106, Named "getSnapAnchorPoint"
	local var17_upvr = arg1 - arg2
	local tbl = {Vector2.new(0, math.max(var17_upvr.Y, arg4.Y)), Vector2.new(arg3.X, var17_upvr.Y), Vector2.new(math.max(var17_upvr.X, arg4.X), 0), Vector2.new(var17_upvr.X, arg3.Y)}
	table.sort(tbl, function(arg1_2, arg2_2) -- Line 121
		--[[ Upvalues[1]:
			[1]: var17_upvr (readonly)
		]]
		local var20
		if (arg1_2 - var17_upvr).Magnitude >= (arg2_2 - var17_upvr).Magnitude then
			var20 = false
		else
			var20 = true
		end
		return var20
	end)
	local _1 = tbl[1]
	return _1 / arg3, (_1 - var17_upvr).Magnitude
end
local function _(arg1) -- Line 130, Named "getSnapDirectionFromAnchorPoint"
	--[[ Upvalues[1]:
		[1]: SnapDirection_upvr (readonly)
	]]
	if arg1.X == 0 then
		return SnapDirection_upvr.Left
	end
	if arg1.X == 1 then
		return SnapDirection_upvr.Right
	end
	if arg1.Y == 0 then
		return SnapDirection_upvr.Top
	end
	return SnapDirection_upvr.Bottom
end
local function _(arg1, arg2) -- Line 142, Named "getShouldRotate"
	local var22 = true
	local var23
	if var23 ~= 0 then
		var23 = arg2.X
		if var23 ~= 1 then
			var22 = false
		else
			var22 = true
		end
	end
	var23 = true
	if arg2.Y ~= 0 then
		if arg2.Y ~= 1 then
			var23 = false
		else
			var23 = true
		end
	end
	if var22 and var23 then
		return false
	end
	if var23 and not arg1 then
		do
			return true
		end
		local var24
	end
	if var22 and arg1 then
	end
	return nil
end
local useRef_upvr = React.useRef
local CaptureControlsConfiguration_upvr = require(Parent.Utils.CaptureControlsConfiguration)
local useState_upvr = React.useState
local vector2_3_upvr = Vector2.new(1, 0.5)
local Right_upvr = SnapDirection_upvr.Right
local useGuiInset_upvr = require(Parent_2.CapturesCommon).Hooks.useGuiInset
local useDeviceInsets_upvr = require(Parent_2.Responsive).useDeviceInsets
local useCallback_upvr = React.useCallback
local useAnimatedBinding_upvr = ReactOtter_upvr.useAnimatedBinding
local useEffect_upvr = React.useEffect
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UpdateCaptureControlsPositionMemory", false)
return function(arg1, arg2, arg3) -- Line 158, Named "useCaptureControlsController"
	--[[ Upvalues[21]:
		[1]: useRef_upvr (readonly)
		[2]: CaptureControlsConfiguration_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: vector2_3_upvr (readonly)
		[5]: Right_upvr (readonly)
		[6]: useGuiInset_upvr (readonly)
		[7]: useDeviceInsets_upvr (readonly)
		[8]: useCallback_upvr (readonly)
		[9]: useAnimatedBinding_upvr (readonly)
		[10]: tbl_10_upvr (readonly)
		[11]: tbl_9_upvr (readonly)
		[12]: useEffect_upvr (readonly)
		[13]: game_DefineFastFlag_result1_upvr (readonly)
		[14]: validateRefs_upvr (readonly)
		[15]: SnapDirection_upvr (readonly)
		[16]: getSnapAnchorPoint_upvr (readonly)
		[17]: ReactOtter_upvr (readonly)
		[18]: tbl_6_upvr (readonly)
		[19]: clampItemPosition_upvr (readonly)
		[20]: getSnapPosition_upvr (readonly)
		[21]: game_DefineFastFlag_result1_upvr_2 (readonly)
	]]
	local useRef_upvr_result1_upvr_2 = useRef_upvr(arg2)
	local useRef_upvr_result1_upvr = useRef_upvr(nil)
	local useRef_upvr_result1_upvr_5 = useRef_upvr(nil)
	local useRef_upvr_result1_upvr_7 = useRef_upvr(nil)
	local useRef_upvr_result1_upvr_6 = useRef_upvr(false)
	local useRef_upvr_result1_upvr_3 = useRef_upvr(CaptureControlsConfiguration_upvr.getStoredSnapAnchorPoint())
	local useState_upvr_result1_upvr, useState_upvr_result2_upvr_2 = useState_upvr(vector2_3_upvr)
	local var27_result1_3_upvr, useState_upvr_result2_upvr = useState_upvr(false)
	local var27_result1_2_upvr, var27_result2_upvr_2 = useState_upvr(false)
	local var27_result1, var27_result2_upvr = useState_upvr(Right_upvr)
	local var30_result1_upvr = useGuiInset_upvr()
	local var31_result1_upvr = useDeviceInsets_upvr()
	local var33_result1, var33_result2_upvr = useAnimatedBinding_upvr(tbl_10_upvr)
	local useAnimatedBinding_upvr_result1, useAnimatedBinding_upvr_result2_upvr = useAnimatedBinding_upvr(tbl_9_upvr, useCallback_upvr(function() -- Line 175
		--[[ Upvalues[1]:
			[1]: useRef_upvr_result1_upvr_6 (readonly)
		]]
		useRef_upvr_result1_upvr_6.current = false
	end, {}))
	local useRef_upvr_result1_upvr_4 = useRef_upvr(false)
	local tbl_14 = {}
	tbl_14[1] = arg1
	tbl_14[2] = arg2
	tbl_14[3] = arg3
	tbl_14[4] = var33_result2_upvr
	tbl_14[5] = useAnimatedBinding_upvr_result2_upvr
	useEffect_upvr(function() -- Line 185
		--[[ Upvalues[23]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: useRef_upvr_result1_upvr_4 (readonly)
			[3]: useRef_upvr_result1_upvr_2 (readonly)
			[4]: arg2 (readonly)
			[5]: arg1 (readonly)
			[6]: validateRefs_upvr (copied, readonly)
			[7]: useRef_upvr_result1_upvr_7 (readonly)
			[8]: useRef_upvr_result1_upvr (readonly)
			[9]: useRef_upvr_result1_upvr_3 (readonly)
			[10]: arg3 (readonly)
			[11]: useState_upvr_result2_upvr_2 (readonly)
			[12]: var27_result2_upvr (readonly)
			[13]: SnapDirection_upvr (copied, readonly)
			[14]: var27_result1_2_upvr (readonly)
			[15]: getSnapAnchorPoint_upvr (copied, readonly)
			[16]: var33_result2_upvr (readonly)
			[17]: ReactOtter_upvr (copied, readonly)
			[18]: tbl_6_upvr (copied, readonly)
			[19]: var27_result2_upvr_2 (readonly)
			[20]: vector2_3_upvr (copied, readonly)
			[21]: clampItemPosition_upvr (copied, readonly)
			[22]: getSnapPosition_upvr (copied, readonly)
			[23]: useAnimatedBinding_upvr_result2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 121 start (CF ANALYSIS FAILED)
		local function INLINED() -- Internal function, doesn't exist in bytecode
			tbl_2[2] = useRef_upvr_result1_upvr
			tbl_2[1] = useRef_upvr_result1_upvr_7
			local tbl_2 = {}
			return validateRefs_upvr(tbl_2)
		end
		if not arg1 or not INLINED() then
			-- KONSTANTERROR: [23] 19. Error Block 7 start (CF ANALYSIS FAILED)
			do
				return
			end
			-- KONSTANTERROR: [23] 19. Error Block 7 end (CF ANALYSIS FAILED)
		end
		-- KONSTANTERROR: [12] 10. Error Block 121 end (CF ANALYSIS FAILED)
	end, tbl_14)
	local tbl_15 = {}
	tbl_15[1] = arg1
	tbl_15[2] = arg2
	tbl_15[3] = useState_upvr_result1_upvr
	tbl_15[4] = var27_result1_3_upvr
	tbl_15[5] = arg3
	tbl_15[6] = useAnimatedBinding_upvr_result2_upvr
	local var32_result1_upvr = useCallback_upvr(function() -- Line 295
		--[[ Upvalues[15]:
			[1]: arg1 (readonly)
			[2]: useRef_upvr_result1_upvr_6 (readonly)
			[3]: validateRefs_upvr (copied, readonly)
			[4]: useRef_upvr_result1_upvr_7 (readonly)
			[5]: useRef_upvr_result1_upvr (readonly)
			[6]: useRef_upvr_result1_upvr_3 (readonly)
			[7]: arg3 (readonly)
			[8]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[9]: vector2_3_upvr (copied, readonly)
			[10]: clampItemPosition_upvr (copied, readonly)
			[11]: arg2 (readonly)
			[12]: getSnapPosition_upvr (copied, readonly)
			[13]: useState_upvr_result1_upvr (readonly)
			[14]: useAnimatedBinding_upvr_result2_upvr (readonly)
			[15]: ReactOtter_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
		local var62
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var62 = useRef_upvr_result1_upvr_6
			return var62.current
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var62[2] = useRef_upvr_result1_upvr
			var62[1] = useRef_upvr_result1_upvr_7
			var62 = {}
			return validateRefs_upvr(var62)
		end
		if not arg1 or INLINED_2() or not INLINED_3() then
		else
			if useRef_upvr_result1_upvr_7.current == nil then
				var62 = false
			else
				var62 = true
			end
			assert(var62, "dragItemRef is nil")
			if useRef_upvr_result1_upvr.current == nil then
				var62 = false
				-- KONSTANTWARNING: GOTO [36] #28
			end
			-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [35] 27. Error Block 31 start (CF ANALYSIS FAILED)
			var62 = true
			assert(var62, "dragContainerRef is nil")
			var62 = useRef_upvr_result1_upvr_7.current
			local AbsoluteSize = var62.AbsoluteSize
			var62 = useRef_upvr_result1_upvr_7.current.AbsolutePosition
			local AnchorPoint = useRef_upvr_result1_upvr_7.current.AnchorPoint
			local var65
			if arg3 and game_DefineFastFlag_result1_upvr_2 and useRef_upvr_result1_upvr_3.current ~= vector2_3_upvr then
				var65 = clampItemPosition_upvr(var62, AbsoluteSize, useRef_upvr_result1_upvr.current.AbsolutePosition, useRef_upvr_result1_upvr.current.AbsoluteSize, arg2)
			else
				var65 = getSnapPosition_upvr(AbsoluteSize, AnchorPoint, useRef_upvr_result1_upvr.current.AbsolutePosition, useRef_upvr_result1_upvr.current.AbsoluteSize, useState_upvr_result1_upvr, arg2)
			end
			local vector2_5 = Vector2.new(AbsoluteSize.X * AnchorPoint.X, AbsoluteSize.Y * AnchorPoint.Y)
			useAnimatedBinding_upvr_result2_upvr({
				xOffset = ReactOtter_upvr.instant(var65.X + vector2_5.X);
				yOffset = ReactOtter_upvr.instant(var65.Y + vector2_5.Y);
			})
			-- KONSTANTERROR: [35] 27. Error Block 31 end (CF ANALYSIS FAILED)
		end
	end, tbl_15)
	local tbl_3 = {}
	tbl_3[1] = arg1
	tbl_3[2] = arg2
	tbl_3[3] = clampItemPosition_upvr
	tbl_3[4] = var31_result1_upvr
	tbl_3[5] = var30_result1_upvr
	tbl_3[6] = var27_result1_3_upvr
	tbl_3[7] = var27_result1_2_upvr
	tbl_3[8] = useAnimatedBinding_upvr_result2_upvr
	tbl_3[9] = var33_result2_upvr
	local var32_result1_upvr_3 = useCallback_upvr(function(arg1_3) -- Line 343
		--[[ Upvalues[14]:
			[1]: arg1 (readonly)
			[2]: var27_result1_3_upvr (readonly)
			[3]: validateRefs_upvr (copied, readonly)
			[4]: useRef_upvr_result1_upvr (readonly)
			[5]: useRef_upvr_result1_upvr_7 (readonly)
			[6]: var30_result1_upvr (readonly)
			[7]: var31_result1_upvr (readonly)
			[8]: useState_upvr_result2_upvr (readonly)
			[9]: clampItemPosition_upvr (copied, readonly)
			[10]: arg2 (readonly)
			[11]: var27_result1_2_upvr (readonly)
			[12]: var33_result2_upvr (readonly)
			[13]: ReactOtter_upvr (copied, readonly)
			[14]: useAnimatedBinding_upvr_result2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
		local var71
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var71[2] = useRef_upvr_result1_upvr_7
			var71[1] = useRef_upvr_result1_upvr
			var71 = {}
			return validateRefs_upvr(var71)
		end
		if not arg1 or var27_result1_3_upvr or not INLINED_4() then return end
		if useRef_upvr_result1_upvr_7.current == nil then
			var71 = false
		else
			var71 = true
		end
		assert(var71, "dragItemRef is nil")
		if useRef_upvr_result1_upvr.current == nil then
			var71 = false
			-- KONSTANTWARNING: GOTO [34] #27
		end
		-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [33] 26. Error Block 36 start (CF ANALYSIS FAILED)
		var71 = true
		assert(var71, "dragContainerRef is nil")
		var71 = Vector2.new(var30_result1_upvr.left + var31_result1_upvr.left, var30_result1_upvr.top + var31_result1_upvr.top)
		var71 = useState_upvr_result2_upvr
		var71(true)
		var71 = useRef_upvr_result1_upvr_7.current.AbsoluteSize
		local _ = useRef_upvr_result1_upvr_7.current.AbsolutePosition
		if var27_result1_2_upvr then
			-- KONSTANTWARNING: GOTO [105] #77
		end
		-- KONSTANTERROR: [33] 26. Error Block 36 end (CF ANALYSIS FAILED)
	end, tbl_3)
	local tbl_7 = {}
	tbl_7[1] = arg2
	tbl_7[2] = var31_result1_upvr
	tbl_7[3] = var30_result1_upvr
	tbl_7[4] = var27_result1_2_upvr
	tbl_7[5] = arg3
	tbl_7[6] = useAnimatedBinding_upvr_result2_upvr
	tbl_7[7] = var33_result2_upvr
	local var32_result1_upvr_5 = useCallback_upvr(function(arg1_4, arg2_3) -- Line 403
		--[[ Upvalues[23]:
			[1]: validateRefs_upvr (copied, readonly)
			[2]: useRef_upvr_result1_upvr_7 (readonly)
			[3]: useRef_upvr_result1_upvr (readonly)
			[4]: var30_result1_upvr (readonly)
			[5]: var31_result1_upvr (readonly)
			[6]: getSnapAnchorPoint_upvr (copied, readonly)
			[7]: arg2 (readonly)
			[8]: arg3 (readonly)
			[9]: var27_result1_2_upvr (readonly)
			[10]: var27_result2_upvr_2 (readonly)
			[11]: var33_result2_upvr (readonly)
			[12]: ReactOtter_upvr (copied, readonly)
			[13]: getSnapPosition_upvr (copied, readonly)
			[14]: clampItemPosition_upvr (copied, readonly)
			[15]: useAnimatedBinding_upvr_result2_upvr (readonly)
			[16]: useRef_upvr_result1_upvr_6 (readonly)
			[17]: tbl_6_upvr (copied, readonly)
			[18]: useState_upvr_result2_upvr_2 (readonly)
			[19]: var27_result2_upvr (readonly)
			[20]: SnapDirection_upvr (copied, readonly)
			[21]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[22]: CaptureControlsConfiguration_upvr (copied, readonly)
			[23]: useRef_upvr_result1_upvr_3 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 97 start (CF ANALYSIS FAILED)
		local var94
		if not validateRefs_upvr({useRef_upvr_result1_upvr_7, useRef_upvr_result1_upvr}) then
		else
			if useRef_upvr_result1_upvr_7.current == nil then
				var94 = false
			else
				var94 = true
			end
			assert(var94, "dragItemRef is nil")
			if useRef_upvr_result1_upvr.current == nil then
				var94 = false
			else
				var94 = true
			end
			assert(var94, "dragContainerRef is nil")
			var94 = Vector2.new(var30_result1_upvr.left + var31_result1_upvr.left, var30_result1_upvr.top + var31_result1_upvr.top)
			local var95 = arg1_4 - var94
			var94 = useRef_upvr_result1_upvr.current.AbsolutePosition
			local AbsoluteSize_3 = useRef_upvr_result1_upvr.current.AbsoluteSize
			local getSnapAnchorPoint_upvr_result1_2, getSnapAnchorPoint_result2 = getSnapAnchorPoint_upvr(var95, var94, AbsoluteSize_3, arg2)
			if not arg3 and getSnapAnchorPoint_result2 >= 70 then
				local var99 = not arg2_3
			end
			local AnchorPoint_2 = useRef_upvr_result1_upvr_7.current.AnchorPoint
			local var101 = var27_result1_2_upvr
			local var102 = true
			if getSnapAnchorPoint_upvr_result1_2.X ~= 0 then
				if getSnapAnchorPoint_upvr_result1_2.X ~= 1 then
					var102 = false
				else
					var102 = true
				end
			end
			local var103 = true
			if getSnapAnchorPoint_upvr_result1_2.Y ~= 0 then
				if getSnapAnchorPoint_upvr_result1_2.Y ~= 1 then
					var103 = false
				else
					var103 = true
				end
			end
			if var102 and var103 then
				local var104
				-- KONSTANTWARNING: GOTO [123] #92
			end
			if var103 and not var101 then
				var104 = true
			elseif var102 and var101 then
				var104 = true
			end
			local var105
			if arg3 and var104 then
				var103 = var27_result1_2_upvr
				var102 = not var103
				var27_result2_upvr_2(var102)
			end
			if var99 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if var104 then
					var102 = var105.Y
					var103 = var105.X
					var105 = Vector2.new(var102, var103)
					var102 = AnchorPoint_2.Y
					var103 = AnchorPoint_2.X
					local vector2_4 = Vector2.new(var102, var103)
					var102 = {}
					var104 = ReactOtter_upvr
					var103 = var104.instant
					var104 = vector2_4.X
					var103 = var103(var104)
					var102.x = var103
					var104 = ReactOtter_upvr
					var103 = var104.instant
					var104 = vector2_4.Y
					var103 = var103(var104)
					var102.y = var103
					var33_result2_upvr(var102)
					var103 = var27_result1_2_upvr
					var102 = not var103
					var27_result2_upvr_2(var102)
				end
			end
			var103 = var105.X
			var104 = vector2_4.X
			var102 = var103 * var104
			var104 = var105.Y
			var103 = var104 * vector2_4.Y
			local vector2 = Vector2.new(var102, var103)
			var102 = nil
			if var99 then
				var103 = getSnapPosition_upvr
				var104 = var105
				var103 = var103(var104, vector2_4, var94, AbsoluteSize_3, getSnapAnchorPoint_upvr_result1_2, arg2)
				var102 = var103
			else
				var103 = clampItemPosition_upvr
				var104 = var95 - vector2
				var103 = var103(var104, var105, var94, AbsoluteSize_3, arg2)
				var102 = var103
			end
			if arg2_3 then
				useAnimatedBinding_upvr_result2_upvr({
					xOffset = ReactOtter_upvr.instant(var102.X + vector2.X);
					yOffset = ReactOtter_upvr.instant(var102.Y + vector2.Y);
				})
				return
			end
			useRef_upvr_result1_upvr_6.current = true
			useAnimatedBinding_upvr_result2_upvr({
				xOffset = ReactOtter_upvr.ease(var102.X + vector2.X, tbl_6_upvr);
				yOffset = ReactOtter_upvr.ease(var102.Y + vector2.Y, tbl_6_upvr);
			})
			useState_upvr_result2_upvr_2(getSnapAnchorPoint_upvr_result1_2)
			if getSnapAnchorPoint_upvr_result1_2.X == 0 then
				-- KONSTANTWARNING: GOTO [295] #220
			end
			-- KONSTANTERROR: [0] 1. Error Block 97 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [275] 207. Error Block 95 start (CF ANALYSIS FAILED)
			if getSnapAnchorPoint_upvr_result1_2.X == 1 then
			elseif getSnapAnchorPoint_upvr_result1_2.Y == 0 then
			else
			end
			var27_result2_upvr(SnapDirection_upvr.Bottom)
			if game_DefineFastFlag_result1_upvr and arg3 then
				CaptureControlsConfiguration_upvr.setStoredSnapAnchorPoint(Vector2.new(math.clamp(((var95 - var94) / AbsoluteSize_3).X, 0, 1), math.clamp(((var95 - var94) / AbsoluteSize_3).Y, 0, 1)))
				useRef_upvr_result1_upvr_3.current = getSnapAnchorPoint_upvr_result1_2
				return
			end
			CaptureControlsConfiguration_upvr.setStoredSnapAnchorPoint(getSnapAnchorPoint_upvr_result1_2)
			useRef_upvr_result1_upvr_3.current = getSnapAnchorPoint_upvr_result1_2
			-- KONSTANTERROR: [275] 207. Error Block 95 end (CF ANALYSIS FAILED)
		end
	end, tbl_7)
	local tbl_13 = {}
	tbl_13[1] = arg1
	tbl_13[2] = var32_result1_upvr_5
	tbl_13[3] = var27_result1_3_upvr
	local var32_result1_upvr_2 = useCallback_upvr(function(arg1_5) -- Line 516
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var27_result1_3_upvr (readonly)
			[3]: var32_result1_upvr_5 (readonly)
		]]
		if not arg1 or not var27_result1_3_upvr then
		else
			var32_result1_upvr_5(arg1_5, true)
		end
	end, tbl_13)
	local tbl_5 = {}
	tbl_5[1] = arg1
	tbl_5[2] = var32_result1_upvr_5
	tbl_5[3] = var27_result1_3_upvr
	local var32_result1_upvr_4 = useCallback_upvr(function(arg1_6) -- Line 524
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var27_result1_3_upvr (readonly)
			[3]: var32_result1_upvr_5 (readonly)
			[4]: useState_upvr_result2_upvr (readonly)
		]]
		if not arg1 or not var27_result1_3_upvr then
		else
			var32_result1_upvr_5(arg1_6, false)
			useState_upvr_result2_upvr(false)
		end
	end, tbl_5)
	local tbl_12 = {}
	tbl_12[1] = arg1
	tbl_12[2] = arg2
	tbl_12[3] = var32_result1_upvr
	useEffect_upvr(function() -- Line 533
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: useRef_upvr_result1_upvr_2 (readonly)
			[3]: arg2 (readonly)
			[4]: var32_result1_upvr (readonly)
		]]
		if not arg1 then
		elseif useRef_upvr_result1_upvr_2.current ~= arg2 then
			useRef_upvr_result1_upvr_2.current = arg2
			var32_result1_upvr()
		end
	end, tbl_12)
	local tbl_8 = {}
	tbl_8[1] = arg1
	tbl_8[2] = var32_result1_upvr_3
	tbl_8[3] = var32_result1_upvr_2
	tbl_8[4] = var32_result1_upvr_4
	tbl_8[5] = var32_result1_upvr
	useEffect_upvr(function() -- Line 544
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: useRef_upvr_result1_upvr_5 (readonly)
			[3]: var32_result1_upvr_3 (readonly)
			[4]: var32_result1_upvr_2 (readonly)
			[5]: var32_result1_upvr_4 (readonly)
			[6]: useRef_upvr_result1_upvr (readonly)
			[7]: var32_result1_upvr (readonly)
			[8]: useRef_upvr_result1_upvr_7 (readonly)
		]]
		if not arg1 then return end
		local tbl_16_upvr = {}
		if useRef_upvr_result1_upvr_5.current ~= nil then
			table.insert(tbl_16_upvr, useRef_upvr_result1_upvr_5.current.DragStart:Connect(var32_result1_upvr_3))
			table.insert(tbl_16_upvr, useRef_upvr_result1_upvr_5.current.DragContinue:Connect(var32_result1_upvr_2))
			table.insert(tbl_16_upvr, useRef_upvr_result1_upvr_5.current.DragEnd:Connect(var32_result1_upvr_4))
		end
		if useRef_upvr_result1_upvr.current ~= nil then
			table.insert(tbl_16_upvr, useRef_upvr_result1_upvr.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(var32_result1_upvr))
		end
		if useRef_upvr_result1_upvr_7.current ~= nil then
			table.insert(tbl_16_upvr, useRef_upvr_result1_upvr_7.current:GetPropertyChangedSignal("AbsoluteSize"):Connect(var32_result1_upvr))
		end
		return function() -- Line 570
			--[[ Upvalues[1]:
				[1]: tbl_16_upvr (readonly)
			]]
			for _, v_2 in tbl_16_upvr do
				v_2:Disconnect()
			end
		end
	end, tbl_8)
	return {
		dragContainerRef = useRef_upvr_result1_upvr;
		dragDetectorRef = useRef_upvr_result1_upvr_5;
		dragItemRef = useRef_upvr_result1_upvr_7;
		isItemHorizontal = var27_result1_2_upvr;
		snapDirection = var27_result1;
		dragItemPositionBinding = useAnimatedBinding_upvr_result1;
		dragItemAnchorPointBinding = var33_result1;
	}
end