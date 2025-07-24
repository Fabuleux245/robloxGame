-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:59
-- Luau version 6, Types version 3
-- Time taken: 0.002133 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local function computeProps_upvr(arg1) -- Line 31, Named "computeProps"
	local var2 = arg1.size.X.Offset + arg1.shadowPadding * 2
	return {
		knob = {
			size = arg1.size;
		};
		knobShadow = {
			size = UDim2.fromOffset(var2, var2);
			padding = arg1.shadowPadding;
		};
	}
end
local InputSize_upvr = require(Foundation.Enums.InputSize)
local getKnobSize_upvr = require(script.Parent.getKnobSize)
local function variantsFactory_upvr(arg1) -- Line 48, Named "variantsFactory"
	--[[ Upvalues[3]:
		[1]: InputSize_upvr (readonly)
		[2]: computeProps_upvr (readonly)
		[3]: getKnobSize_upvr (readonly)
	]]
	return {
		common = {
			knob = {
				tag = "radius-circle";
				style = arg1.Color.Extended.White.White_100;
			};
			knobShadow = {
				tag = "anchor-center-center position-center-center";
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = computeProps_upvr({
				size = getKnobSize_upvr(arg1, InputSize_upvr.XSmall);
				shadowPadding = arg1.Padding.XXSmall;
			});
			[InputSize_upvr.Small] = computeProps_upvr({
				size = getKnobSize_upvr(arg1, InputSize_upvr.Small);
				shadowPadding = arg1.Padding.XSmall;
			});
			[InputSize_upvr.Medium] = computeProps_upvr({
				size = getKnobSize_upvr(arg1, InputSize_upvr.Medium);
				shadowPadding = arg1.Padding.Small;
			});
			[InputSize_upvr.Large] = computeProps_upvr({
				size = getKnobSize_upvr(arg1, InputSize_upvr.Large);
				shadowPadding = arg1.Padding.Small;
			});
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 81
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Knob", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end