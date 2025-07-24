-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:25
-- Luau version 6, Types version 3
-- Time taken: 0.001899 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local function computeProps_upvr(arg1) -- Line 47, Named "computeProps"
	return {
		canvas = {
			tag = arg1.canvasTag;
		};
		outerContainer = {
			tag = arg1.outerContainerTag;
		};
		innerContainer = {
			tag = arg1.innerContainerTag;
			padding = {
				left = UDim.new(0, arg1.horizontalPadding);
				right = UDim.new(0, arg1.horizontalPadding);
			};
			gap = arg1.gap;
			radius = arg1.radius;
		};
		textBox = {
			tag = arg1.textBoxTag;
			Font = arg1.typography.Font;
			FontSize = arg1.typography.FontSize;
		};
		icon = {
			size = arg1.iconSize;
		};
	}
end
local InputSize_upvr = require(Foundation.Enums.InputSize)
local IconSize_upvr = require(Foundation.Enums.IconSize)
local function variantsFactory_upvr(arg1) -- Line 87, Named "variantsFactory"
	--[[ Upvalues[3]:
		[1]: InputSize_upvr (readonly)
		[2]: computeProps_upvr (readonly)
		[3]: IconSize_upvr (readonly)
	]]
	return {
		common = {
			outerContainer = {
				tag = "bg-shift-100";
			};
			innerContainer = {
				tag = "row align-y-center";
			};
			textBox = {
				tag = "gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis";
			};
			icon = {
				style = arg1.Color.Content.Muted;
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = computeProps_upvr({
				canvasTag = "size-full-600";
				outerContainerTag = "radius-small";
				radius = arg1.Radius.Small;
				innerContainerTag = "gap-small";
				horizontalPadding = arg1.Padding.XSmall;
				gap = arg1.Gap.Small;
				textBoxTag = "text-body-small";
				typography = arg1.Typography.BodySmall;
				iconSize = IconSize_upvr.XSmall;
			});
			[InputSize_upvr.Small] = computeProps_upvr({
				canvasTag = "size-full-800";
				outerContainerTag = "radius-small";
				radius = arg1.Radius.Small;
				innerContainerTag = "gap-medium";
				horizontalPadding = arg1.Padding.Small;
				gap = arg1.Gap.Medium;
				textBoxTag = "text-body-medium";
				typography = arg1.Typography.BodyMedium;
				iconSize = IconSize_upvr.XSmall;
			});
			[InputSize_upvr.Medium] = computeProps_upvr({
				canvasTag = "size-full-1000";
				outerContainerTag = "radius-small";
				radius = arg1.Radius.Small;
				innerContainerTag = "gap-large";
				horizontalPadding = arg1.Padding.Small;
				gap = arg1.Gap.Large;
				textBoxTag = "text-body-medium";
				typography = arg1.Typography.BodyMedium;
				iconSize = IconSize_upvr.Small;
			});
			[InputSize_upvr.Large] = computeProps_upvr({
				canvasTag = "size-full-1200";
				outerContainerTag = "radius-medium";
				radius = arg1.Radius.Medium;
				innerContainerTag = "gap-large";
				horizontalPadding = arg1.Padding.Medium;
				gap = arg1.Gap.Large;
				textBoxTag = "text-body-large";
				typography = arg1.Typography.BodyLarge;
				iconSize = IconSize_upvr.Small;
			});
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 160
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("TextInput", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end