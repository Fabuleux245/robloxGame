-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:25
-- Luau version 6, Types version 3
-- Time taken: 0.001193 seconds

local Parent = script:FindFirstAncestor("GenericChallenges").Parent
local InterceptChallenge_upvr = require(script.Parent.InterceptChallenge)
local Promise_upvr = require(Parent.Promise)
local IsChallengeHttpResponse_upvr = require(script.Parent.IsChallengeHttpResponse)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[4]:
		[1]: InterceptChallenge_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: IsChallengeHttpResponse_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local var7_upvw = InterceptChallenge_upvr
	if arg2 ~= nil then
		var7_upvw = arg2
	end
	return function(arg1_2, arg2_2, arg3) -- Line 18
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: IsChallengeHttpResponse_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: var7_upvw (read and write)
		]]
		local arg1_result1, arg1_result2 = arg1(arg1_2, arg2_2, arg3)
		return arg1_result1:andThen(function(arg1_3) -- Line 21
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve(arg1_3)
		end):catch(function(arg1_4) -- Line 25
			--[[ Upvalues[8]:
				[1]: IsChallengeHttpResponse_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: arg2_2 (readonly)
				[5]: Cryo_upvr (copied, readonly)
				[6]: arg3 (readonly)
				[7]: var7_upvw (copied, read and write)
				[8]: Promise_upvr (copied, readonly)
			]]
			if arg1_4.StatusCode ~= nil and arg1_4.Headers ~= nil and IsChallengeHttpResponse_upvr(arg1_4.StatusCode, arg1_4.Headers) then
				return var7_upvw({
					retryRequestCallback = function(arg1_5) -- Line 33, Named "retryRequestCallback"
						--[[ Upvalues[5]:
							[1]: arg1 (copied, readonly)
							[2]: arg1_2 (copied, readonly)
							[3]: arg2_2 (copied, readonly)
							[4]: Cryo_upvr (copied, readonly)
							[5]: arg3 (copied, readonly)
						]]
						local module = {}
						module.headers = arg1_5
						return arg1(arg1_2, arg2_2, Cryo_upvr.Dictionary.join(arg3, module))
					end;
					rawResponseHeaders = arg1_4.Headers;
				})
			end
			return Promise_upvr.reject(arg1_4)
		end), arg1_result2
	end
end