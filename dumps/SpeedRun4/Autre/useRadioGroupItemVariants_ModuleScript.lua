-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:14
-- Luau version 6, Types version 3
-- Time taken: 0.001301 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local InputSize_upvr = require(Foundation.Enums.InputSize)
local function variantsFactory_upvr(arg1) -- Line 28, Named "variantsFactory"
	--[[ Upvalues[1]:
		[1]: InputSize_upvr (readonly)
	]]
	return {
		common = {
			input = {
				tag = "radius-circle";
				cursorRadius = UDim.new(0, arg1.Radius.Circle);
			};
			checkmark = {
				tag = "position-center-center anchor-center-center radius-circle";
				style = arg1.Inverse.Content.Emphasis;
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = {
				input = {
					size = UDim2.fromOffset(arg1.Size.Size_400, arg1.Size.Size_400);
				};
				checkmark = {
					tag = "size-150";
				};
			};
			[InputSize_upvr.Small] = {
				input = {
					size = UDim2.fromOffset(arg1.Size.Size_500, arg1.Size.Size_500);
				};
				checkmark = {
					tag = "size-200";
				};
			};
			[InputSize_upvr.Medium] = {
				input = {
					size = UDim2.fromOffset(arg1.Size.Size_600, arg1.Size.Size_600);
				};
				checkmark = {
					tag = "size-250";
				};
			};
			[InputSize_upvr.Large] = {
				input = {
					size = UDim2.fromOffset(arg1.Size.Size_700, arg1.Size.Size_700);
				};
				checkmark = {
					tag = "size-300";
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 59
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("RadioItem", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end