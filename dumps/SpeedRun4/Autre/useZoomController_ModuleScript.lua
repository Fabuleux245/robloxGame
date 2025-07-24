-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:44
-- Luau version 6, Types version 3
-- Time taken: 0.002568 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local React = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
local tbl_3_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local useState_upvr = React.useState
local useRef_upvr = React.useRef
local useCallback_upvr = React.useCallback
local useMotor_upvr = ReactOtter_upvr.useMotor
local useEffect_upvr = React.useEffect
local isPointWithinBounds_upvr = require(Parent_2.Utils.isPointWithinBounds)
local useExternalEvent_upvr = require(Parent.UIBlox).Core.Hooks.useExternalEvent
local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1) -- Line 28, Named "useZoomController"
	--[[ Upvalues[10]:
		[1]: useState_upvr (readonly)
		[2]: useRef_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: useMotor_upvr (readonly)
		[5]: useEffect_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
		[7]: tbl_3_upvr (readonly)
		[8]: isPointWithinBounds_upvr (readonly)
		[9]: useExternalEvent_upvr (readonly)
		[10]: UserInputService_upvr (readonly)
	]]
	local useState_upvr_result1_upvr, useState_upvr_result2_upvr = useState_upvr(false)
	local var7_result1_upvr = useRef_upvr(nil)
	local var7_result1_upvr_2 = useRef_upvr(nil)
	local var7_result1_upvr_3 = useRef_upvr(nil)
	local useMotor_upvr_result1_upvr = useMotor_upvr({
		scale = 1;
		xAnchor = 0.5;
		yAnchor = 0.5;
		xPos = 0.5;
		yPos = 0.5;
	}, useCallback_upvr(function(arg1_2) -- Line 35
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		if not var7_result1_upvr.current then
		else
			var7_result1_upvr.current.AnchorPoint = Vector2.new(arg1_2.xAnchor, arg1_2.yAnchor)
			var7_result1_upvr.current.Position = UDim2.fromScale(arg1_2.xPos, arg1_2.yPos)
			var7_result1_upvr.current.Size = UDim2.fromScale(arg1_2.scale, arg1_2.scale)
		end
	end, {}))
	local tbl_2 = {}
	tbl_2[1] = arg1
	useEffect_upvr(function() -- Line 53
		--[[ Upvalues[4]:
			[1]: var7_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: var7_result1_upvr_2 (readonly)
			[4]: var7_result1_upvr_3 (readonly)
		]]
		if not var7_result1_upvr.current then
		else
			if arg1 then
				var7_result1_upvr_2.current = var7_result1_upvr.current.AbsolutePosition
				var7_result1_upvr_3.current = var7_result1_upvr.current.AbsoluteSize
				return
			end
			var7_result1_upvr_2.current = nil
			var7_result1_upvr_3.current = nil
			var7_result1_upvr.current.AnchorPoint = Vector2.new(0.5, 0.5)
			var7_result1_upvr.current.Position = UDim2.fromScale(0.5, 0.5)
			var7_result1_upvr.current.Size = UDim2.fromScale(1, 1)
		end
	end, tbl_2)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = useState_upvr_result1_upvr
	tbl[3] = useMotor_upvr_result1_upvr
	useExternalEvent_upvr(UserInputService_upvr.TouchPinch, useCallback_upvr(function(arg1_3, arg2, arg3, arg4, arg5) -- Line 71
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: useState_upvr_result1_upvr (readonly)
			[4]: useMotor_upvr_result1_upvr (readonly)
			[5]: ReactOtter_upvr (copied, readonly)
			[6]: tbl_3_upvr (copied, readonly)
			[7]: var7_result1_upvr_2 (readonly)
			[8]: var7_result1_upvr_3 (readonly)
			[9]: useState_upvr_result2_upvr (readonly)
			[10]: isPointWithinBounds_upvr (copied, readonly)
		]]
		if not arg1 or not var7_result1_upvr.current then
		else
			if arg4 == Enum.UserInputState.End and useState_upvr_result1_upvr or #arg1_3 < 2 then
				useMotor_upvr_result1_upvr({
					scale = ReactOtter_upvr.spring(1, tbl_3_upvr);
					xPos = ReactOtter_upvr.spring(var7_result1_upvr.current.AnchorPoint.X, tbl_3_upvr);
					yPos = ReactOtter_upvr.spring(var7_result1_upvr.current.AnchorPoint.Y, tbl_3_upvr);
				})
				var7_result1_upvr_2.current = nil
				var7_result1_upvr_3.current = nil
				useState_upvr_result2_upvr(false)
				return
			end
			if arg4 == Enum.UserInputState.Begin then
				local _1 = arg1_3[1]
				local _2 = arg1_3[2]
				local AbsolutePosition = var7_result1_upvr.current.AbsolutePosition
				local AbsoluteSize = var7_result1_upvr.current.AbsoluteSize
				if not isPointWithinBounds_upvr(_1, AbsolutePosition, AbsoluteSize) or not isPointWithinBounds_upvr(_2, AbsolutePosition, AbsoluteSize) then return end
				var7_result1_upvr_2.current = AbsolutePosition
				var7_result1_upvr_3.current = AbsoluteSize
				local var30 = ((_1 + _2) / 2) - (AbsolutePosition + AbsoluteSize / 2)
				local var31 = var30.X / AbsoluteSize.X + 0.5
				local var32 = var30.Y / AbsoluteSize.Y + 0.5
				useMotor_upvr_result1_upvr({
					xAnchor = ReactOtter_upvr.instant(var31);
					yAnchor = ReactOtter_upvr.instant(var32);
					xPos = ReactOtter_upvr.instant(var31);
					yPos = ReactOtter_upvr.instant(var32);
				})
				useState_upvr_result2_upvr(true)
			end
			if not useState_upvr_result1_upvr then return end
			if not var7_result1_upvr_2.current or not var7_result1_upvr_3.current then return end
			local var34 = ((arg1_3[1] + arg1_3[2]) / 2) - (var7_result1_upvr_2.current + var7_result1_upvr_3.current / 2)
			useMotor_upvr_result1_upvr({
				scale = ReactOtter_upvr.instant(math.clamp(arg2, 0.5, 3));
				xPos = ReactOtter_upvr.instant(var34.X / var7_result1_upvr_3.current.X + 0.5);
				yPos = ReactOtter_upvr.instant(var34.Y / var7_result1_upvr_3.current.Y + 0.5);
			})
		end
	end, tbl))
	return useState_upvr_result1_upvr, var7_result1_upvr
end