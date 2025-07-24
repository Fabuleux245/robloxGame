-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:05
-- Luau version 6, Types version 3
-- Time taken: 0.000981 seconds

local GetFFlagUseCommunitiesTranslation_upvr = require(script:FindFirstAncestor("AppChat").Parent.SharedFlags).GetFFlagUseCommunitiesTranslation
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatCommunitiesGlobeIcon", false)
return function() -- Line 14
	--[[ Upvalues[2]:
		[1]: GetFFlagUseCommunitiesTranslation_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4 = "CommonUI.Features.Label.sGroups"
	local var5
	if GetFFlagUseCommunitiesTranslation_upvr() then
		var4 = "Feature.SocialTab.Label.Groups"
	end
	if game_DefineFastFlag_result1_upvr then
		var5 = "icons/menu/community_medium"
	end
	return {
		label = var4;
		icon = var5;
		iconLarge = "icons/menu/community_medium";
	}
end