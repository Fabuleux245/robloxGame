-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:35
-- Luau version 6, Types version 3
-- Time taken: 0.002629 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local ChallengeWebView_upvr = require(script.Parent.ChallengeWebView)
local getLocalizedTitle_upvr = require(GenericChallenges.Utils.getLocalizedTitle)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableRejectPromiseOnWebviewClosed", false)
local constants_upvr = require(GenericChallenges.Utils.constants)
local BuildHybridCallback_upvr = require(script.Parent.BuildHybridCallback)
local BuildCredentialsProtocolHook_upvr = require(script.Parent.Hooks.BuildCredentialsProtocolHook)
local ChallengeError_upvr = require(script.Parent.ChallengeError)
local ErrorKind_upvr = require(GenericChallenges.Types.ErrorKind)
local completionDataToRawHeaders_upvr = require(GenericChallenges.Utils.completionDataToRawHeaders)
local InitializeHybridCallback_upvr = require(script.Parent.InitializeHybridCallback)
return function(arg1) -- Line 41
	--[[ Upvalues[10]:
		[1]: ChallengeWebView_upvr (readonly)
		[2]: getLocalizedTitle_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: constants_upvr (readonly)
		[5]: BuildHybridCallback_upvr (readonly)
		[6]: BuildCredentialsProtocolHook_upvr (readonly)
		[7]: ChallengeError_upvr (readonly)
		[8]: ErrorKind_upvr (readonly)
		[9]: completionDataToRawHeaders_upvr (readonly)
		[10]: InitializeHybridCallback_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var13_upvr
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 22. Error Block 55 start (CF ANALYSIS FAILED)
	var13_upvr = true
	assert(var13_upvr, "Promise rejection method must be provided for generic handling")
	var13_upvr = ChallengeWebView_upvr
	var13_upvr = {}
	var13_upvr.title = getLocalizedTitle_upvr(arg1.title)
	var13_upvr.rawResponseHeaders = arg1.rawResponseHeaders
	var13_upvr.modal = arg1.renderWebViewInModal
	local any_new_result1_upvr = var13_upvr.new(var13_upvr)
	var13_upvr = game_DefineFastFlag_result1_upvr
	if var13_upvr then
		var13_upvr = arg1.rawResponseHeaders[constants_upvr.challengeTypeHeader]
		local var15_upvw = false
		local tbl = {
			Hooks = {BuildCredentialsProtocolHook_upvr()};
			OnChallengeLoadFailed = function(arg1_2) -- Line 61, Named "OnChallengeLoadFailed"
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: ChallengeError_upvr (copied, readonly)
					[3]: ErrorKind_upvr (copied, readonly)
					[4]: var13_upvr (readonly)
					[5]: any_new_result1_upvr (readonly)
				]]
				if arg1.challengeErrorCallback ~= nil then
					arg1.challengeErrorCallback()
				end
				arg1.reject(ChallengeError_upvr.new(ErrorKind_upvr.LoadFailed, {
					challengeType = var13_upvr;
				}))
				any_new_result1_upvr:close()
			end;
			OnChallengeInvalidated = function(arg1_3) -- Line 70, Named "OnChallengeInvalidated"
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: ChallengeError_upvr (copied, readonly)
					[3]: ErrorKind_upvr (copied, readonly)
					[4]: any_new_result1_upvr (readonly)
				]]
				if arg1.challengeErrorCallback ~= nil and arg1_3.data ~= nil then
					arg1.challengeErrorCallback(arg1_3.data)
				end
				arg1.reject(ChallengeError_upvr.new(ErrorKind_upvr.Invalidated, arg1_3.data))
				any_new_result1_upvr:close()
			end;
		}
		local var19_upvr = arg1.rawResponseHeaders[constants_upvr.challengeIdHeader]
		function tbl.OnChallengeCompleted(arg1_4) -- Line 77
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: completionDataToRawHeaders_upvr (copied, readonly)
				[3]: var19_upvr (readonly)
				[4]: var15_upvw (read and write)
				[5]: any_new_result1_upvr (readonly)
			]]
			if arg1_4.data ~= nil and arg1_4.data.challengeType ~= nil and arg1_4.data.metadata ~= nil then
				arg1.resolve(arg1.retryRequestCallback(completionDataToRawHeaders_upvr({
					challengeId = var19_upvr;
					challengeType = arg1_4.data.challengeType;
					metadata = arg1_4.data.metadata;
				})))
			end
			var15_upvw = true
			any_new_result1_upvr:close()
		end
		any_new_result1_upvr:setHybridCallback(BuildHybridCallback_upvr(tbl))
		any_new_result1_upvr:setCloseCallback(function() -- Line 91
			--[[ Upvalues[5]:
				[1]: var15_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: ChallengeError_upvr (copied, readonly)
				[4]: ErrorKind_upvr (copied, readonly)
				[5]: var13_upvr (readonly)
			]]
			if not var15_upvw then
				arg1.reject(ChallengeError_upvr.new(ErrorKind_upvr.Invalidated, {
					challengeType = var13_upvr;
				}))
			end
		end)
	else
		var13_upvr = any_new_result1_upvr:setHybridCallback
		var13_upvr(InitializeHybridCallback_upvr(arg1.rawResponseHeaders[constants_upvr.challengeIdHeader], arg1.rawResponseHeaders[constants_upvr.challengeTypeHeader], any_new_result1_upvr, arg1.retryRequestCallback, arg1.challengeErrorCallback, arg1.resolve, arg1.reject))
	end
	var13_upvr = any_new_result1_upvr:open
	var13_upvr()
	do
		return
	end
	-- KONSTANTERROR: [33] 22. Error Block 55 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [152] 110. Error Block 51 start (CF ANALYSIS FAILED)
	var19_upvr = arg1.callbacks
	if var19_upvr == nil then
		var13_upvr = false
	else
		var13_upvr = true
	end
	var19_upvr = "Callbacks must be specified in manual challenge mode"
	any_new_result1_upvr = assert
	any_new_result1_upvr(var13_upvr, var19_upvr)
	var19_upvr = arg1.challengeParameters
	if var19_upvr == nil then
		var13_upvr = false
		-- KONSTANTWARNING: GOTO [170] #122
	end
	-- KONSTANTERROR: [152] 110. Error Block 51 end (CF ANALYSIS FAILED)
end