-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:41
-- Luau version 6, Types version 3
-- Time taken: 0.000526 seconds

game:DefineFastFlag("AppChatEnableShareLinkGameCards", false)
local getFFlagAppChatGameCardEffectDeps_upvr = require(script.Parent.getFFlagAppChatGameCardEffectDeps)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: getFFlagAppChatGameCardEffectDeps_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("AppChatEnableShareLinkGameCards")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = getFFlagAppChatGameCardEffectDeps_upvr()
	end
	return game_GetFastFlag_result1
end