-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:58
-- Luau version 6, Types version 3
-- Time taken: 0.000444 seconds

local InputSize_upvr = require(script:FindFirstAncestor("Foundation").Enums.InputSize)
return function(arg1, arg2) -- Line 9, Named "getKnobSize"
	--[[ Upvalues[1]:
		[1]: InputSize_upvr (readonly)
	]]
	local var4 = ({
		[InputSize_upvr.XSmall] = arg1.Size.Size_200;
		[InputSize_upvr.Small] = arg1.Size.Size_300;
		[InputSize_upvr.Medium] = arg1.Size.Size_400;
		[InputSize_upvr.Large] = arg1.Size.Size_700;
	})[arg2]
	return UDim2.fromOffset(var4, var4)
end