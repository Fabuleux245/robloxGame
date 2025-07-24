-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:48
-- Luau version 6, Types version 3
-- Time taken: 0.000838 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.USERS_URL;
	path = "usernames/users";
})
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 40
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local module = {}
	local tbl_2 = {}
	local tbl = {}
	tbl[1] = arg2
	tbl_2.usernames = tbl
	tbl_2.excludeBannedUsers = arg3 or false
	module.postBody = HttpService_upvr:JSONEncode(tbl_2)
	return arg1(any_new_result1_upvr(), "POST", module)
end