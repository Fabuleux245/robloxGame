-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:45
-- Luau version 6, Types version 3
-- Time taken: 0.000474 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("AuthCommon").Parent.UrlBuilder).UrlBuilder
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: UrlBuilder_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	return arg1(UrlBuilder_upvr.fromString("auth:/v1/logoutfromallsessionsandreauthenticate")(), "POST", {
		postBody = HttpService_upvr:JSONEncode({
			SecureAuthenticationIntent = {
				clientPublicKey = "";
				clientEpochTimestamp = "";
				saiSignature = "";
				serverNonce = "";
			};
		});
	})
end