-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:45
-- Luau version 6, Types version 3
-- Time taken: 0.001239 seconds

game:DefineFastFlag("BatchVoiceParticipantsUpdates", false)
local var1_upvw
local var2_upvw
if game:GetFastFlag("BatchVoiceParticipantsUpdates") then
	local IXPServiceWrapper_upvr = require(script:FindFirstAncestor("VoiceChatCore").Parent.IXPServiceWrapper).IXPServiceWrapper
	local game_DefineFastString_result1_upvr = game:DefineFastString("ThrottleVoiceParticipantsUpdateLayerName", "Voice.Performance")
	local pcall_result1, pcall_result2 = pcall(function() -- Line 12
		--[[ Upvalues[2]:
			[1]: IXPServiceWrapper_upvr (readonly)
			[2]: game_DefineFastString_result1_upvr (readonly)
		]]
		return IXPServiceWrapper_upvr:GetLayerData(game_DefineFastString_result1_upvr)
	end)
	var1_upvw = pcall_result1
	var2_upvw = pcall_result2
end
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("ThrottleVoiceParticipantsUpdateLayerValue", "BatchVoiceParticipantsUpdates")
return function() -- Line 17
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: var2_upvw (read and write)
		[3]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("BatchVoiceParticipantsUpdates")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = var1_upvw
		if game_GetFastFlag_result1 then
			game_GetFastFlag_result1 = var2_upvw
			if game_GetFastFlag_result1 then
				game_GetFastFlag_result1 = var2_upvw[game_DefineFastString_result1_upvr_2]
			end
		end
	end
	return game_GetFastFlag_result1
end