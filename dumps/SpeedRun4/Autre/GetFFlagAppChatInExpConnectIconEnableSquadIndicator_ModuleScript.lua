-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:19
-- Luau version 6, Types version 3
-- Time taken: 0.000707 seconds

game:DefineFastFlag("AppChatInExpConnectIconEnableSquadIndicator2", false)
local GetFFlagLuaAppEnableSquadPage_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableSquadPage
return function() -- Line 6
	--[[ Upvalues[1]:
		[1]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("AppChatInExpConnectIconEnableSquadIndicator2")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = GetFFlagLuaAppEnableSquadPage_upvr()
	end
	return game_GetFastFlag_result1
end