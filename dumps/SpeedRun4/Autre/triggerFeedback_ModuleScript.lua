-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:29
-- Luau version 6, Types version 3
-- Time taken: 0.000877 seconds

local SoundManager = require(script:FindFirstAncestor("InteractionFeedback").Parent.SoundManager)
local SoundManager_upvr = SoundManager.SoundManager
SoundManager_upvr.init()
local Sounds_upvr = SoundManager.Sounds
local SoundGroups_upvr = SoundManager.SoundGroups
local triggerHaptic_upvr = require(script.Parent.triggerHaptic)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 16, Named "triggerFeedback"
	--[[ Upvalues[4]:
		[1]: Sounds_upvr (readonly)
		[2]: SoundManager_upvr (readonly)
		[3]: SoundGroups_upvr (readonly)
		[4]: triggerHaptic_upvr (readonly)
	]]
	if not arg3 then
		error("No config table was provided to InteractionFeedbackManager. Something is wrong.")
	end
	local var6 = arg3[arg1]
	if not var6 then
	else
		local var7 = var6[arg2]
		if not var7 then return end
		local Sound = var7.Sound
		if Sound then
			local var9 = Sounds_upvr[Sound]
			if not var9 then
				error("Sound "..Sound.." not found in SoundManager given contextKey: "..arg1.." and interactionType: "..tostring(arg2)..". Please check the Sounds.lua file.")
			end
			SoundManager_upvr:PlaySound(var9.Name, {}, SoundGroups_upvr.AppBackground)
		end
		local Haptic = var7.Haptic
		if Haptic then
			triggerHaptic_upvr(Haptic, arg4, arg5, arg6)
		end
	end
end