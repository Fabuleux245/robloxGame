-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:22
-- Luau version 6, Types version 3
-- Time taken: 0.002760 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local ChipSize_upvr = require(Foundation.Enums.ChipSize)
local function variantsFactory_upvr(arg1) -- Line 14, Named "variantsFactory"
	--[[ Upvalues[1]:
		[1]: ChipSize_upvr (readonly)
	]]
	return {
		common = {
			chip = {
				tag = "row auto-x align-y-center align-x-center clip radius-circle";
			};
			text = {
				tag = "auto-x size-0-full shrink text-truncate-end";
			};
		};
		sizes = {
			[ChipSize_upvr.Small] = {
				chip = {
					tag = "size-0-600";
				};
				text = {
					tag = "text-label-small";
				};
			};
			[ChipSize_upvr.Medium] = {
				chip = {
					tag = "size-0-800";
				};
				text = {
					tag = "text-label-medium";
				};
			};
			[ChipSize_upvr.Large] = {
				chip = {
					tag = "size-0-1000";
				};
				text = {
					tag = "text-label-medium";
				};
			};
		};
		isChecked = {
			[true] = {
				chip = {
					backgroundStyle = arg1.Inverse.Surface.Surface_0;
				};
				text = {
					contentStyle = arg1.Inverse.Content.Emphasis;
				};
			};
			[false] = {
				chip = {
					backgroundStyle = arg1.Color.ActionStandard.Background;
				};
				text = {
					contentStyle = arg1.Color.ActionStandard.Foreground;
				};
			};
		};
		textSpacing = {
			[ChipSize_upvr.Small] = UDim.new(0, arg1.Padding.Small);
			[ChipSize_upvr.Medium] = UDim.new(0, arg1.Padding.Medium);
			[ChipSize_upvr.Large] = UDim.new(0, arg1.Padding.Large);
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 59
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Chip", variantsFactory_upvr, arg1)
	local module = {}
	local tbl = {}
	local tbl_2 = {}
	local var32
	if arg4 then
		var32 = nil
	else
		var32 = any_useVariants_result1.textSpacing[arg2]
	end
	tbl_2.left = var32
	if arg5 then
		var32 = nil
	else
		var32 = any_useVariants_result1.textSpacing[arg2]
	end
	tbl_2.right = var32
	tbl.padding = tbl_2
	module.text = tbl
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2], module, any_useVariants_result1.isChecked[arg3])
end