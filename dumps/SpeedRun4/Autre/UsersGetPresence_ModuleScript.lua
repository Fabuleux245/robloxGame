-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:43
-- Luau version 6, Types version 3
-- Time taken: 0.000929 seconds

local HttpService_upvr = game:GetService("HttpService")
local Url_upvr = require(script:FindFirstAncestor("UserLib").Parent.Http).Url
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	for _, v in pairs(arg2) do
		local tonumber_result1 = tonumber(v)
		if tonumber_result1 then
			table.insert({}, tonumber_result1)
		end
	end
	local tbl = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl.userIds = {}
	return arg1(string.format("%s/presence/users", Url_upvr.PRESENCE_URL), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end