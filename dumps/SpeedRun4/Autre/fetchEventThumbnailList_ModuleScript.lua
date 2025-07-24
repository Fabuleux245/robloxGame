-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:23
-- Luau version 6, Types version 3
-- Time taken: 0.000674 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("VirtualEvents").Parent.UrlBuilder).UrlBuilder
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: UrlBuilder_upvr (readonly)
	]]
	local module = {}
	module.id = arg2
	return arg1(UrlBuilder_upvr.fromString("apis:virtual-events/v1/virtual-events/{id}")(module), "GET"):andThen(function(arg1_2) -- Line 8
		local var5
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var5 = arg1_2.responseBody.thumbnails
			return var5
		end
		if not arg1_2.responseBody or not INLINED() then
			var5 = {}
		end
		return var5
	end, function() -- Line 10
		return {}
	end)
end