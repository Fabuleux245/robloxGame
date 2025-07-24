-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:54
-- Luau version 6, Types version 3
-- Time taken: 0.001448 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local InputSize_upvr = require(Foundation.Enums.InputSize)
local function variantsFactory_upvr(arg1) -- Line 27, Named "variantsFactory"
	--[[ Upvalues[1]:
		[1]: InputSize_upvr (readonly)
	]]
	local ceiled = math.ceil(arg1.Stroke.Standard)
	return {
		common = {
			container = {
				tag = "row auto-xy align-x-left align-y-center";
				padding = UDim.new(0, ceiled);
			};
			input = {
				stroke = {
					thickness = ceiled;
				};
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = {
				container = {
					tag = "gap-small";
				};
			};
			[InputSize_upvr.Small] = {
				container = {
					tag = "gap-small";
				};
			};
			[InputSize_upvr.Medium] = {
				container = {
					tag = "gap-medium";
				};
			};
			[InputSize_upvr.Large] = {
				container = {
					tag = "gap-large";
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 47
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("InternalInput", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end