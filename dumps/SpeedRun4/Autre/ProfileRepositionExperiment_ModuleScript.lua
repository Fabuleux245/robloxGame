-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:45
-- Luau version 6, Types version 3
-- Time taken: 0.000819 seconds

local game_DefineFastFlag_result1 = game:DefineFastFlag("EnableProfileRepositionExperiment", false)
local var4 = "ProfileRepositionEnabledForAll"
local module = {
	FFlagProfileRepositionEnabledForAll = game:DefineFastFlag(var4, false);
	FFlagEnableProfileRepositionExperiment = game_DefineFastFlag_result1;
}
if game_DefineFastFlag_result1 then
	local useUserExperiment_upvr = require(script:FindFirstAncestor("SocialExperiments").Parent.RoactAppExperiment).useUserExperiment
	local game_DefineFastString_result1_upvr = game:DefineFastString("ProfileRepositionExperimentLayer", "Social.Profile")
	function var4() -- Line 16
		--[[ Upvalues[2]:
			[1]: useUserExperiment_upvr (readonly)
			[2]: game_DefineFastString_result1_upvr (readonly)
		]]
		return useUserExperiment_upvr({game_DefineFastString_result1_upvr}, function(arg1) -- Line 19
			--[[ Upvalues[1]:
				[1]: game_DefineFastString_result1_upvr (copied, readonly)
			]]
			local var9 = arg1[game_DefineFastString_result1_upvr]
			if not var9 then
				var9 = {}
			end
			return var9.profileRepositionEnabled
		end)
	end
else
	var4 = function() -- Line 27
	end
end
module.useProfileRepositionExperiment = var4
return module