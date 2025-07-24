-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:13
-- Luau version 6, Types version 3
-- Time taken: 0.001294 seconds

local Parent = script:FindFirstAncestor("HoldToPlay").Parent
local RoactServiceTags = require(Parent.RoactServiceTags)
local GamePlayButton = require(Parent.GamePlayButton)
local RobloxAppSessionization = require(Parent.RobloxAppSessionization)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = RoactServiceTags.RoactNetworking
local AppSessionService_upvr = RoactServiceTags.AppSessionService
local usePlayButtonState_upvr = GamePlayButton.usePlayButtonState
local useOnPlayButtonCallback_upvr = GamePlayButton.useOnPlayButtonCallback
local HoldToPlayLauncher_upvr = require(Parent.ExperienceAnalytics).Constants.Context.HoldToPlayLauncher
local React_upvr = require(Parent.React)
local SetGamePlaySession_upvr = RobloxAppSessionization.SetGamePlaySession
local SessionType_upvr = RobloxAppSessionization.SessionType
local PlayButtonStates_upvr = GamePlayButton.PlayButtonStates
return function(arg1) -- Line 33, Named "HoldToPlayLoader"
	--[[ Upvalues[10]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactNetworking_upvr (readonly)
		[3]: AppSessionService_upvr (readonly)
		[4]: usePlayButtonState_upvr (readonly)
		[5]: useOnPlayButtonCallback_upvr (readonly)
		[6]: HoldToPlayLauncher_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: SetGamePlaySession_upvr (readonly)
		[9]: SessionType_upvr (readonly)
		[10]: PlayButtonStates_upvr (readonly)
	]]
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppSessionService_upvr)
	local usePlayButtonState_upvr_result1_upvr = usePlayButtonState_upvr(useRoactService_upvr(RoactNetworking_upvr), arg1.universeId)
	local useOnPlayButtonCallback_upvr_result1_upvr = useOnPlayButtonCallback_upvr(arg1.universeId, nil, HoldToPlayLauncher_upvr, nil, nil)
	React_upvr.useEffect(function() -- Line 40
		--[[ Upvalues[7]:
			[1]: usePlayButtonState_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: SetGamePlaySession_upvr (copied, readonly)
			[4]: useRoactService_upvr_result1_upvr (readonly)
			[5]: SessionType_upvr (copied, readonly)
			[6]: useOnPlayButtonCallback_upvr_result1_upvr (readonly)
			[7]: PlayButtonStates_upvr (copied, readonly)
		]]
		local playButtonState_2 = usePlayButtonState_upvr_result1_upvr.playButtonState
		if arg1.shouldAttemptLaunch then
			SetGamePlaySession_upvr(useRoactService_upvr_result1_upvr, SessionType_upvr.StructuralIdentifier.GamePlayFromHoldToPlay, true)
			useOnPlayButtonCallback_upvr_result1_upvr(playButtonState_2, arg1.reportExperienceLaunched)
			if arg1.onLaunched and playButtonState_2 == PlayButtonStates_upvr.Playable then
				arg1.onLaunched()
			end
		end
	end, {arg1.shouldAttemptLaunch, arg1.onLaunched, usePlayButtonState_upvr_result1_upvr.playButtonState, useRoactService_upvr_result1_upvr, arg1.reportExperienceLaunched, useOnPlayButtonCallback_upvr_result1_upvr})
	return nil
end