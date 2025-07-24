-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:36
-- Luau version 6, Types version 3
-- Time taken: 0.001811 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local DividerVariant_upvr = require(Foundation.Enums.DividerVariant)
local function variantsFactory_upvr(arg1) -- Line 23, Named "variantsFactory"
	--[[ Upvalues[1]:
		[1]: DividerVariant_upvr (readonly)
	]]
	return {
		common = {
			container = {
				tag = "size-full-0 auto-y col";
			};
			stroke = {
				tag = "size-full-50";
				backgroundStyle = arg1.Color.Stroke.Default;
			};
			line = {
				tag = "size-full-200";
				position = UDim2.new(0, 0, 0, arg1.Size.Size_50);
				backgroundStyle = arg1.Color.Common.HeavyDivider;
			};
		};
		padding = {
			[DividerVariant_upvr.Inset] = {
				container = {
					tag = "padding-x-xlarge";
				};
			};
			[DividerVariant_upvr.InsetLeft] = {
				container = {
					tag = "padding-left-xlarge";
				};
			};
			[DividerVariant_upvr.InsetRight] = {
				container = {
					tag = "padding-right-xlarge";
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 60
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Divider", variantsFactory_upvr, arg1)
	local var19 = any_useVariants_result1.padding[arg2]
	if not var19 then
		var19 = {}
	end
	return composeStyleVariant_upvr(any_useVariants_result1.common, var19)
end