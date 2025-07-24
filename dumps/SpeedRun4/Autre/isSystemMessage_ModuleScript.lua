-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:12
-- Luau version 6, Types version 3
-- Time taken: 0.001026 seconds

local Constants_upvr = require(script:FindFirstAncestor("ChatLineReporting").Common.Constants)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ChatLineReportFixSystemMessage", false)
function isSystemMessage(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var3
	if var3 == Constants_upvr.ChannelTypes.System then
		var3 = true
		return var3
	end
	var3 = game_DefineFastFlag_result1_upvr
	if var3 then
		if not arg1.userId or arg1.userId == '0' then
			var3 = true
			return var3
		end
		var3 = false
		return var3
	end
	if arg1.userId ~= '0' then
		var3 = false
	else
		var3 = true
	end
	return var3
end
return isSystemMessage