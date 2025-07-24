-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:33
-- Luau version 6, Types version 3
-- Time taken: 0.000828 seconds

local Promise_upvr = require(script:FindFirstAncestor("GenericChallenges").Parent.Promise)
local RenderChallenge_upvr = require(script.Parent.RenderChallenge)
return function(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: RenderChallenge_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2) -- Line 22
		--[[ Upvalues[2]:
			[1]: RenderChallenge_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local tbl = {
			title = arg1.title;
			rawResponseHeaders = arg1.rawResponseHeaders;
			retryRequestCallback = arg1.retryRequestCallback;
			challengeErrorCallback = arg1.challengeErrorCallback;
		}
		tbl.resolve = arg1_2
		tbl.reject = arg2
		RenderChallenge_upvr(tbl)
	end)
end