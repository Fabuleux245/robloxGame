-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:05
-- Luau version 6, Types version 3
-- Time taken: 0.001072 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local LogoutFromAllSessionsAndReauthenticateRequest_upvr = require(AuthCommon.Http.Requests.LogoutFromAllSessionsAndReauthenticateRequest)
local Promise_upvr = require(AuthCommon.Parent.Promise)
return function(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: LogoutFromAllSessionsAndReauthenticateRequest_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return LogoutFromAllSessionsAndReauthenticateRequest_upvr(arg1):andThen(function(arg1_2) -- Line 12
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(arg1_2.responseBody)
	end):catch(function(arg1_3) -- Line 14
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		if arg1_3.data then
			return Promise_upvr.reject(arg1_3.data.errorCode)
		end
		if not arg1_3.StatusCode then
			return Promise_upvr.reject()
		end
		return Promise_upvr.reject({arg1_3.StatusCode})
	end)
end