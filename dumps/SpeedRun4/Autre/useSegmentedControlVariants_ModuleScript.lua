-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:19
-- Luau version 6, Types version 3
-- Time taken: 0.001504 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local InputSize_upvr = require(Foundation.Enums.InputSize)
local function variantsFactory_upvr(arg1) -- Line 27, Named "variantsFactory"
	--[[ Upvalues[1]:
		[1]: InputSize_upvr (readonly)
	]]
	return {
		common = {
			container = {
				tag = "auto-xy align-y-center row bg-surface-300";
			};
			segment = {
				tag = "auto-xy row size-0-full align-y-center";
			};
			text = {
				tag = "auto-x text-truncate-end content-emphasis";
			};
			divider = {
				tag = "row";
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = {
				container = {
					tag = "size-600 padding-xsmall radius-small";
				};
				segment = {
					tag = "padding-small radius-small";
				};
				text = {
					tag = "text-caption-small";
				};
				divider = {
					Size = UDim2.new(0, arg1.Stroke.Standard, 1, 0);
				};
			};
			[InputSize_upvr.Small] = {
				container = {
					tag = "size-800 padding-xsmall radius-medium";
				};
				segment = {
					tag = "padding-small radius-small";
				};
				text = {
					tag = "text-caption-small";
				};
				divider = {
					Size = UDim2.new(0, arg1.Stroke.Standard, 1, 0);
				};
			};
			[InputSize_upvr.Medium] = {
				container = {
					tag = "size-1000 padding-xsmall radius-medium";
				};
				segment = {
					tag = "padding-small radius-small";
				};
				text = {
					tag = "text-caption-medium";
				};
				divider = {
					Size = UDim2.new(0, arg1.Stroke.Standard, 1, 0);
				};
			};
			[InputSize_upvr.Large] = {
				container = {
					tag = "size-1200 padding-xsmall radius-medium";
				};
				segment = {
					tag = "padding-medium radius-small";
				};
				text = {
					tag = "text-caption-medium";
				};
				divider = {
					Size = UDim2.new(0, arg1.Stroke.Standard, 1, 0);
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 65
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("SegmentedControl", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end