-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:42
-- Luau version 6, Types version 3
-- Time taken: 0.001314 seconds

game:DefineFastFlag("InGameLargerRobuxUpsellIXP", false)
game:DefineFastFlag("InGameLargerRobuxUpsellIXPRolledOut", false)
game:DefineFastFlag("InGameLargerRobuxUpsellEnabled", false)
game:DefineFastString("InGameLargerRobuxUpsellIXPLayerParam", "isInExperiment")
local function _() -- Line 20, Named "isRolledOut"
	local game_GetFastFlag_result1_4 = game:GetFastFlag("InGameLargerRobuxUpsellEnabled")
	if not game_GetFastFlag_result1_4 then
		game_GetFastFlag_result1_4 = game:GetFastFlag("InGameLargerRobuxUpsellIXPRolledOut")
	end
	return game_GetFastFlag_result1_4
end
return {
	isEnabled = function() -- Line 24, Named "isEnabled"
		local game_GetFastFlag_result1_3 = game:GetFastFlag("InGameLargerRobuxUpsellEnabled")
		if not game_GetFastFlag_result1_3 then
			game_GetFastFlag_result1_3 = game:GetFastFlag("InGameLargerRobuxUpsellIXP")
		end
		return game_GetFastFlag_result1_3
	end;
	isEnabledForAll = function() -- Line 16, Named "isEnabledForAll"
		return game:GetFastFlag("InGameLargerRobuxUpsellEnabled")
	end;
	isUserEnrolled = function(arg1) -- Line 28, Named "isUserEnrolled"
		if game:GetFastFlag("InGameLargerRobuxUpsellEnabled") then
			return true
		end
		local game_GetFastFlag_result1 = game:GetFastFlag("InGameLargerRobuxUpsellEnabled")
		if not game_GetFastFlag_result1 then
			game_GetFastFlag_result1 = game:GetFastFlag("InGameLargerRobuxUpsellIXP")
		end
		if not game_GetFastFlag_result1 then
			return false
		end
		local var4 = arg1
		if not var4 then
			var4 = {}
		end
		local var5 = var4
		local game_GetFastString_result1 = game:GetFastString("InGameLargerRobuxUpsellIXPLayerParam")
		if var5[game_GetFastString_result1] == nil then
			local game_GetFastFlag_result1_2 = game:GetFastFlag("InGameLargerRobuxUpsellEnabled")
			if not game_GetFastFlag_result1_2 then
				game_GetFastFlag_result1_2 = game:GetFastFlag("InGameLargerRobuxUpsellIXPRolledOut")
			end
			return game_GetFastFlag_result1_2
		end
		return var5[game_GetFastString_result1]
	end;
}