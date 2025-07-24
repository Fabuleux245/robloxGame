-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:18
-- Luau version 6, Types version 3
-- Time taken: 0.001623 seconds

local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local useDispatch_upvr = dependencies.Hooks.useDispatch
local React_upvr = dependencies.React
local useSelector_upvr = dependencies.Hooks.useSelector
local ExperienceService_upvr = require(Squads.Parent.ExperienceService).ExperienceService
local RoduxSquads_upvr = dependencies.RoduxSquads
local AppSquadTopBannerEventReceiver_upvr = require(script.Parent.AppSquadTopBannerEventReceiver)
local SquadEventReceiver_upvr = dependencies.SquadsCore.SquadEventReceiver
return function(arg1) -- Line 15
	--[[ Upvalues[7]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: ExperienceService_upvr (readonly)
		[5]: RoduxSquads_upvr (readonly)
		[6]: AppSquadTopBannerEventReceiver_upvr (readonly)
		[7]: SquadEventReceiver_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var6_result1_upvr_2 = useSelector_upvr(React_upvr.useCallback(function(arg1_2) -- Line 18
		if arg1_2.Squad and arg1_2.Squad.Squad then
			return arg1_2.Squad.Squad.currentExperienceInvite
		end
		return nil
	end, {}))
	local var6_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_3) -- Line 23
		if arg1_3.Squad and arg1_3.Squad.Squad and arg1_3.Squad.Squad.currentSquadPersist then
			return arg1_3.Squad.Squad.currentSquadPersist.isPaused
		end
		return false
	end, {}))
	React_upvr.useEffect(function() -- Line 33
		--[[ Upvalues[3]:
			[1]: ExperienceService_upvr (copied, readonly)
			[2]: RoduxSquads_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
		]]
		ExperienceService_upvr:RegisterForExperienceJoin(function() -- Line 34
			--[[ Upvalues[2]:
				[1]: RoduxSquads_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (copied, readonly)
			]]
			RoduxSquads_upvr.PersistManagers.currentSquadPersistManager.pause(useDispatch_upvr_result1_upvr)
		end)
		ExperienceService_upvr:RegisterForExperienceLeave(function() -- Line 39
			--[[ Upvalues[2]:
				[1]: RoduxSquads_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (copied, readonly)
			]]
			RoduxSquads_upvr.PersistManagers.currentSquadPersistManager.persistAndUpdateState(useDispatch_upvr_result1_upvr)
		end)
	end, {useDispatch_upvr_result1_upvr})
	React_upvr.useEffect(function() -- Line 45
		--[[ Upvalues[4]:
			[1]: var6_result1_upvr_2 (readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: RoduxSquads_upvr (copied, readonly)
		]]
		if var6_result1_upvr_2 and var6_result1_upvr then
			useDispatch_upvr_result1_upvr(RoduxSquads_upvr.Actions.CurrentExperienceInviteDismissed(var6_result1_upvr_2.notification.notificationId))
		end
	end, {var6_result1_upvr_2, var6_result1_upvr})
	local module = {}
	local any_createElement_result1 = React_upvr.createElement(AppSquadTopBannerEventReceiver_upvr)
	module.appSquadTopBannerEventReceiver = any_createElement_result1
	if not var6_result1_upvr then
		any_createElement_result1 = React_upvr.createElement(SquadEventReceiver_upvr)
	else
		any_createElement_result1 = nil
	end
	module.squadEventReceiver = any_createElement_result1
	return React_upvr.createElement(React_upvr.Fragment, nil, module)
end