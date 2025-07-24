-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:16
-- Luau version 6, Types version 3
-- Time taken: 0.002518 seconds

local Parent = script:FindFirstAncestor("TrustedContacts").Parent
local Foundation = require(Parent.Foundation)
local BuilderIcons = require(Parent.BuilderIcons)
local useProfileInsightsToIconsAndTexts_upvr = require(script.Parent.useProfileInsightsToIconsAndTexts)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local Font_upvr = BuilderIcons.Font
local IconVariant_upvr = BuilderIcons.IconVariant
local Text_upvr = Foundation.Text
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1) -- Line 28, Named "SocialMetadataIconsAndTextsSection"
	--[[ Upvalues[9]:
		[1]: useProfileInsightsToIconsAndTexts_upvr (readonly)
		[2]: useDesignTokens_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: Font_upvr (readonly)
		[7]: IconVariant_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: dependencyArray_upvr (readonly)
	]]
	local var5_result1_upvr = useDesignTokens_upvr()
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	local function var19(arg1_2, arg2) -- Line 34
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: View_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var5_result1_upvr (readonly)
			[5]: Font_upvr (copied, readonly)
			[6]: IconVariant_upvr (copied, readonly)
			[7]: useTokens_upvr_result1_upvr (readonly)
			[8]: Text_upvr (copied, readonly)
		]]
		local module = {
			tag = {
				["auto-xy size-0 row align-y-center"] = true;
				["gap-xxsmall padding-xxsmall"] = arg1.isVerticallyConstrained;
				["gap-xsmall padding-xsmall"] = not arg1.isVerticallyConstrained;
			};
		}
		module.LayoutOrder = arg2
		return React_upvr.createElement(View_upvr, module, {
			Icon = React_upvr.createElement("TextLabel", {
				Text = arg1_2.icon;
				Size = UDim2.fromOffset(var5_result1_upvr.Global.FontSize_50, var5_result1_upvr.Global.FontSize_50);
				FontFace = Font_upvr[IconVariant_upvr.Filled];
				BackgroundTransparency = 1;
				TextScaled = true;
				TextColor3 = useTokens_upvr_result1_upvr.Color.Content.Default.Color3;
				LayoutOrder = 1;
			});
			Text = React_upvr.createElement(Text_upvr, {
				tag = "auto-xy size-0 text-align-x-left text-truncate-end text-label-small";
				Text = arg1_2.text;
				LayoutOrder = 2;
			});
		})
	end
	local any_useCallback_result1 = React_upvr.useCallback(var19, dependencyArray_upvr(var5_result1_upvr, useTokens_upvr_result1_upvr))
	var19 = {}
	local var26_upvr = var19
	for i, v in pairs(useProfileInsightsToIconsAndTexts_upvr(arg1.profileInsightIconItems)) do
		table.insert(var26_upvr, any_useCallback_result1(v, i))
	end
	return React_upvr.useMemo(function() -- Line 66
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: View_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var26_upvr (readonly)
		]]
		return React_upvr.createElement(View_upvr, {
			tag = {
				["row auto-y size-full-0 wrap align-x-left"] = true;
				["gap-xsmall"] = arg1.isVerticallyConstrained;
				["gap-small"] = not arg1.isVerticallyConstrained;
			};
			LayoutOrder = arg1.layoutOrder;
		}, var26_upvr)
	end, dependencyArray_upvr(arg1.profileInsightIconItems, var26_upvr))
end