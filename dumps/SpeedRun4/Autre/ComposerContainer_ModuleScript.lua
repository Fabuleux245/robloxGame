-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:31
-- Luau version 6, Types version 3
-- Time taken: 0.008221 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local Foundation_upvr = require(Parent_2.Foundation)
local React_upvr = require(Parent_2.React)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useScreenSize_upvr = require(Parent.Hooks.useScreenSize)
local useState_upvr = React_upvr.useState
local useCallback_upvr = React_upvr.useCallback
local vector2_upvr = Vector2.new(700, 500)
local View_upvr = Foundation_upvr.View
local Icon_upvr = Foundation_upvr.Icon
local CaptureItem_upvr = require(Parent.Components.CaptureItem)
return function(arg1) -- Line 31
	--[[ Upvalues[10]:
		[1]: useTokens_upvr (readonly)
		[2]: useScreenSize_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: vector2_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: Foundation_upvr (readonly)
		[9]: Icon_upvr (readonly)
		[10]: CaptureItem_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6_result1 = useTokens_upvr()
	local var7_result1 = useScreenSize_upvr()
	local var8_result1, var8_result2_upvr = useState_upvr(var7_result1)
	local enableLargeScreenMode = arg1.enableLargeScreenMode
	if enableLargeScreenMode then
		enableLargeScreenMode = false
		if vector2_upvr.X < var8_result1.X then
			if vector2_upvr.Y >= var8_result1.Y then
				enableLargeScreenMode = false
			else
				enableLargeScreenMode = true
			end
		end
	end
	if var7_result1.Y >= var7_result1.X then
	else
	end
	if arg1.children == nil then
		-- KONSTANTWARNING: GOTO [53] #39
	end
	local module_2 = {}
	local tbl_2 = {}
	if enableLargeScreenMode then
		-- KONSTANTWARNING: GOTO [111] #78
	end
	tbl_2.Size = UDim2.fromScale(1, 1)
	tbl_2.stateLayer = {
		affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
	}
	tbl_2.tag = {
		["anchor-center-center bg-surface-200 position-center-center"] = true;
		["radius-large"] = enableLargeScreenMode;
	}
	local tbl_28 = {}
	local tbl_23 = {}
	local tbl_14 = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, var6_result1.Padding.Large);
			PaddingLeft = UDim.new(0, var6_result1.Padding.XXLarge);
			PaddingRight = UDim.new(0, var6_result1.Padding.Large);
			PaddingTop = UDim.new(0, var6_result1.Padding.XXLarge);
		});
	}
	local tbl_10 = {}
	local tbl_22 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local Small = Foundation_upvr.Enums.IconSize.Small
	tbl_22.IconSize = Small
	if enableLargeScreenMode then
		Small = "icons/navigation/close"
	else
		Small = "icons/actions/cycleLeft"
	end
	tbl_22.name = Small
	tbl_22.Position = UDim2.fromScale(0.5, 0.5)
	tbl_22.style = var6_result1.Color.ActionEmphasis.Foreground
	tbl_22.ZIndex = 2
	tbl_10.BackIcon = React_upvr.createElement(Icon_upvr, tbl_22)
	tbl_14.BackButton = React_upvr.createElement(View_upvr, {
		onActivated = arg1.onCloseCallback;
		tag = {
			["auto-xy bg-over-media-300 padding-medium radius-circle"] = true;
		};
	}, tbl_10)
	tbl_23.BackButtonContainer = React_upvr.createElement(View_upvr, {
		tag = "auto-xy bg-action-subtle";
		ZIndex = 2;
	}, tbl_14)
	local tbl_8 = {}
	if true then
		if enableLargeScreenMode then
		else
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	tbl_8.Size = UDim2.fromScale(1, 0.6)
	local tbl_21 = {
		["bg-surface-100 clip"] = true;
	}
	local var75 = enableLargeScreenMode
	if var75 then
		if arg1.children == nil then
			var75 = false
		else
			var75 = true
		end
	end
	tbl_21["padding-right-large"] = var75
	tbl_21["radius-large"] = enableLargeScreenMode
	tbl_8.tag = tbl_21
	tbl_8.ZIndex = 1
	tbl_23.CaptureContainer = React_upvr.createElement(View_upvr, tbl_8, {
		CapturePreviewFrame = React_upvr.createElement(View_upvr, {
			LayoutOrder = 2;
			tag = "anchor-center-center bg-action-subtle position-center-center size-full-full";
		}, {
			CapturePreview = React_upvr.createElement(CaptureItem_upvr, {
				capture = arg1.capture;
				isVideoPlaying = true;
				onActivated = function() -- Line 120, Named "onActivated"
				end;
				scaleType = Enum.ScaleType.Fit;
			});
		});
	})
	tbl_23.ComposerBody = arg1.children
	tbl_28.ComposerContainer = React_upvr.createElement(View_upvr, {
		tag = {
			["anchor-center-center bg-action-subtle position-center-center size-full-full"] = true;
			["padding-right-large"] = enableLargeScreenMode;
		};
	}, tbl_23)
	module_2.ComposerScreenContainer = React_upvr.createElement(View_upvr, tbl_2, tbl_28)
	return React_upvr.createElement(View_upvr, {
		onAbsoluteSizeChanged = useCallback_upvr(function(arg1_3) -- Line 37
			--[[ Upvalues[2]:
				[1]: var8_result2_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			var8_result2_upvr(arg1_3.AbsoluteSize)
			arg1.onAbsoluteSizeChangedCallback(arg1_3)
		end, {arg1.onAbsoluteSizeChangedCallback});
		stateLayer = {
			affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
		};
		tag = "size-full-full bg-over-media-0";
	}, module_2)
end