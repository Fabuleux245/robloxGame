-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:08
-- Luau version 6, Types version 3
-- Time taken: 0.000571 seconds

return function(arg1) -- Line 8
	if not arg1 or arg1.isFullyEligible then
		return false
	end
	local isAgeEligible = arg1.isAgeEligible
	if isAgeEligible then
		isAgeEligible = arg1.isIXPEligible
		if isAgeEligible then
			isAgeEligible = arg1.isRolloutEligible
		end
	end
	return isAgeEligible
end