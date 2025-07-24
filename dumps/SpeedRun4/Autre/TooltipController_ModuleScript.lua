-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:42
-- Luau version 6, Types version 3
-- Time taken: 0.004137 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent.Parent
local Parent_4 = Parent_2.Parent
local Constants_upvr = require(Parent.Constants)
local TooltipOrientation_upvr = require(Parent_3.Tooltip.Enum.TooltipOrientation)
local function argmax_upvr(arg1, arg2) -- Line 19, Named "argmax"
	local var14
	for i, v in pairs(arg1) do
		if not arg2[i] and (var14 == nil or arg1[var14] < v) then
			var14 = i
		end
	end
	return var14
end
local function getDistances_upvr(arg1, arg2) -- Line 32, Named "getDistances"
	--[[ Upvalues[2]:
		[1]: TooltipOrientation_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	return {
		[TooltipOrientation_upvr.Top] = arg1.Y - Constants_upvr.SCREEN_MARGIN;
		[TooltipOrientation_upvr.Bottom] = arg2.Y - arg1.Y - Constants_upvr.SCREEN_MARGIN;
		[TooltipOrientation_upvr.Left] = arg1.X - Constants_upvr.SCREEN_MARGIN;
		[TooltipOrientation_upvr.Right] = arg2.X - arg1.X - Constants_upvr.SCREEN_MARGIN;
	}
end
function getOrientationAndContentOffset(arg1, arg2, arg3, arg4) -- Line 43
	--[[ Upvalues[3]:
		[1]: argmax_upvr (readonly)
		[2]: TooltipOrientation_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 101. Error Block 25 start (CF ANALYSIS FAILED)
	;({})[arg1] = true
	-- KONSTANTERROR: [138] 101. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
end
local React_upvr = require(Parent_4.React)
local LuauPolyfill_upvr = require(Parent_4.LuauPolyfill)
local TooltipCallout_upvr = require(Parent.TooltipCallout)
local Portal_upvr = require(Parent_4.Roact).Portal
local withAnimation_upvr = require(Parent_2.Core.Animation.withAnimation)
return function(arg1) -- Line 106, Named "TooltipController"
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: TooltipOrientation_upvr (readonly)
		[3]: getDistances_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: LuauPolyfill_upvr (readonly)
		[6]: TooltipCallout_upvr (readonly)
		[7]: Portal_upvr (readonly)
		[8]: withAnimation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1_3, any_useState_result2_upvr_3 = React_upvr.useState(Vector2.zero)
	local any_useState_result1_2, any_useState_result2_upvr_4 = React_upvr.useState(Vector2.zero)
	local any_useState_result1_4_upvr, any_useState_result2_upvr = React_upvr.useState(Vector2.zero)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.zero)
	local any_useState_result1_upvr, any_useState_result2_upvr_5 = React_upvr.useState(Vector2.zero)
	local function var32_upvr(arg1_3) -- Line 119
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if arg1_3 then
			any_useState_result2_upvr_2(arg1_3.AbsolutePosition)
			any_useState_result2_upvr(arg1_3.AbsoluteSize)
		end
	end
	local var33_upvr = any_useState_result1_2 / 2
	local var34_upvr = any_useState_result1_3 + var33_upvr - any_useState_result1
	local preferredOrientation_upvr = arg1.preferredOrientation
	if not preferredOrientation_upvr then
		preferredOrientation_upvr = TooltipOrientation_upvr.Top
	end
	local tbl = {preferredOrientation_upvr, any_useState_result1_4_upvr, var34_upvr, var33_upvr, any_useState_result1_upvr}
	local any_useMemo_result1_upvr, any_useMemo_result2_upvr = React_upvr.useMemo(function() -- Line 131
		--[[ Upvalues[6]:
			[1]: getDistances_upvr (copied, readonly)
			[2]: var34_upvr (readonly)
			[3]: any_useState_result1_4_upvr (readonly)
			[4]: preferredOrientation_upvr (readonly)
			[5]: var33_upvr (readonly)
			[6]: any_useState_result1_upvr (readonly)
		]]
		return getOrientationAndContentOffset(preferredOrientation_upvr, getDistances_upvr(var34_upvr, any_useState_result1_4_upvr), var33_upvr, any_useState_result1_upvr)
	end, tbl)
	if arg1.disabled then
		tbl = false
	else
		tbl = arg1.active
	end
	if tbl then
	else
	end
	return React_upvr.createElement(React_upvr.Fragment, nil, {
		Portal = withAnimation_upvr(Constants_upvr.INACTIVE_ANIMATION_TARGETS, function(arg1_4) -- Line 142, Named "renderWithAnimation"
			--[[ Upvalues[11]:
				[1]: any_useMemo_result1_upvr (readonly)
				[2]: var34_upvr (readonly)
				[3]: var33_upvr (readonly)
				[4]: any_useMemo_result2_upvr (readonly)
				[5]: any_useState_result2_upvr_5 (readonly)
				[6]: LuauPolyfill_upvr (copied, readonly)
				[7]: arg1 (readonly)
				[8]: React_upvr (copied, readonly)
				[9]: TooltipCallout_upvr (copied, readonly)
				[10]: var32_upvr (readonly)
				[11]: Portal_upvr (copied, readonly)
			]]
			if arg1_4.transparency == 1 then
				return nil
			end
			local tbl_2 = {}
			local any_createElement_result1 = React_upvr.createElement(TooltipCallout_upvr, LuauPolyfill_upvr.Object.assign({}, arg1.tooltipProps, {
				orientation = any_useMemo_result1_upvr;
				triggerPointCenter = var34_upvr;
				triggerPointRadius = var33_upvr;
				contentOffsetVector = any_useMemo_result2_upvr;
				onContentSizeChanged = any_useState_result2_upvr_5;
				distanceOffset = arg1_4.distanceOffset;
				transparency = arg1_4.transparency;
			}))
			tbl_2.Tooltip = any_createElement_result1
			if arg1.DEBUG_useTargetDirectly then
				any_createElement_result1 = React_upvr.createElement
				any_createElement_result1 = any_createElement_result1("Frame", {
					ZIndex = arg1.DisplayOrder;
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					[React_upvr.Change.AbsoluteSize] = var32_upvr;
					[React_upvr.Change.AbsolutePosition] = var32_upvr;
					ref = var32_upvr;
				}, tbl_2)
			else
				any_createElement_result1 = React_upvr.createElement
				any_createElement_result1 = any_createElement_result1("ScreenGui", {
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
					IgnoreGuiInset = true;
					DisplayOrder = arg1.DisplayOrder;
					[React_upvr.Change.AbsoluteSize] = var32_upvr;
					[React_upvr.Change.AbsolutePosition] = var32_upvr;
					ref = var32_upvr;
				}, tbl_2)
			end
			return React_upvr.createElement(Portal_upvr, {
				target = arg1.guiTarget;
			}, {
				TooltipLayer = any_createElement_result1;
			})
		end, Constants_upvr.ANIMATION_OPTIONS);
		[arg1.triggerPointName or "TriggerPoint"] = arg1.renderTriggerPoint(React_upvr.useCallback(function(arg1_2) -- Line 113
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_3 (readonly)
				[2]: any_useState_result2_upvr_4 (readonly)
			]]
			any_useState_result2_upvr_3(arg1_2.AbsolutePosition)
			any_useState_result2_upvr_4(arg1_2.AbsoluteSize)
		end));
	})
end