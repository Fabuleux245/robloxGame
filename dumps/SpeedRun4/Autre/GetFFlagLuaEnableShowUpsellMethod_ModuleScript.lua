-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:26:09
-- Luau version 6, Types version 3
-- Time taken: 0.000497 seconds

game:DefineFastFlag("LuaEnableShowUpsellMethod2", false)
local GetFFlagLuaAppEnableAndroidPushUpsell_upvr = require(script.Parent.GetFFlagLuaAppEnableAndroidPushUpsell)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagLuaAppEnableAndroidPushUpsell_upvr (readonly)
	]]
	if GetFFlagLuaAppEnableAndroidPushUpsell_upvr() then
		return game:GetFastFlag("LuaEnableShowUpsellMethod2")
	end
	local game_GetFastFlag_result1 = game:GetFastFlag("LuaEnableShowUpsellMethod2")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = game:GetEngineFeature("PermissionsProtocolShouldShowUpsellIOSEnabled")
	end
	return game_GetFastFlag_result1
end