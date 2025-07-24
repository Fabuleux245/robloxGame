-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:04
-- Luau version 6, Types version 3
-- Time taken: 0.000833 seconds

local Url_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).Url
local var3_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)(game:GetService("HttpRbxApiService"))
return function(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: var3_upvr (readonly)
	]]
	return var3_upvr(string.format("%s/v3/outfits/%s/details", Url_upvr.AVATAR_URL, tostring(arg1)), "GET"):andThen(function(arg1_2) -- Line 16
		return arg1_2.responseBody.name
	end)
end