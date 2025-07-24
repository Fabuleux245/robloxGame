-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:39
-- Luau version 6, Types version 3
-- Time taken: 0.000476 seconds

local function getRootNavigation_upvr(arg1) -- Line 4, Named "getRootNavigation"
	--[[ Upvalues[1]:
		[1]: getRootNavigation_upvr (readonly)
	]]
	local any__dangerouslyGetParent_result1 = arg1._dangerouslyGetParent()
	if any__dangerouslyGetParent_result1 then
		return getRootNavigation_upvr(any__dangerouslyGetParent_result1)
	end
	return arg1
end
return getRootNavigation_upvr