-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:09
-- Luau version 6, Types version 3
-- Time taken: 0.002697 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local UserPresence_upvr = require(Foundation.Enums.UserPresence)
local InputSize_upvr = require(Foundation.Enums.InputSize)
local IndicatorShape_upvr = require(Foundation.Enums.IndicatorShape)
local IndicatorVariant_upvr = require(Foundation.Enums.IndicatorVariant)
local function variantsFactory_upvr(arg1) -- Line 45, Named "variantsFactory"
	--[[ Upvalues[4]:
		[1]: InputSize_upvr (readonly)
		[2]: UserPresence_upvr (readonly)
		[3]: IndicatorShape_upvr (readonly)
		[4]: IndicatorVariant_upvr (readonly)
	]]
	return {
		common = {
			container = {
				tag = "radius-circle";
			};
			avatar = {
				tag = "radius-circle size-full";
			};
			indicatorBackplate = {
				ZIndex = 2;
				tag = "bg-surface-0 anchor-bottom-right radius-circle auto-xy position-bottom-right";
				padding = UDim2.fromOffset(3, 3);
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = {
				indicator = {
					size = arg1.Size.Size_150;
				};
			};
			[InputSize_upvr.Small] = {
				indicator = {
					size = arg1.Size.Size_150;
				};
			};
			[InputSize_upvr.Medium] = {
				indicator = {
					size = arg1.Size.Size_200;
				};
			};
			[InputSize_upvr.Large] = {
				indicator = {
					size = arg1.Size.Size_200;
				};
			};
		};
		presence = {
			[UserPresence_upvr.InExperience] = {};
			[UserPresence_upvr.Away] = {
				indicator = {
					shape = IndicatorShape_upvr.Ring;
					variant = IndicatorVariant_upvr.Neutral;
				};
			};
			[UserPresence_upvr.Active] = {
				indicator = {
					shape = IndicatorShape_upvr.Circle;
					variant = IndicatorVariant_upvr.Success;
				};
			};
			[UserPresence_upvr.None] = {};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
local indexBindable_upvr = require(Foundation.Utility.indexBindable)
return function(arg1, arg2, arg3, arg4) -- Line 77
	--[[ Upvalues[5]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: UserPresence_upvr (readonly)
		[4]: composeStyleVariant_upvr (readonly)
		[5]: indexBindable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var29 = "Avatar"
	local any_useVariants_result1 = VariantsContext_upvr.useVariants(var29, variantsFactory_upvr, arg1)
	if arg3 == UserPresence_upvr.InExperience then
		var29 = arg1.Color.System.Emphasis
	else
		var29 = arg4
	end
	local module = {}
	local tbl_2 = {}
	if var29 then
		local tbl = {
			Color = indexBindable_upvr(var29, "Color3");
			Transparency = indexBindable_upvr(var29, "Transparency");
			Thickness = arg1.Stroke.Thicker;
		}
	else
	end
	tbl_2.stroke = nil
	tbl_2.backgroundStyle = arg4
	module.container = tbl_2
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2], any_useVariants_result1.presence[arg3], module)
end