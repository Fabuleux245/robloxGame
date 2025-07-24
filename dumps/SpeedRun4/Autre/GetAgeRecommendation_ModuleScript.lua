-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:18
-- Luau version 6, Types version 3
-- Time taken: 0.000827 seconds

local Parent = script:FindFirstAncestor("GameDetailRodux").Parent
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.APIS_URL;
	path = "experience-guidelines-api/experience-guidelines/get-age-recommendation";
})
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2) -- Line 29
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local tbl = {}
	tbl.universeId = arg2
	return arg1(any_new_result1_upvr(), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end