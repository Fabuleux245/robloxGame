-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:27
-- Luau version 6, Types version 3
-- Time taken: 0.002159 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local ReactOtter = require(Parent.ReactOtter)
local useBindCaptureShortcut_upvr = require(Parent_2.Hooks.useBindCaptureShortcut)
local useTopbarInsetHeight_upvr = require(Parent_2.Hooks.useTopbarInsetHeight)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useShowFlashOverlay_upvr = require(Parent_2.Hooks.useShowFlashOverlay)
local useAnimatedBinding_upvr = ReactOtter.useAnimatedBinding
local useEffect_upvr = React_upvr.useEffect
local instant_upvr = ReactOtter.instant
local RunService_upvr = game:GetService("RunService")
local spring_upvr = ReactOtter.spring
return function(arg1) -- Line 26
	--[[ Upvalues[11]:
		[1]: useBindCaptureShortcut_upvr (readonly)
		[2]: useTopbarInsetHeight_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: useShowFlashOverlay_upvr (readonly)
		[6]: useAnimatedBinding_upvr (readonly)
		[7]: useEffect_upvr (readonly)
		[8]: instant_upvr (readonly)
		[9]: RunService_upvr (readonly)
		[10]: spring_upvr (readonly)
		[11]: React_upvr (readonly)
	]]
	useBindCaptureShortcut_upvr()
	local var7_result1 = useTopbarInsetHeight_upvr()
	local useShowFlashOverlay_upvr_result1_upvr, useShowFlashOverlay_upvr_result2_upvr = useShowFlashOverlay_upvr()
	local var11_result1, var11_result2_upvr = useAnimatedBinding_upvr(1)
	useEffect_upvr(function() -- Line 38
		--[[ Upvalues[6]:
			[1]: useShowFlashOverlay_upvr_result1_upvr (readonly)
			[2]: useShowFlashOverlay_upvr_result2_upvr (readonly)
			[3]: var11_result2_upvr (readonly)
			[4]: instant_upvr (copied, readonly)
			[5]: RunService_upvr (copied, readonly)
			[6]: spring_upvr (copied, readonly)
		]]
		if useShowFlashOverlay_upvr_result1_upvr then
			useShowFlashOverlay_upvr_result2_upvr()
			var11_result2_upvr(instant_upvr(0))
			task.defer(function() -- Line 48
				--[[ Upvalues[3]:
					[1]: RunService_upvr (copied, readonly)
					[2]: var11_result2_upvr (copied, readonly)
					[3]: spring_upvr (copied, readonly)
				]]
				RunService_upvr.RenderStepped:Wait()
				RunService_upvr.RenderStepped:Wait()
				var11_result2_upvr(spring_upvr(1))
			end)
		end
	end, {useShowFlashOverlay_upvr_result1_upvr})
	local module = {
		Active = false;
	}
	local Color3_new_result1 = Color3.new(0, 0, 0)
	module.BackgroundColor3 = Color3_new_result1
	if useShowFlashOverlay_upvr_result1_upvr then
		Color3_new_result1 = var11_result1
	else
		Color3_new_result1 = 1
	end
	module.BackgroundTransparency = Color3_new_result1
	module.Position = UDim2.fromOffset(0, -var7_result1)
	module.Size = UDim2.new(1, 0, 1, var7_result1)
	module.Visible = useSelector_upvr(function(arg1_2) -- Line 31
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsOverlayActive
	end)
	module.ZIndex = Constants_upvr.ZIndex.Entrypoint
	return React_upvr.createElement("Frame", module, {})
end