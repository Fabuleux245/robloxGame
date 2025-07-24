-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:35
-- Luau version 6, Types version 3
-- Time taken: 0.000784 seconds

local Http_upvr = require(script:FindFirstAncestor("ProfileQRCode").Parent.Http)
local function var1_upvr(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: Http_upvr (readonly)
	]]
	return arg1(Http_upvr.Url.APIS_URL.."sharelinks"):path("v1"):path("get-or-create-link"):body({
		linkType = "Profile";
	})
end
return {
	profileLinkType = "Profile";
	buildUrl = var1_upvr;
	setupRequest = function(arg1) -- Line 14
		--[[ Upvalues[1]:
			[1]: var1_upvr (readonly)
		]]
		return arg1.POST(script, var1_upvr)
	end;
}