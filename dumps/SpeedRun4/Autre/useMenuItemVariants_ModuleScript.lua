-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:03
-- Luau version 6, Types version 3
-- Time taken: 0.002339 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local InputSize_upvr = require(Foundation.Enums.InputSize)
local function var2_upvr(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: InputSize_upvr (readonly)
	]]
	return {
		common = {
			container = {
				tag = "row align-y-center flex-x-between";
			};
			icon = {
				tag = "content-emphasis";
			};
			text = {
				tag = "content-emphasis auto-y grow text-align-x-left text-truncate-end";
			};
			check = {
				tag = "content-emphasis";
			};
		};
		sizes = {
			[InputSize_upvr.XSmall] = {
				container = {
					tag = "size-full-600 radius-small padding-x-xsmall gap-xsmall";
				};
				icon = {
					tag = "size-400";
				};
				text = {
					tag = "text-title-small";
				};
				check = {
					tag = "size-300";
				};
			};
			[InputSize_upvr.Small] = {
				container = {
					tag = "size-full-800 radius-medium padding-x-small gap-xsmall";
				};
				icon = {
					tag = "size-500";
				};
				text = {
					tag = "text-title-small";
				};
				check = {
					tag = "size-400";
				};
			};
			[InputSize_upvr.Medium] = {
				container = {
					tag = "size-full-1000 radius-medium padding-x-small gap-small";
				};
				icon = {
					tag = "size-600";
				};
				text = {
					tag = "text-title-medium";
				};
				check = {
					tag = "size-500";
				};
			};
			[InputSize_upvr.Large] = {
				container = {
					tag = "size-full-1200 radius-medium padding-x-small gap-small";
				};
				icon = {
					tag = "size-700";
				};
				text = {
					tag = "text-title-large";
				};
				check = {
					tag = "size-600";
				};
			};
		};
		isChecked = {
			[false] = {
				container = {
					tag = "";
				};
			};
			[true] = {
				container = {
					tag = "bg-surface-200";
				};
			};
		};
	}
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3) -- Line 63
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: var2_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("MenuItem", var2_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2], any_useVariants_result1.isChecked[arg3])
end