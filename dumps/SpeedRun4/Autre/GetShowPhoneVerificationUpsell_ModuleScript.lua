-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:59
-- Luau version 6, Types version 3
-- Time taken: 0.001013 seconds

local Constants_upvr = require(script:FindFirstAncestor("VoiceChatCore").Constants)
return function(arg1, arg2, arg3, arg4) -- Line 4
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var5
	if type(arg2) ~= "string" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "GetShowPhoneVerificationUpsell request expects universeId to be a string")
	var5 = "%s/v1/phone-verification/configuration?layerName=%s&experienceId=%s"
	local formatted = string.format(var5, Constants_upvr.UPSELL_CARD_URL, arg3, arg2)
	if arg4 then
		var5 = 0
		if var5 < arg4 then
			var5 = formatted
			formatted = var5.."&sessionStartTime="..arg4
		end
	end
	var5 = arg1(formatted, "GET")
	return var5
end