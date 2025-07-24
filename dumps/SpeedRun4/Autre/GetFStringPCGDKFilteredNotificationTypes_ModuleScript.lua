-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:17
-- Luau version 6, Types version 3
-- Time taken: 0.000516 seconds

game:DefineFastString("PCGDKFilteredNotificationTypes", "ExperienceInvitation,SquadExperienceInvitation")
return function() -- Line 3
	local game_GetFastString_result1 = game:GetFastString("PCGDKFilteredNotificationTypes")
	if game_GetFastString_result1 == "" then
		return {}
	end
	for _, v in ipairs(string.split(game_GetFastString_result1, ',')) do
		local any_match_result1 = v:match("^%s*(.-)%s*$")
		if any_match_result1 ~= "" then
			({})[any_match_result1] = true
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end