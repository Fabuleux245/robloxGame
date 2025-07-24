-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:35
-- Luau version 6, Types version 3
-- Time taken: 0.001848 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local DialogSize_upvr = require(Foundation.Enums.DialogSize)
local tbl_upvr = {
	[DialogSize_upvr.Small] = 360;
	[DialogSize_upvr.Large] = 640;
}
local function variantsFactory_upvr(arg1) -- Line 33, Named "variantsFactory"
	--[[ Upvalues[2]:
		[1]: DialogSize_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	return {
		common = {
			container = {
				tag = "size-full-full col align-x-center align-y-center";
			};
			dialog = {
				tag = "size-full-0 auto-y shrink-1 bg-surface-100 clip radius-medium";
			};
		};
		size = {
			[DialogSize_upvr.Small] = {
				container = {
					margin = "margin-small";
				};
				dialog = {
					maxWidth = tbl_upvr[DialogSize_upvr.Small];
				};
			};
			[DialogSize_upvr.Large] = {
				container = {
					margin = "margin-large";
				};
				dialog = {
					maxWidth = tbl_upvr[DialogSize_upvr.Large];
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 65
	--[[ Upvalues[4]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
		[4]: DialogSize_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Dialog", variantsFactory_upvr, arg1)
	local var19 = any_useVariants_result1.size[arg2]
	if not var19 then
		var19 = any_useVariants_result1.size[DialogSize_upvr.Large]
	end
	return composeStyleVariant_upvr(any_useVariants_result1.common, var19)
end