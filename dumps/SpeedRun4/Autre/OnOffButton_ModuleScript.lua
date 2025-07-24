-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:30
-- Luau version 6, Types version 3
-- Time taken: 0.001659 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local RoactUtils = require(Parent.RoactUtils)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local onToggleActivation_upvr = require(Parent_2.Utils.onToggleActivation)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local SegmentedControl_upvr = require(Parent.UIBlox).App.Control.SegmentedControl
return function(arg1) -- Line 25
	--[[ Upvalues[9]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: onToggleActivation_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: SegmentedControl_upvr (readonly)
	]]
	local var7_result1 = useSelector_upvr(function(arg1_2) -- Line 29
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsCapturesCoreGuiEnabled
	end)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 33
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].IsActive
	end)
	local var9_result1 = useLocalization_upvr({
		offText = "Feature.Captures.Control.Off";
		onText = "Feature.Captures.Control.On";
	})
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var6_result1_upvr = useDispatch_upvr()
	local module = {}
	local tbl = {}
	local height = arg1.height
	tbl.height = height
	tbl.onTabActivated = React_upvr.useCallback(function(arg1_4) -- Line 42
		--[[ Upvalues[5]:
			[1]: onToggleActivation_upvr (copied, readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: useAnalytics_upvr_result1_upvr (readonly)
			[4]: var6_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
		]]
		onToggleActivation_upvr(useSelector_upvr_result1_upvr, arg1_4, useAnalytics_upvr_result1_upvr.fireEvent, var6_result1_upvr, EventNames_upvr.CapturesActivatedInGameMenu, EventNames_upvr.CapturesDeactivatedInGameMenu)
	end, {useSelector_upvr_result1_upvr})
	if useSelector_upvr_result1_upvr then
		height = 1
	else
		height = 2
	end
	tbl.selectedTabIndex = height
	tbl.tabs = {{
		tabName = var9_result1.onText;
		isDisabled = not var7_result1;
	}, {
		tabName = var9_result1.offText;
		isDisabled = not var7_result1;
	}}
	tbl.width = UDim.new(0, arg1.width)
	module.Control = React_upvr.createElement(SegmentedControl_upvr, tbl)
	return React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromOffset(arg1.width, arg1.height);
	}, module)
end