-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:49
-- Luau version 6, Types version 3
-- Time taken: 0.001675 seconds

local IXPServiceWrapper_upvr = require(script:FindFirstAncestor("ExpChat").IXPServiceWrapper)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("ChatMemoizationIXPLayerName", "Voice.Performance")
local game_DefineFastString_result1_upvr = game:DefineFastString("ChatMemoizationIXPLayerValue", "ChatMemoizationEnabled")
local var4_upvw
if game:DefineFastFlag("EnableChatWindowMemoizationV2", false) then
	local pcall_result1, pcall_result2 = pcall(function() -- Line 13
		--[[ Upvalues[2]:
			[1]: IXPServiceWrapper_upvr (readonly)
			[2]: game_DefineFastString_result1_upvr_2 (readonly)
		]]
		return IXPServiceWrapper_upvr:GetLayerData(game_DefineFastString_result1_upvr_2)
	end)
	var4_upvw = pcall_result1
	local var8_upvw = pcall_result2
	if not var4_upvw or not var8_upvw or var8_upvw[game_DefineFastString_result1_upvr] == nil then
		return function() -- Line 19
			return false
		end
	end
	IXPServiceWrapper_upvr:LogUserLayerExposure(game_DefineFastString_result1_upvr_2)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugEnableChatWindowMemoization", false)
return function() -- Line 27
	--[[ Upvalues[4]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: var8_upvw (read and write)
		[4]: game_DefineFastString_result1_upvr (readonly)
	]]
	local var15 = game_DefineFastFlag_result1_upvr
	if not var15 then
		var15 = game:GetFastFlag("EnableChatWindowMemoizationV2")
		if var15 then
			var15 = var4_upvw
			if var15 then
				var15 = var8_upvw
				if var15 then
					var15 = var8_upvw[game_DefineFastString_result1_upvr]
				end
			end
		end
	end
	return var15
end