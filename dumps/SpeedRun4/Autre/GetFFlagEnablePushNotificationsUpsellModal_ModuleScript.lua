-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:20
-- Luau version 6, Types version 3
-- Time taken: 0.000483 seconds

game:DefineFastFlag("EnablePushNotificationsUpsellModal6", false)
local GetFFlagLuaEnableShowUpsellMethod_upvr = require(script.Parent.GetFFlagLuaEnableShowUpsellMethod)
local GetFFlagLuaAppPushSystemUpsellDevOverride_upvr = require(script.Parent.GetFFlagLuaAppPushSystemUpsellDevOverride)
return function() -- Line 5
	--[[ Upvalues[2]:
		[1]: GetFFlagLuaEnableShowUpsellMethod_upvr (readonly)
		[2]: GetFFlagLuaAppPushSystemUpsellDevOverride_upvr (readonly)
	]]
	local var4
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var4 = game:GetFastFlag("EnablePushNotificationsUpsellModal6")
		return var4
	end
	if not GetFFlagLuaEnableShowUpsellMethod_upvr() or not INLINED() then
		var4 = GetFFlagLuaAppPushSystemUpsellDevOverride_upvr()
	end
	return var4
end