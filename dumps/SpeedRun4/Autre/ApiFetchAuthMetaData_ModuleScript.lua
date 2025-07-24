-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:56
-- Luau version 6, Types version 3
-- Time taken: 0.000631 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local GetAuthMetaData_upvr = require(AuthCommon.Http.Requests.GetAuthMetaData)
local Promise_upvr = require(AuthCommon.Parent.Promise)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: GetAuthMetaData_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return GetAuthMetaData_upvr(arg1):andThen(function(arg1_2) -- Line 7
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		if arg1_2 and arg1_2.responseBody then
			return Promise_upvr.resolve(arg1_2.responseBody)
		end
		return Promise_upvr.reject()
	end, function(arg1_3) -- Line 13
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject({arg1_3.StatusCode})
	end)
end