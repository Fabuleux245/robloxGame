-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:06
-- Luau version 6, Types version 3
-- Time taken: 0.000396 seconds

return function(arg1) -- Line 1
	if not arg1 then
		return false
	end
	local any_getScreenProps_result1 = arg1.getScreenProps("isVisible", false)
	if not any_getScreenProps_result1 then
		any_getScreenProps_result1 = not arg1.getScreenProps("wideMode", false)
	end
	return any_getScreenProps_result1
end