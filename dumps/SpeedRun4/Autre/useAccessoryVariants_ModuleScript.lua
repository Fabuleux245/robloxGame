-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:21
-- Luau version 6, Types version 3
-- Time taken: 0.003079 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local ChipSize_upvr = require(Foundation.Enums.ChipSize)
local function variantsFactory_upvr(arg1) -- Line 17, Named "variantsFactory"
	--[[ Upvalues[1]:
		[1]: ChipSize_upvr (readonly)
	]]
	return {
		textSpacing = {
			Leading = {
				[ChipSize_upvr.Small] = UDim.new(0, arg1.Padding.XSmall);
				[ChipSize_upvr.Medium] = UDim.new(0, arg1.Size.Size_150);
				[ChipSize_upvr.Large] = UDim.new(0, arg1.Padding.Small);
			};
			Trailing = {
				[ChipSize_upvr.Small] = UDim.new(0, arg1.Size.Size_150);
				[ChipSize_upvr.Medium] = UDim.new(0, arg1.Padding.Small);
				[ChipSize_upvr.Large] = UDim.new(0, arg1.Size.Size_250);
			};
		};
		accessorySpacing = {
			Circular = {
				[ChipSize_upvr.Small] = UDim.new(0, arg1.Size.Size_150);
				[ChipSize_upvr.Medium] = UDim.new(0, arg1.Size.Size_200);
				[ChipSize_upvr.Large] = UDim.new(0, arg1.Size.Size_250);
			};
			Default = {
				[ChipSize_upvr.Small] = UDim.new(0, arg1.Padding.Small);
				[ChipSize_upvr.Medium] = UDim.new(0, arg1.Padding.Medium);
				[ChipSize_upvr.Large] = UDim.new(0, arg1.Padding.Medium);
			};
		};
		accessorySize = {
			Default = {
				[ChipSize_upvr.Small] = UDim2.fromOffset(arg1.Size.Size_300, arg1.Size.Size_300);
				[ChipSize_upvr.Medium] = UDim2.fromOffset(arg1.Size.Size_400, arg1.Size.Size_400);
				[ChipSize_upvr.Large] = UDim2.fromOffset(arg1.Size.Size_500, arg1.Size.Size_500);
			};
			Circular = {
				[ChipSize_upvr.Small] = UDim2.fromOffset(arg1.Size.Size_400, arg1.Size.Size_400);
				[ChipSize_upvr.Medium] = UDim2.fromOffset(arg1.Size.Size_500, arg1.Size.Size_500);
				[ChipSize_upvr.Large] = UDim2.fromOffset(arg1.Size.Size_600, arg1.Size.Size_600);
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3, arg4) -- Line 65
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local var16 = "ChipAccessory"
	local any_useVariants_result1 = VariantsContext_upvr.useVariants(var16, variantsFactory_upvr, arg1)
	local var18
	if arg4 then
		var16 = "Circular"
	else
		var16 = "Default"
	end
	if arg4 then
		var18 = "Leading"
	else
		var18 = "Trailing"
	end
	local module = {}
	local tbl = {
		Size = any_useVariants_result1.accessorySize[var16][arg2];
	}
	if arg3 then
		local tbl_2 = {
			left = any_useVariants_result1.accessorySpacing[var16][arg2];
			right = any_useVariants_result1.textSpacing[var18][arg2];
		}
	else
	end
	tbl.padding = {
		left = any_useVariants_result1.textSpacing[var18][arg2];
		right = any_useVariants_result1.accessorySpacing[var16][arg2];
	}
	module.accessory = tbl
	return composeStyleVariant_upvr(module)
end