-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:31
-- Luau version 6, Types version 3
-- Time taken: 0.000626 seconds

local module = {}
local var2_upvw
local game_DefineFastString_result1_upvr = game:DefineFastString("RccInExperienceNameSettingsEnabledAllowList", "")
function module.isAllowListedUserId(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	local var6
	if var6 == nil then
		var6 = {}
		var2_upvw = var6
		var6 = string.gmatch(game_DefineFastString_result1_upvr, "[^,]+")
		local string_gmatch_result1, string_gmatch_result2, string_gmatch_result3 = string.gmatch(game_DefineFastString_result1_upvr, "[^,]+")
		for i in string_gmatch_result1, string_gmatch_result2, string_gmatch_result3 do
			var2_upvw[i] = true
		end
	end
	if var2_upvw[tostring(arg1)] ~= true then
		string_gmatch_result1 = false
	else
		string_gmatch_result1 = true
	end
	return string_gmatch_result1
end
return module