-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:00
-- Luau version 6, Types version 3
-- Time taken: 0.000701 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local PostGetUserByUsername_upvr = require(AuthCommon.Http.Requests.PostGetUserByUsername)
local Promise_upvr = require(AuthCommon.Parent.Promise)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: PostGetUserByUsername_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return function() -- Line 8
		--[[ Upvalues[4]:
			[1]: PostGetUserByUsername_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: Promise_upvr (copied, readonly)
		]]
		return PostGetUserByUsername_upvr(arg1, arg2):andThen(function(arg1_2) -- Line 9
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			if arg1_2 and arg1_2.responseBody then
				local data = arg1_2.responseBody.data
				if data == nil or #data == 0 then
					return Promise_upvr.reject()
				end
				return Promise_upvr.resolve(data[1])
			end
			return Promise_upvr.reject()
		end)
	end
end