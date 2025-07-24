-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:22
-- Luau version 6, Types version 3
-- Time taken: 0.000466 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("VirtualEvents").Parent.UrlBuilder).UrlBuilder
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: UrlBuilder_upvr (readonly)
	]]
	local module = {}
	module.id = arg2
	return arg1(UrlBuilder_upvr.fromString("apis:virtual-events/v1/virtual-events/{id}")(module), "GET"):andThen(function(arg1_2) -- Line 8
		return arg1_2.responseBody
	end)
end