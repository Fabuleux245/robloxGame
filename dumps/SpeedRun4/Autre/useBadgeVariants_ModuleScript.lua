-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:13
-- Luau version 6, Types version 3
-- Time taken: 0.001734 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local BadgeVariant_upvr = require(Foundation.Enums.BadgeVariant)
function variantsFactory(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: BadgeVariant_upvr (readonly)
	]]
	return {
		common = {
			container = {
				tag = "radius-circle row align-y-center align-x-center gap-xsmall";
			};
			text = {
				tag = "auto-xy text-label-small";
			};
		};
		variants = {
			[BadgeVariant_upvr.Alert] = {
				container = {
					backgroundStyle = arg1.Color.System.Alert;
				};
				content = {
					style = arg1.DarkMode.Content.Emphasis;
				};
			};
			[BadgeVariant_upvr.Success] = {
				container = {
					backgroundStyle = arg1.Color.System.Success;
				};
				content = {
					style = arg1.LightMode.Content.Emphasis;
				};
			};
			[BadgeVariant_upvr.Warning] = {
				container = {
					backgroundStyle = arg1.Color.System.Warning;
				};
				content = {
					style = arg1.LightMode.Content.Emphasis;
				};
			};
			[BadgeVariant_upvr.Contrast] = {
				container = {
					backgroundStyle = arg1.Color.System.Contrast;
				};
				content = {
					style = arg1.Inverse.Content.Emphasis;
				};
			};
			[BadgeVariant_upvr.Neutral] = {
				container = {
					backgroundStyle = arg1.Color.Shift.Shift_300;
				};
				content = {
					style = arg1.Color.Content.Emphasis;
				};
			};
			[BadgeVariant_upvr.OverMedia] = {
				container = {
					backgroundStyle = arg1.LightMode.Surface.Surface_100;
					stroke = {
						Color = arg1.LightMode.Stroke.Default.Color3;
						Transparency = arg1.LightMode.Stroke.Default.Transparency;
					};
				};
				content = {
					style = arg1.LightMode.Content.Emphasis;
				};
			};
		};
		iconOnly = {
			[true] = {
				container = {
					tag = "size-600";
				};
			};
			[false] = {
				container = {
					tag = "size-0-600 auto-x padding-x-small";
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3) -- Line 98
	--[[ Upvalues[2]:
		[1]: VariantsContext_upvr (readonly)
		[2]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Badge", variantsFactory, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.variants[arg2], any_useVariants_result1.iconOnly[arg3])
end