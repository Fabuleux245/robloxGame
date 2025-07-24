-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:41
-- Luau version 6, Types version 3
-- Time taken: 0.000397 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.APIS_URL;
	path = "phone-number-api/v1/phone-prefix-list";
})
return function(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	return arg1(any_new_result1_upvr(), "GET")
end