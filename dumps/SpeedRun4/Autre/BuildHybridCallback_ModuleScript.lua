-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:22
-- Luau version 6, Types version 3
-- Time taken: 0.001227 seconds

local HttpService_upvr = game:GetService("HttpService")
local JavascriptHybrid_upvr = require(script:FindFirstAncestor("GenericChallenges").Types.JavascriptHybrid)
return function(arg1) -- Line 29
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: JavascriptHybrid_upvr (readonly)
	]]
	return function(arg1_2) -- Line 30
		--[[ Upvalues[3]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: JavascriptHybrid_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1_2)
		if any_JSONDecode_result1.moduleID ~= JavascriptHybrid_upvr.Module.Navigation or any_JSONDecode_result1.functionName ~= JavascriptHybrid_upvr.Function.navigateToFeature or not any_JSONDecode_result1.params or not any_JSONDecode_result1.params.params then
		else
			local params = any_JSONDecode_result1.params.params
			if params.feature == JavascriptHybrid_upvr.Feature.ChallengeParsed and params.data.parsed == false then
				arg1.OnChallengeLoadFailed(params)
				return
			end
			if params.feature == JavascriptHybrid_upvr.Feature.ChallengeInitialized and params.data.initialized == false then
				arg1.OnChallengeLoadFailed(params)
				return
			end
			if arg1.Hooks ~= nil then
				for _, v in arg1.Hooks do
					if v(params) then return end
				end
			end
			if params.feature == JavascriptHybrid_upvr.Feature.ChallengeCompleted then
				if params.data ~= nil then
					arg1.OnChallengeCompleted(params)
				else
					if arg1.OnChallengeAbandoned ~= nil then
						arg1.OnChallengeAbandoned()
						return
					end
					arg1.OnChallengeLoadFailed(params)
				end
			end
			if params.feature == JavascriptHybrid_upvr.Feature.ChallengeInvalidated then
				arg1.OnChallengeInvalidated(params)
				return
			end
			if any_JSONDecode_result1.params.params.feature == JavascriptHybrid_upvr.Feature.ChallengeDisplayed and arg1.OnChallengeDisplayed ~= nil then
				arg1.OnChallengeDisplayed(params)
			end
		end
	end
end