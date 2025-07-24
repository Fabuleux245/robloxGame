-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:56
-- Luau version 6, Types version 3
-- Time taken: 0.000959 seconds

local Http_upvr = require(script:FindFirstAncestor("NetworkingVirtualEvents").Parent.Http)
return function(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: Http_upvr (readonly)
	]]
	return arg1.GET(script, function(arg1_2, arg2, arg3) -- Line 14
		--[[ Upvalues[1]:
			[1]: Http_upvr (copied, readonly)
		]]
		local any_path_result1 = arg1_2(Http_upvr.Url.APIS_URL):path("virtual-events"):path("v1"):path("virtual-events"):id(arg2):path("rsvps")
		if arg3 then
			any_path_result1 = any_path_result1:queryArgs(arg3)
		end
		return any_path_result1
	end)
end