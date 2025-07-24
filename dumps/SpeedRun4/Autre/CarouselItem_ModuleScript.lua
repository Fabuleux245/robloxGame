-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:14
-- Luau version 6, Types version 3
-- Time taken: 0.007132 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local function _(arg1) -- Line 46, Named "getDeleteTransitionSize"
	return UDim2.fromScale(arg1, arg1)
end
local function getDeleteTransitionTransparency_upvr(arg1) -- Line 50, Named "getDeleteTransitionTransparency"
	--[[ Upvalues[1]:
		[1]: UserGameSettings_upvr (readonly)
	]]
	if UserGameSettings_upvr.ReducedMotion then
		return arg1
	end
	return 1
end
local function getCapturesItemSize_upvr(arg1) -- Line 54, Named "getCapturesItemSize"
	--[[ Upvalues[1]:
		[1]: UserGameSettings_upvr (readonly)
	]]
	if UserGameSettings_upvr.ReducedMotion then
		return UDim2.fromScale(1, 1)
	end
	return UDim2.fromScale(arg1, arg1)
end
local function _(arg1, arg2) -- Line 58, Named "getFullScreenSize"
	local var8 = arg1.X / arg1.Y
	local var9 = arg2.X / var8
	if var9 <= arg2.Y then
		return UDim2.fromOffset(arg2.X, var9)
	end
	return UDim2.fromOffset(arg2.Y * var8, arg2.Y)
