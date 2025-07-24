-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:28
-- Luau version 6, Types version 3
-- Time taken: 0.002518 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local useTopbarInsetHeight_upvr = require(Parent_2.Hooks.useTopbarInsetHeight)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local React_upvr = require(Parent.React)
local FFlagEnableUpdatedCaptureControls_upvr = require(Parent_2.Flags.FFlagEnableUpdatedCaptureControls)
local CaptureControlsView_upvr = require(Parent_2.Components.CoreUI.CaptureControlsView)
local EntrypointButton_upvr = require(Parent_2.Components.CoreUI.EntrypointButton)
local ToastContainer_upvr = require(Parent_2.Components.Common.ToastContainer)
return function(arg1) -- Line 19
	--[[ Upvalues[8]:
		[1]: useTopbarInsetHeight_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: FFlagEnableUpdatedCaptureControls_upvr (readonly)
		[6]: CaptureControlsView_upvr (readonly)
		[7]: EntrypointButton_upvr (readonly)
		[8]: ToastContainer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local useTopbarInsetHeight_upvr_result1 = useTopbarInsetHeight_upvr()
	local function var23(arg1_5) -- Line 26
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_5[Constants_upvr.RoduxKey].IsCapturesCoreGuiEnabled
	end
	local module_2 = {}
	local var25
	if FFlagEnableUpdatedCaptureControls_upvr and useSelector_upvr(var23) then
		var25 = React_upvr.createElement(CaptureControlsView_upvr)
	else
		var25 = nil
	end
	module_2.CaptureControlsView = var25
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 29. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if useSelector_upvr(var23) then
		var25 = React_upvr.createElement
		var25 = var25("Frame", {
			Active = false;
			BackgroundTransparency = 1;
			Position = UDim2.fromOffset(0, -useTopbarInsetHeight_upvr_result1);
			Size = UDim2.new(1, 0, 1, useTopbarInsetHeight_upvr_result1);
			ZIndex = Constants_upvr.ZIndex.Entrypoint;
		}, {
			EntrypointButtonContainer = React_upvr.createElement(EntrypointButton_upvr);
		})
	else
		-- KONSTANTERROR: [78] 62. Error Block 9 start (CF ANALYSIS FAILED)
		var25 = nil
		-- KONSTANTERROR: [78] 62. Error Block 9 end (CF ANALYSIS FAILED)
	end
	module_2.EntrypointButtonFrame = var25
	if not useSelector_upvr(function(arg1_4) -- Line 22
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_4[Constants_upvr.RoduxKey].Carousel.IsOpen
	end) then
		var25 = React_upvr.createElement
		var25 = var25("Frame", {
			Active = false;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			ZIndex = Constants_upvr.ZIndex.Toasts;
		}, {
			ToastContainer = React_upvr.createElement(ToastContainer_upvr);
		})
	else
		var25 = nil
	end
	module_2.ToastsFrame = var25
	do
		return React_upvr.createElement(React_upvr.Fragment, {}, module_2)
	end
	-- KONSTANTERROR: [33] 29. Error Block 23 end (CF ANALYSIS FAILED)
end