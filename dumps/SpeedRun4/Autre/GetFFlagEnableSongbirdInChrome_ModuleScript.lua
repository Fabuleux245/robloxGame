-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:22
-- Luau version 6, Types version 3
-- Time taken: 0.000541 seconds

local Chrome = script:FindFirstAncestor("Chrome")
game:DefineFastFlag("EnableSongbirdInChrome2", false)
local GetFFlagSongbirdDisableExperienceAccess_upvr = require(Chrome.Flags.GetFFlagSongbirdDisableExperienceAccess)
local IsExperienceMenuABTestEnabled_upvr = require(Chrome.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager_upvr = require(Chrome.Parent.ExperienceMenuABTestManager)
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: GetFFlagSongbirdDisableExperienceAccess_upvr (readonly)
		[2]: IsExperienceMenuABTestEnabled_upvr (readonly)
		[3]: ExperienceMenuABTestManager_upvr (readonly)
	]]
	if GetFFlagSongbirdDisableExperienceAccess_upvr() then
		return false
	end
	if IsExperienceMenuABTestEnabled_upvr() and ExperienceMenuABTestManager_upvr.default:shouldShowSongbirdUnibar() then
		return true
	end
	return game:GetFastFlag("EnableSongbirdInChrome2")
end