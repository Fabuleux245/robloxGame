-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:46
-- Luau version 6, Types version 3
-- Time taken: 0.000363 seconds

local Parent = script.Parent
local IconSize_upvr = require(Parent.Enum.IconSize)
local getIconSize_upvr = require(Parent.getIconSize)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: IconSize_upvr (readonly)
		[2]: getIconSize_upvr (readonly)
	]]
	assert(IconSize_upvr.isEnumValue(arg1))
	local var4_result1 = getIconSize_upvr(arg1)
	return UDim2.fromOffset(var4_result1, var4_result1)
end