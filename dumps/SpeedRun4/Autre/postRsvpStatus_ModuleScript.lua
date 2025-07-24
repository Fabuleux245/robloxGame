-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:30
-- Luau version 6, Types version 3
-- Time taken: 0.000813 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("VirtualEvents").Parent.UrlBuilder).UrlBuilder
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 8
	--[[ Upvalues[2]:
		[1]: UrlBuilder_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local tbl = {}
	tbl.rsvpStatus = arg3
	local module = {}
	module.id = arg2
	return arg1(UrlBuilder_upvr.fromString("apis:virtual-events/v1/virtual-events/{id}/rsvps")(module), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	}):andThen(function(arg1_2) -- Line 17
		return arg1_2.responseBody
	end)
end