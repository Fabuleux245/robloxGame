-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:19
-- Luau version 6, Types version 3
-- Time taken: 0.002294 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local InputSize_upvr = require(Foundation.Enums.InputSize)
local Flags_upvr = require(Foundation.Utility.Flags)
local function variantsFactory_upvr(arg1) -- Line 30, Named "variantsFactory"
	--[[ Upvalues[2]:
		[1]: InputSize_upvr (readonly)
		[2]: Flags_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local tbl_7 = {
		input = {
			tag = "radius-small";
			checkedStyle = arg1.Color.ActionSubEmphasis.Background;
			cursorRadius = UDim.new(0, 0);
		};
		checkmark = {
			tag = "position-center-center anchor-center-center content-action-sub-emphasis";
		};
	}
	local tbl_3 = {}
	local tbl_2 = {}
	local tbl_4 = {}
	local udim2 = UDim2.fromOffset(arg1.Size.Size_400, arg1.Size.Size_400)
	tbl_4.size = udim2
	tbl_2.input = tbl_4
	local tbl = {}
	if Flags_upvr.FoundationMigrateIconNames then
		udim2 = "size-400"
	else
		udim2 = "size-300"
	end
	tbl.tag = udim2
	tbl_2.checkmark = tbl
	tbl_3[InputSize_upvr.XSmall] = tbl_2
	local tbl_6 = {
		input = {
			size = UDim2.fromOffset(arg1.Size.Size_500, arg1.Size.Size_500);
		};
	}
	local tbl_5 = {}
	if Flags_upvr.FoundationMigrateIconNames then
		-- KONSTANTWARNING: GOTO [91] #61
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [90] 60. Error Block 29 start (CF ANALYSIS FAILED)
	tbl_5.tag = "size-350"
	tbl_6.checkmark = tbl_5
	tbl_3[InputSize_upvr.Small] = tbl_6
	;({}).input = {
		size = UDim2.fromOffset(arg1.Size.Size_600, arg1.Size.Size_600);
	}
	if Flags_upvr.FoundationMigrateIconNames then
		-- KONSTANTWARNING: GOTO [124] #83
	end
	-- KONSTANTERROR: [90] 60. Error Block 29 end (CF ANALYSIS FAILED)
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2) -- Line 62
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Checkbox", variantsFactory_upvr, arg1)
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2])
end