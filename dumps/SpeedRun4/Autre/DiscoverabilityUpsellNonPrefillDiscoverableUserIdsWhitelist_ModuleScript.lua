-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:46
-- Luau version 6, Types version 3
-- Time taken: 0.000491 seconds

game:DefineFastString("DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist", "")
return {
	isWhitelistedUserId = function(arg1) -- Line 9, Named "isWhitelistedUserId"
		for i in string.gmatch(game:GetFastString("DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist"), "[^,]+") do
			if tostring(arg1) == i then
				return true
			end
		end
		return false
	end;
}