-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:23
-- Luau version 6, Types version 3
-- Time taken: 0.000342 seconds

local Url_upvr = require(script:FindFirstAncestor("VoiceChat").Parent.Http).Url
return function(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return arg1(string.format("%s/v1/settings/record-user-seen-upsell-modal", Url_upvr.VOICE_URL), "POST", {
		postBody = "{}";
	})
end