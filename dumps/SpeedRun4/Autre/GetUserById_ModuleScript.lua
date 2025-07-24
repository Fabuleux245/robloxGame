-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:00
-- Luau version 6, Types version 3
-- Time taken: 0.000919 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local GetUserByIdRequest_upvr = require(AuthCommon.Http.Requests.GetUserByIdRequest)
local Promise_upvr = require(AuthCommon.Parent.Promise)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: GetUserByIdRequest_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return GetUserByIdRequest_upvr(arg1, arg2):andThen(function(arg1_2) -- Line 8
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		if arg1_2 and arg1_2.responseBody then
			local responseBody = arg1_2.responseBody
			if responseBody == nil then
				return Promise_upvr.reject()
			end
			return Promise_upvr.resolve(responseBody)
		end
		return Promise_upvr.reject()
	end)
end