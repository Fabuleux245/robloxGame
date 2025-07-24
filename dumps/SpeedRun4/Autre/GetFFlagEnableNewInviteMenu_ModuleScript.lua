-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:56:34
-- Luau version 6, Types version 3
-- Time taken: 0.000951 seconds

game:DefineFastInt("EnableNewInviteMenuStyleRollout", 0)
game:DefineFastFlag("EnableNewInviteMenuStyle", false)
local Players_upvr = game:GetService("Players")
local NewInviteMenuExperimentManager_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame.NewInviteMenuExperimentManager)
return function() -- Line 10
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: NewInviteMenuExperimentManager_upvr (readonly)
	]]
	if not Players_upvr.LocalPlayer then
		return false
	end
	if game:GetFastFlag("EnableNewInviteMenuStyle") then
		return true
	end
	if Players_upvr.LocalPlayer.UserId % 100 < game:GetFastInt("EnableNewInviteMenuStyleRollout") then
		return true
	end
	return NewInviteMenuExperimentManager_upvr.default:getStyleEnabled()
end