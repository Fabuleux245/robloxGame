-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:22
-- Luau version 6, Types version 3
-- Time taken: 0.002643 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local SliderVariant_upvr = require(Foundation.Enums.SliderVariant)
local InputSize_upvr = require(Foundation.Enums.InputSize)
local function variantsFactory_upvr(arg1) -- Line 38, Named "variantsFactory"
	--[[ Upvalues[2]:
		[1]: SliderVariant_upvr (readonly)
		[2]: InputSize_upvr (readonly)
	]]
	return {
		common = {
			bar = {
				tag = "anchor-center-center position-center-center size-full-100 radius-small";
			};
			fill = {
				tag = "radius-small";
			};
		};
		variants = {
			[SliderVariant_upvr.Emphasis] = {
				bar = {
					tag = "bg-shift-400";
				};
				fill = {
					tag = "bg-emphasis";
				};
				knob = {
					style = arg1.Color.Extended.White.White_100;
					dragStyle = arg1.Color.ActionEmphasis.Background;
					hasShadow = true;
				};
			};
			[SliderVariant_upvr.Standard] = {
				bar = {
					tag = "bg-shift-400 ";
				};
				fill = {
					tag = "bg-system-contrast";
				};
				knob = {
					style = arg1.Color.System.Contrast;
					dragStyle = arg1.Color.System.Contrast;
					hasShadow = false;
				};
			};
			[SliderVariant_upvr.Utility] = {
				knob = {
					style = arg1.Color.None;
					dragStyle = arg1.Color.None;
					stroke = {
						Color = arg1.Color.System.Contrast.Color3;
						Transparency = arg1.Color.System.Contrast.Transparency;
						Thickness = arg1.Stroke.Thicker;
					};
					hasShadow = true;
				};
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = {
				hitbox = {
					height = arg1.Size.Size_300;
				};
			};
			[InputSize_upvr.Small] = {
				hitbox = {
					height = arg1.Size.Size_400;
				};
			};
			[InputSize_upvr.Medium] = {
				hitbox = {
					height = arg1.Size.Size_500;
				};
			};
			[InputSize_upvr.Large] = {
				hitbox = {
					height = arg1.Size.Size_600;
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3) -- Line 87
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Slider", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.variants[arg3], any_useVariants_result1.sizes[arg2])
end