-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:23
-- Luau version 6, Types version 3
-- Time taken: 0.001206 seconds

local UrlBuilder_upvr = require(script:FindFirstAncestor("VirtualEvents").Parent.UrlBuilder).UrlBuilder
return function(arg1, arg2, arg3) -- Line 5
	--[[ Upvalues[1]:
		[1]: UrlBuilder_upvr (readonly)
	]]
	local module = {}
	module.id = arg2
	return arg1(UrlBuilder_upvr.fromString("apis:virtual-events/v1/virtual-events/{id}")(module), "GET"):andThen(function(arg1_2) -- Line 8
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		local var5
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var5 = arg1_2.responseBody.thumbnails[1].mediaId
			return var5
		end
		if not arg1_2.responseBody or not arg1_2.responseBody.thumbnails or not arg1_2.responseBody.thumbnails[1] or not INLINED() then
			var5 = nil
		end
		if var5 then
			return "rbxassetid://"..var5
		end
		return arg3
	end, function() -- Line 20
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		return arg3
	end)
end