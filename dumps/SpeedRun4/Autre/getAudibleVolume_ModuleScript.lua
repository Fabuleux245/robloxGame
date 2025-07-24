-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:23
-- Luau version 6, Types version 3
-- Time taken: 0.000897 seconds

local safelyAccessProperty_upvr = require(script:FindFirstAncestor("SceneUnderstanding").safelyAccessProperty)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
return function(arg1) -- Line 19, Named "getAudibleVolume"
	--[[ Upvalues[2]:
		[1]: safelyAccessProperty_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
	]]
	if not arg1.IsPlaying then
		return 0
	end
	local var3 = arg1
	if arg1.SoundGroup then
		var3 = arg1.SoundGroup.Volume
	else
		var3 = 1
	end
	return safelyAccessProperty_upvr(UserGameSettings_upvr, "MasterVolume", 0) * var3 * arg1.Volume * safelyAccessProperty_upvr(var3, "RollOffGain", 0)
end