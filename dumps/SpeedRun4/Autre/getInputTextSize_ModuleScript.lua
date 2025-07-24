-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:32
-- Luau version 6, Types version 3
-- Time taken: 0.000631 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local InputSize = require(Foundation.Enums.InputSize)
local InputLabelSize = require(Foundation.Enums.InputLabelSize)
local module_upvr = {
	[InputSize.XSmall] = InputLabelSize.Small;
	[InputSize.Small] = InputLabelSize.Medium;
	[InputSize.Medium] = InputLabelSize.Medium;
	[InputSize.Large] = InputLabelSize.Medium;
}
local module_upvr_2 = {
	[InputSize.Large] = InputLabelSize.Large;
	[InputSize.Medium] = InputLabelSize.Medium;
	[InputSize.Small] = InputLabelSize.Small;
	[InputSize.XSmall] = InputLabelSize.Small;
}
local Flags_upvr = require(Foundation.Utility.Flags)
return function(arg1, arg2) -- Line 29, Named "getInputTextSize"
	--[[ Upvalues[3]:
		[1]: Flags_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
	]]
	if Flags_upvr.FoundationStandardizeInputLabelSizes then
		return module_upvr_2[arg1]
	end
	if not arg2 then
		return module_upvr[arg1]
	end
	return module_upvr_2[arg1]
end