-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:31
-- Luau version 6, Types version 3
-- Time taken: 0.000609 seconds

local module = {
	FFlagEnableSortInvitesByScoreExperiment = game:DefineFastFlag("EnableSortInvitesByScoreExperiment", false);
	FFlagSortInvitesByScoreEnabledForAll = game:DefineFastFlag("SortInvitesByScoreEnabledForAll", false);
}
local useUserExperiment_upvr = require(script:FindFirstAncestor("FriendsMenu").Parent.RoactAppExperiment).useUserExperiment
local game_DefineFastString_result1_upvr = game:DefineFastString("SortInvitesByScoreExperimentLayer", "Social.Friends")
function module.useSortInvitesByScoreExperiment() -- Line 16
	--[[ Upvalues[2]:
		[1]: useUserExperiment_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	return useUserExperiment_upvr({game_DefineFastString_result1_upvr}, function(arg1) -- Line 19
		--[[ Upvalues[1]:
			[1]: game_DefineFastString_result1_upvr (copied, readonly)
		]]
		local var6 = arg1[game_DefineFastString_result1_upvr]
		if not var6 then
			var6 = {}
		end
		return var6.sortInvitesByScore
	end)
end
return module