-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:38
-- Luau version 6, Types version 3
-- Time taken: 0.003256 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local InputSize_upvr = require(Foundation.Enums.InputSize)
local Flags_upvr = require(Foundation.Utility.Flags)
local ControlState_upvr = require(Foundation.Enums.ControlState)
local Cryo_upvr = require(Foundation.Parent.Cryo)
local function variantsFactory_upvr(arg1) -- Line 40, Named "variantsFactory"
	--[[ Upvalues[4]:
		[1]: InputSize_upvr (readonly)
		[2]: Flags_upvr (readonly)
		[3]: ControlState_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local tbl_6 = {
		container = {
			tag = "row radius-medium align-y-center flex-x-between stroke-standard";
		};
		text = {
			tag = "auto-xy";
		};
	}
	local tbl_5 = {}
	local tbl_3 = {}
	local tbl = {}
	local Size = arg1.Size
	tbl.height = UDim.new(0, Size.Size_600)
	if Flags_upvr.FoundationFixInputFieldWidth then
		Size = "size-full-600"
	else
		Size = ""
	end
	tbl.tag = `padding-small {Size}`
	tbl_3.container = tbl
	tbl_3.text = {
		tag = "text-body-small";
	}
	tbl_3.arrow = {
		size = InputSize_upvr.Small;
	}
	tbl_5[InputSize_upvr.XSmall] = tbl_3
	local tbl_2 = {}
	local tbl_4 = {
		height = UDim.new(0, arg1.Size.Size_800);
	}
	if Flags_upvr.FoundationFixInputFieldWidth then
		-- KONSTANTWARNING: GOTO [84] #60
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 59. Error Block 29 start (CF ANALYSIS FAILED)
	tbl_4.tag = `padding-medium {""}`
	tbl_2.container = tbl_4
	tbl_2.text = {
		tag = "text-body-small";
	}
	tbl_2.arrow = {
		size = InputSize_upvr.Small;
	}
	tbl_5[InputSize_upvr.Small] = tbl_2
	local _ = {
		size = UDim2.new(1, 0, 0, arg1.Size.Size_1000);
		height = UDim.new(0, arg1.Size.Size_1000);
	}
	if Flags_upvr.FoundationFixInputFieldWidth then
		-- KONSTANTWARNING: GOTO [142] #100
	end
	-- KONSTANTERROR: [83] 59. Error Block 29 end (CF ANALYSIS FAILED)
end
local VariantsContext_upvr = require(Foundation.Providers.Style.VariantsContext)
local composeStyleVariant_upvr = require(Foundation.Utility.composeStyleVariant)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 128
	--[[ Upvalues[3]:
		[1]: VariantsContext_upvr (readonly)
		[2]: variantsFactory_upvr (readonly)
		[3]: composeStyleVariant_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useVariants_result1 = VariantsContext_upvr.useVariants("Dropdown", variantsFactory_upvr, arg1)
	local var24
	if arg5 then
		var24 = "Error"
	else
		var24 = arg3
	end
	if arg4 then
	else
	end
	return composeStyleVariant_upvr(any_useVariants_result1.common, any_useVariants_result1.sizes[arg2], any_useVariants_result1.states[var24])
end