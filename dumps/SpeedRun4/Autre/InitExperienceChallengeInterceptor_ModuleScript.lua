-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:32
-- Luau version 6, Types version 3
-- Time taken: 0.001983 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local GenericChallengeService_upvr = game:GetService("GenericChallengeService")
local RenderChallenge_upvr = require(script.Parent.RenderChallenge)
local ChallengeType_upvr = require(GenericChallenges.Types.ChallengeType)
local Base64_upvr = require(GenericChallenges.Parent.AuthCommon).Utils.Base64
local HttpService_upvr = game:GetService("HttpService")
function challengeRequiredEventHandler(arg1, arg2, arg3) -- Line 11
	--[[ Upvalues[5]:
		[1]: RenderChallenge_upvr (readonly)
		[2]: ChallengeType_upvr (readonly)
		[3]: GenericChallengeService_upvr (readonly)
		[4]: Base64_upvr (readonly)
		[5]: HttpService_upvr (readonly)
	]]
	local tbl_2 = {
		challengeType = ChallengeType_upvr.Generic;
	}
	local tbl = {}
	tbl.genericChallengeId = arg1
	tbl.genericChallengeType = arg2
	tbl.genericChallengeMetadata = arg3
	tbl_2.challengeParameters = tbl
	tbl_2.callbacks = {
		OnChallengeLoadFailed = function(arg1_2) -- Line 20, Named "OnChallengeLoadFailed"
			--[[ Upvalues[2]:
				[1]: GenericChallengeService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			GenericChallengeService_upvr:SignalChallengeLoaded(arg1, false)
		end;
		OnChallengeCompleted = function(arg1_3) -- Line 25, Named "OnChallengeCompleted"
			--[[ Upvalues[5]:
				[1]: Base64_upvr (copied, readonly)
				[2]: HttpService_upvr (copied, readonly)
				[3]: GenericChallengeService_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg2 (readonly)
			]]
			if arg1_3.data.metadata ~= nil then
				GenericChallengeService_upvr:SignalChallengeCompleted(arg1, arg2, Base64_upvr.Encode(HttpService_upvr:JSONEncode(arg1_3.data.metadata)))
			end
		end;
		OnChallengeInvalidated = function(arg1_4) -- Line 31, Named "OnChallengeInvalidated"
			--[[ Upvalues[2]:
				[1]: GenericChallengeService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			GenericChallengeService_upvr:SignalChallengeInvalidated(arg1)
		end;
		OnChallengeAbandoned = function() -- Line 34, Named "OnChallengeAbandoned"
			--[[ Upvalues[2]:
				[1]: GenericChallengeService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			GenericChallengeService_upvr:SignalChallengeAbandoned(arg1)
		end;
	}
	tbl_2.renderWebViewInModal = true
	function tbl_2.onWebViewOpen() -- Line 39
		--[[ Upvalues[2]:
			[1]: GenericChallengeService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		GenericChallengeService_upvr:SignalChallengeLoaded(arg1, true)
	end
	RenderChallenge_upvr(tbl_2)
end
return function() -- Line 45
	--[[ Upvalues[1]:
		[1]: GenericChallengeService_upvr (readonly)
	]]
	GenericChallengeService_upvr.ChallengeRequiredEvent:Connect(challengeRequiredEventHandler)
end