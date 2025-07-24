-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:33
-- Luau version 6, Types version 3
-- Time taken: 0.001343 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local BuildHybridCallback_upvr = require(script.Parent.BuildHybridCallback)
local BuildCredentialsProtocolHook_upvr = require(script.Parent.Hooks.BuildCredentialsProtocolHook)
local ChallengeError_upvr = require(script.Parent.ChallengeError)
local ErrorKind_upvr = require(GenericChallenges.Types.ErrorKind)
local completionDataToRawHeaders_upvr = require(GenericChallenges.Utils.completionDataToRawHeaders)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 25
	--[[ Upvalues[5]:
		[1]: BuildHybridCallback_upvr (readonly)
		[2]: BuildCredentialsProtocolHook_upvr (readonly)
		[3]: ChallengeError_upvr (readonly)
		[4]: ErrorKind_upvr (readonly)
		[5]: completionDataToRawHeaders_upvr (readonly)
	]]
	return BuildHybridCallback_upvr({
		Hooks = {BuildCredentialsProtocolHook_upvr()};
		OnChallengeLoadFailed = function(arg1_2) -- Line 37, Named "OnChallengeLoadFailed"
			--[[ Upvalues[6]:
				[1]: arg5 (readonly)
				[2]: arg7 (readonly)
				[3]: ChallengeError_upvr (copied, readonly)
				[4]: ErrorKind_upvr (copied, readonly)
				[5]: arg2 (readonly)
				[6]: arg3 (readonly)
			]]
			if arg5 ~= nil then
				arg5()
			end
			local tbl_2 = {}
			tbl_2.challengeType = arg2
			arg7(ChallengeError_upvr.new(ErrorKind_upvr.LoadFailed, tbl_2))
			arg3:close()
		end;
		OnChallengeInvalidated = function(arg1_3) -- Line 46, Named "OnChallengeInvalidated"
			--[[ Upvalues[5]:
				[1]: arg5 (readonly)
				[2]: arg7 (readonly)
				[3]: ChallengeError_upvr (copied, readonly)
				[4]: ErrorKind_upvr (copied, readonly)
				[5]: arg3 (readonly)
			]]
			if arg5 ~= nil and arg1_3.data ~= nil then
				arg5(arg1_3.data)
			end
			arg7(ChallengeError_upvr.new(ErrorKind_upvr.Invalidated, arg1_3.data))
			arg3:close()
		end;
		OnChallengeCompleted = function(arg1_4) -- Line 53, Named "OnChallengeCompleted"
			--[[ Upvalues[5]:
				[1]: arg6 (readonly)
				[2]: arg4 (readonly)
				[3]: completionDataToRawHeaders_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg3 (readonly)
			]]
			if arg1_4.data ~= nil and arg1_4.data.challengeType ~= nil and arg1_4.data.metadata ~= nil then
				local tbl = {}
				tbl.challengeId = arg1
				tbl.challengeType = arg1_4.data.challengeType
				tbl.metadata = arg1_4.data.metadata
				arg6(arg4(completionDataToRawHeaders_upvr(tbl)))
			end
			arg3:close()
		end;
	})
end