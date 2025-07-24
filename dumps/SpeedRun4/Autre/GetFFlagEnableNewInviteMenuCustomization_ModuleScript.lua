-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:56:35
-- Luau version 6, Types version 3
-- Time taken: 0.001187 seconds

game:DefineFastFlag("EnableNewInviteMenuCustomization2", false)
game:DefineFastFlag("EnableNewInviteMenuCustomizationIXP2", false)
local NewInviteMenuExperimentManager_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)
return function() -- Line 10
	--[[ Upvalues[1]:
		[1]: NewInviteMenuExperimentManager_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("EnableNewInviteMenuCustomization2")
	if not game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = game:GetFastFlag("EnableNewInviteMenuCustomizationIXP2")
		if game_GetFastFlag_result1 then
			game_GetFastFlag_result1 = NewInviteMenuExperimentManager_upvr.default:getCustomizationEnabled()
		end
	end
	return game_GetFastFlag_result1
end