-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:36
-- Luau version 6, Types version 3
-- Time taken: 0.001680 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local function computeProps_upvr(arg1) -- Line 29, Named "computeProps"
	local Offset = arg1.knobSize.X.Offset
	local var3 = (arg1.size.height - Offset) / 2
	return {
		input = {
			tag = arg1.tag;
			size = UDim2.fromOffset(arg1.size.width, arg1.size.height);
		};
		knob = {
			offPosition = UDim2.new(0, var3, 0.5, 0);
			onPosition = UDim2.new(0, arg1.size.width - Offset - var3, 0.5, 0);
		};
	}
end
local InputSize_upvr = require(Foundation.Enums.InputSize)
local getKnobSize_upvr = require(Foundation.Components.Knob.getKnobSize)
local function variantsFactory_upvr(arg1) -- Line 48, Named "variantsFactory"
	--[[ Upvalues[3]:
		[1]: InputSize_upvr (readonly)
		[2]: computeProps_upvr (readonly)
		[3]: getKnobSize_upvr (readonly)
	]]
	return {
		common = {
			input = {
				checkedStyle = arg1.Color.ActionEmphasis.Background;
				cursorRadius = UDim.new(0, 0);
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = computeProps_upvr({
				tag = "radius-large";
				size = {
					width = arg1.Size.Size_700;
					height = arg1.Size.Size_300;
				};
				knobSize = getKnobSize_upvr(arg1, InputSize_upvr.XSmall);
			});
			[InputSize_upvr.Small] = computeProps_upvr({
				tag = "radius-large";
				size = {
					width = arg1.Size.Size_800;
					height = arg1.Size.Size_400;
				};
				knobSize = getKnobSize_upvr(arg1, InputSize_upvr.Small);
			});
			[InputSize_upvr.Medium] = computeProps_upvr({
				tag = "radius-large";
				size = {
					width = arg1.Size.Size_1000;
					height = arg1.Size.Size_500;
				};
				knobSize = getKnobSize_upvr(arg1, InputSize_upvr.Medium);
			});
			[InputSize_upvr.Large] = computeProps_upvr({
				tag = "radius-circle";
				size = {
					width = arg1.Size.Size_1600;
					height = arg1.Size.Size_900;
				};
				knobSize = getKnobSize_upvr(arg1, InputSize_upvr.Large);
			});
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 77
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Toggle", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end