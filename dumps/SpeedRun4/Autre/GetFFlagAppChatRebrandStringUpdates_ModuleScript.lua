-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:24:27
-- Luau version 6, Types version 3
-- Time taken: 0.000598 seconds

game:DefineFastFlag("AppChatRebrandStringUpdates", false)
local GetFFlagLuaAppEnableSquadPage_upvr = require(script.Parent.GetFFlagLuaAppEnableSquadPage)
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("AppChatRebrandStringUpdates")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = GetFFlagLuaAppEnableSquadPage_upvr()
	end
	return game_GetFastFlag_result1
end