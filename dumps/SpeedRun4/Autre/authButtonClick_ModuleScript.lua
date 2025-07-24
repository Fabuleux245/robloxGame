-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:08
-- Luau version 6, Types version 3
-- Time taken: 0.000542 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixAuthButtonClickAnalyticsAltAttemptParam", false)
local checkAndSendEvent_upvr = require(script.Parent.Parent.Utils.checkAndSendEvent)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 6
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: checkAndSendEvent_upvr (readonly)
	]]
	local tbl = {}
	if arg2 then
		tbl.btn = arg2
	end
	if arg3 then
		tbl.state = arg3
	end
	if arg4 then
		tbl.url = arg4
	end
	if arg5 ~= nil and game_DefineFastFlag_result1_upvr then
		tbl.is_alt_attempt = arg5
	end
	checkAndSendEvent_upvr(arg1, "authButtonClick", tbl)
end