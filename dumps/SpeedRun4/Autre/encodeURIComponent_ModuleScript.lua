-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:53
-- Luau version 6, Types version 3
-- Time taken: 0.000504 seconds

local function formatCharacter_upvr(arg1) -- Line 1, Named "formatCharacter"
	return string.format("%%%02X", arg1:byte(1, 1))
end
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: formatCharacter_upvr (readonly)
	]]
	return arg1:gsub("[^%w_%-%!%.%~%*%'%(%)]", formatCharacter_upvr)
end