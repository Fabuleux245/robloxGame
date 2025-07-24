-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:24:59
-- Luau version 6, Types version 3
-- Time taken: 0.000529 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableChatNewMessage", false)
local GetFFlagEnableAppChatInExperience_upvr = require(script.Parent.GetFFlagEnableAppChatInExperience)
return function() -- Line 5
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: GetFFlagEnableAppChatInExperience_upvr (readonly)
	]]
	local var4 = game_DefineFastFlag_result1_upvr
	if var4 then
		var4 = GetFFlagEnableAppChatInExperience_upvr()
	end
	return var4
end