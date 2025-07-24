-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:09
-- Luau version 6, Types version 3
-- Time taken: 0.000517 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ClientErrorAdditionalArgs", false)
local checkAndSendEvent_upvr = require(script.Parent.Parent.Utils.checkAndSendEvent)
return function(arg1, arg2, arg3, arg4) -- Line 5
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: checkAndSendEvent_upvr (readonly)
	]]
	local tbl = {}
	if arg2 then
		tbl.state = arg2
	end
	if game_DefineFastFlag_result1_upvr and arg3 then
		tbl.url = arg3
	end
	if game_DefineFastFlag_result1_upvr and arg4 then
		tbl.origin = arg4
	end
	checkAndSendEvent_upvr(arg1, "authClientError", tbl)
end