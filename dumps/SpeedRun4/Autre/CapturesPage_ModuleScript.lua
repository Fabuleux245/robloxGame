-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:28
-- Luau version 6, Types version 3
-- Time taken: 0.001383 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local RoactUtils = require(Parent.RoactUtils)
local React_upvr = require(Parent.React)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useEffectOnce_upvr = RoactUtils.Hooks.useEffectOnce
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local CaptureConfigCTAs_upvr = require(Parent_2.Components.CoreUI.CaptureConfigCTAs)
local CapturesGallery_upvr = require(Parent_2.Components.CapturesGallery.CapturesGallery)
return function(arg1) -- Line 22
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: useAnalytics_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: useEffectOnce_upvr (readonly)
		[6]: EventNames_upvr (readonly)
		[7]: CaptureConfigCTAs_upvr (readonly)
		[8]: CapturesGallery_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 30
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsMenuOpen
	end)
	local var6_result1_upvr = useAnalytics_upvr()
	useEffectOnce_upvr(function() -- Line 34
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		var6_result1_upvr.fireEvent(EventNames_upvr.CapturesPageOpenedInGameMenu)
	end, useSelector_upvr_result1)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Visible = useSelector_upvr_result1;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			Padding = UDim.new(0, 12);
		});
		CaptureConfigCTAs = React_upvr.createElement(CaptureConfigCTAs_upvr, {
			closeSettingsMenu = React_upvr.useCallback(function() -- Line 23
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.closeSettingsMenu()
			end, {});
			LayoutOrder = 1;
			onAbsoluteSizeChanged = React_upvr.useCallback(function(arg1_3) -- Line 38
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (readonly)
				]]
				any_useState_result2_upvr(arg1_3.Y)
			end, {});
		});
		CapturesGallery = React_upvr.createElement(CapturesGallery_upvr, {
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 1, -any_useState_result1 - 12);
		});
	})
end