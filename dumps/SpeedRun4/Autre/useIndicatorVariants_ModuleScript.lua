-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:10
-- Luau version 6, Types version 3
-- Time taken: 0.002523 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local IndicatorShape_upvr = require(Foundation.Enums.IndicatorShape)
function mapToProps(arg1, arg2, arg3) -- Line 29
	--[[ Upvalues[1]:
		[1]: IndicatorShape_upvr (readonly)
	]]
	local udim2 = UDim2.fromOffset(arg3, arg3)
	if arg1 == IndicatorShape_upvr.Ring then
		local module = {}
		local tbl = {}
		tbl.imageStyle = arg2
		tbl.Image = "component_assets/circle_15_stroke_3"
		tbl.Size = UDim2.fromOffset(arg3, arg3)
		module.indicator = tbl
		return module
	end
	if arg1 == IndicatorShape_upvr.Circle then
		local module_2 = {}
		local tbl_2 = {}
		tbl_2.imageStyle = arg2
		tbl_2.Image = "component_assets/circle_16"
		tbl_2.Size = udim2
		module_2.indicator = tbl_2
		return module_2
	end
	local module_3 = {}
	local tbl_3 = {}
	tbl_3.imageStyle = arg2
	tbl_3.Size = udim2
	module_3.indicator = tbl_3
	return module_3
end
local IndicatorVariant_upvr = require(Foundation.Enums.IndicatorVariant)
local function variantsFactory_upvr(arg1) -- Line 61, Named "variantsFactory"
	--[[ Upvalues[2]:
		[1]: IndicatorVariant_upvr (readonly)
		[2]: IndicatorShape_upvr (readonly)
	]]
	return {
		shapes = {
			[IndicatorShape_upvr.Circle] = {
				indicator = {
					tag = "radius-circle";
				};
			};
			[IndicatorShape_upvr.Ring] = {
				indicator = {
					tag = "radius-circle";
				};
			};
		};
		variants = {
			[IndicatorVariant_upvr.Success] = arg1.Color.System.Success;
			[IndicatorVariant_upvr.Neutral] = arg1.Color.System.Neutral;
			[IndicatorVariant_upvr.Warning] = arg1.Color.System.Warning;
			[IndicatorVariant_upvr.Emphasis] = arg1.Color.System.Emphasis;
			[IndicatorVariant_upvr.Alert] = arg1.Color.System.Alert;
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3, arg4) -- Line 78
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Indicator", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.shapes[arg2], mapToProps(arg2, any_useVariants_result1.variants[arg3], arg4))
end