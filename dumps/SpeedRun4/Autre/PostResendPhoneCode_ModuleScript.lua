-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:55
-- Luau version 6, Types version 3
-- Time taken: 0.000532 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("PhoneUpsell").Parent.UrlBuilder).UrlBuilder
return function(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: UrlBuilder_upvr (readonly)
	]]
	return arg1(UrlBuilder_upvr.fromString("accountinformation:phone/resend")(), "POST", {
		postBody = "";
	})
end