end
local useStyle_upvr = require(Parent_2.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent_2.React)
local useScreenSize_upvr = require(Parent_2.RobloxAppHooks).useScreenSize
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local getCaptureSize_upvr = require(Parent.Utils.getCaptureSize)
local any_memoize_result1_upvr = require(Parent_2.AppCommonLib).memoize(function(arg1, arg2) -- Line 32
	local var5 = arg1.X / arg1.Y
	local X = arg2.X
	local floored = math.floor(X / var5)
	if arg2.Y < floored then
		floored = arg2.Y
		X = math.floor(floored * var5)
	end
	return Vector2.new(X, floored)
end)
local FFlagUseMediaPlayerInCarousel_upvr = require(Parent_2.SharedFlags).FFlagUseMediaPlayerInCarousel
local MediaPlayer_upvr = require(Parent_2.CapturesCommon).Components.MediaPlayer
local FFlagCapturesVideoCaptureLoggingEnabled_upvr = require(Parent.Flags.FFlagCapturesVideoCaptureLoggingEnabled)
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
return function(arg1) -- Line 84
	--[[ Upvalues[13]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useScreenSize_upvr (readonly)
		[4]: CaptureType_upvr (readonly)
		[5]: getCaptureSize_upvr (readonly)
		[6]: any_memoize_result1_upvr (readonly)
		[7]: UserGameSettings_upvr (readonly)
		[8]: getCapturesItemSize_upvr (readonly)
		[9]: FFlagUseMediaPlayerInCarousel_upvr (readonly)
		[10]: MediaPlayer_upvr (readonly)
		[11]: FFlagCapturesVideoCaptureLoggingEnabled_upvr (readonly)
		[12]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[13]: getDeleteTransitionTransparency_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 124 start (CF ANALYSIS FAILED)
	local itemSize_upvr = arg1.itemSize
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local useScreenSize_upvr_result1_upvr = useScreenSize_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local imagePadding_upvr = arg1.imagePadding
	React_upvr.useEffect(function() -- Line 101
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: CaptureType_upvr (copied, readonly)
			[3]: getCaptureSize_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: itemSize_upvr (readonly)
		]]
		if arg1.capture.type == CaptureType_upvr.Video then
		else
			task.spawn(function() -- Line 106
				--[[ Upvalues[4]:
					[1]: getCaptureSize_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: any_useState_result2_upvr_2 (copied, readonly)
					[4]: itemSize_upvr (copied, readonly)
				]]
				local getCaptureSize_upvr_result1 = getCaptureSize_upvr(arg1.capture.contentId)
				if getCaptureSize_upvr_result1 then
					any_useState_result2_upvr_2(getCaptureSize_upvr_result1)
				else
					any_useState_result2_upvr_2(itemSize_upvr)
				end
			end)
		end
	end, {itemSize_upvr, arg1.capture})
	local function _(arg1_3) -- Line 117
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		local Resolution = arg1_3.Resolution
		any_useState_result2_upvr_2(Vector2.new(Resolution.X, Resolution.Y))
	end
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_4) -- Line 122
		--[[ Upvalues[2]:
			[1]: itemSize_upvr (readonly)
			[2]: useScreenSize_upvr_result1_upvr (readonly)
		]]
		local var39 = useScreenSize_upvr_result1_upvr.X / 2
		local var40 = arg1_4 + itemSize_upvr.X / 2
		local absolute = math.abs(var39 - var40)
		if absolute < 25 then
			absolute = 0
		else
			absolute -= 25
		end
		return math.sign(var39 - var40), math.min(1, absolute / (itemSize_upvr.X - 25))
	end, {itemSize_upvr, arg1.itemIndex, useScreenSize_upvr_result1_upvr})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_5) -- Line 140
		--[[ Upvalues[5]:
			[1]: any_useCallback_result1_upvr_3 (readonly)
			[2]: any_memoize_result1_upvr (copied, readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: itemSize_upvr (readonly)
			[5]: arg1 (readonly)
		]]
		local _, var43_result2_2 = any_useCallback_result1_upvr_3(arg1_5)
		local any_memoize_result1_upvr_result1 = any_memoize_result1_upvr(any_useState_result1_upvr_2, itemSize_upvr)
		if var43_result2_2 == 0 then
			return UDim2.fromOffset(any_memoize_result1_upvr_result1.X, any_memoize_result1_upvr_result1.Y)
		end
		local var48 = 1 - var43_result2_2 * (1 - arg1.unfocusedSizeMultiplier)
		return UDim2.fromOffset(math.floor(any_memoize_result1_upvr_result1.X * var48), math.floor(any_memoize_result1_upvr_result1.Y * var48))
	end, {any_useState_result1_upvr_2, itemSize_upvr, arg1.unfocusedSizeMultiplier, any_useCallback_result1_upvr_3})
	local Transparency_upvr = useStyle_upvr().Theme.Overlay.Transparency
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_7) -- Line 180
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr_3 (readonly)
			[2]: Transparency_upvr (readonly)
		]]
		local _, var43_result2 = any_useCallback_result1_upvr_3(arg1_7)
		return 1 - (1 - Transparency_upvr) * var43_result2
	end, {Transparency_upvr, any_useCallback_result1_upvr_3})
	local function _(arg1_8) -- Line 185
		--[[ Upvalues[2]:
			[1]: UserGameSettings_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		local absoluteXPosition = arg1_8.absoluteXPosition
		local fadeOutBinding = arg1_8.fadeOutBinding
		if UserGameSettings_upvr.ReducedMotion and fadeOutBinding then
			return 1
		end
		if fadeOutBinding then
			return math.min(any_useCallback_result1_upvr(absoluteXPosition), fadeOutBinding)
		end
		return any_useCallback_result1_upvr(absoluteXPosition)
	end
	local _ = {any_useCallback_result1_upvr}
	local function _() -- Line 199
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		if arg1.onExpandCallback then
			arg1.onExpandCallback(arg1.itemIndex)
		end
		any_useState_result2_upvr(not any_useState_result1_upvr)
	end
	local _ = {any_useState_result1_upvr, arg1.onExpandCallback, arg1.itemIndex}
	local function _() -- Line 206
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.onMuteCallback then
			arg1.onMuteCallback()
		end
	end
	local _ = {arg1.onMuteCallback}
	local function _() -- Line 212
		--[[ Upvalues[1]:
			[1]: React_upvr (copied, readonly)
		]]
		return React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
		})
	end
	local _ = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		[React_upvr.Change.AbsolutePosition] = React_upvr.useCallback(function(arg1_2) -- Line 97
			--[[ Upvalues[1]:
				[1]: any_useBinding_result2_upvr (readonly)
			]]
			any_useBinding_result2_upvr(arg1_2.AbsolutePosition.X)
		end, {any_useBinding_result2_upvr});
	}
	local tbl = {}
	local var73
	if any_useState_result1_upvr then
		var73 = 16
	else
		var73 = 0
	end
	tbl.PaddingTop = UDim.new(0, var73)
	;({}).FullScreenOffset = React_upvr.createElement("UIPadding", tbl)
	local tbl_2 = {}
	var73 = 0.5
	tbl_2.AnchorPoint = Vector2.new(0.5, var73)
	tbl_2.BackgroundTransparency = 1
	if any_useState_result1_upvr then
		var73 = 0.5
		local udim2 = UDim2.fromScale(0.5, var73)
	else
		var73 = React_upvr.useCallback(function(arg1_6) -- Line 159
			--[[ Upvalues[4]:
				[1]: any_useCallback_result1_upvr_3 (readonly)
				[2]: any_useCallback_result1_upvr_2 (readonly)
				[3]: itemSize_upvr (readonly)
				[4]: imagePadding_upvr (readonly)
			]]
			local var43_result1, var43_result2_3 = any_useCallback_result1_upvr_3(arg1_6)
			if var43_result2_3 == 0 then
				return UDim2.fromScale(0.5, 0.5)
			end
			return UDim2.new(0.5, (itemSize_upvr.X / 2 - imagePadding_upvr - any_useCallback_result1_upvr_2(arg1_6).X.Offset / 2) * var43_result2_3 * var43_result1, 0.5, 0)
		end, {any_useState_result1_upvr_2, imagePadding_upvr, itemSize_upvr, useScreenSize_upvr_result1_upvr, any_useCallback_result1_upvr_3, any_useCallback_result1_upvr_2})
	end
	tbl_2.Position = any_useBinding_result1:map(var73)
	if any_useState_result1_upvr then
		var73 = any_useState_result1_upvr_2.X
		var73 = useScreenSize_upvr_result1_upvr.X / var73 / any_useState_result1_upvr_2.Y
		if var73 <= useScreenSize_upvr_result1_upvr.Y then
		else
		end
		-- KONSTANTWARNING: GOTO [310] #231
	end
	-- KONSTANTERROR: [0] 1. Error Block 124 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [306] 228. Error Block 95 start (CF ANALYSIS FAILED)
	var73 = any_useCallback_result1_upvr_2
	-- KONSTANTERROR: [306] 228. Error Block 95 end (CF ANALYSIS FAILED)
end