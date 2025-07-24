-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:05
-- Luau version 6, Types version 3
-- Time taken: 0.001436 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local function computeProps_upvr(arg1) -- Line 14, Named "computeProps"
	local udim = UDim.new(0, (arg1.width - arg1.horizontalPadding) / 2)
	return {
		button = {
			tag = "size-full fill";
			width = arg1.width;
			padding = {
				left = udim;
				right = udim;
			};
		};
		upButton = {
			tag = arg1.upButtonTag;
		};
		downButton = {
			tag = arg1.downButtonTag;
		};
	}
end
local InputSize_upvr = require(Foundation.Enums.InputSize)
local function variantsFactory_upvr(arg1) -- Line 39, Named "variantsFactory"
	--[[ Upvalues[2]:
		[1]: InputSize_upvr (readonly)
		[2]: computeProps_upvr (readonly)
	]]
	return {
		common = {
			upButton = {
				tag = "size-full fill padding-bottom-xsmall";
			};
			downButton = {
				tag = "size-full fill padding-top-xsmall";
			};
			icon = {
				tag = "content-default size-150-100";
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = computeProps_upvr({
				width = arg1.Size.Size_400;
				horizontalPadding = arg1.Size.Size_150;
				upButtonTag = "padding-top-xxsmall";
				downButtonTag = "padding-bottom-xxsmall";
			});
			[InputSize_upvr.Small] = computeProps_upvr({
				width = arg1.Size.Size_600;
				horizontalPadding = arg1.Size.Size_150;
				upButtonTag = "padding-top-xsmall";
				downButtonTag = "padding-bottom-xsmall";
			});
			[InputSize_upvr.Medium] = computeProps_upvr({
				width = arg1.Size.Size_600;
				horizontalPadding = arg1.Size.Size_150;
				upButtonTag = "padding-top-small";
				downButtonTag = "padding-bottom-small";
			});
			[InputSize_upvr.Large] = computeProps_upvr({
				width = arg1.Size.Size_800;
				horizontalPadding = arg1.Size.Size_150;
				upButtonTag = "padding-top-medium";
				downButtonTag = "padding-bottom-medium";
			});
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 80
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("NumberInput", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end