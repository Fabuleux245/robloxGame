-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:54
-- Luau version 6, Types version 3
-- Time taken: 0.000676 seconds

local CorePackages = game:GetService("CorePackages")
local GetFFlagEnableInGameMenuChromeABTest_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInGameMenuChromeABTest
local GetFFlagEnableInGameMenuSongbirdABTest_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInGameMenuSongbirdABTest
return function() -- Line 6
	--[[ Upvalues[2]:
		[1]: GetFFlagEnableInGameMenuChromeABTest_upvr (readonly)
		[2]: GetFFlagEnableInGameMenuSongbirdABTest_upvr (readonly)
	]]
	local game_GetEngineFeature_result1 = game:GetEngineFeature("ExperienceMenuABTest")
	if game_GetEngineFeature_result1 then
		game_GetEngineFeature_result1 = GetFFlagEnableInGameMenuChromeABTest_upvr()
		if not game_GetEngineFeature_result1 then
			game_GetEngineFeature_result1 = GetFFlagEnableInGameMenuSongbirdABTest_upvr()
		end
	end
	return game_GetEngineFeature_result1
end