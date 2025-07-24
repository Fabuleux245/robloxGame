-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:43
-- Luau version 6, Types version 3
-- Time taken: 0.001411 seconds

local dependencies = require(script:FindFirstAncestor("Squads").dependencies)
local SquadsCore = dependencies.SquadsCore
local useCurrentSquadId_upvr = SquadsCore.Hooks.useCurrentSquadId
local React_upvr = dependencies.React
local NetworkingSquads_upvr = dependencies.NetworkingSquads
local useSelector_upvr = dependencies.Hooks.useSelector
local SquadState_upvr = SquadsCore.Enums.SquadState
local NetworkStatus_upvr = dependencies.RoduxNetworking.Enum.NetworkStatus
return function() -- Line 15
	--[[ Upvalues[6]:
		[1]: useCurrentSquadId_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: NetworkingSquads_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: SquadState_upvr (readonly)
		[6]: NetworkStatus_upvr (readonly)
	]]
	local var12
	if (useCurrentSquadId_upvr() or "") ~= "" then
		var12 = SquadState_upvr.Active
		return var12
	end
	if useSelector_upvr(React_upvr.useCallback(function(arg1) -- Line 18
		--[[ Upvalues[1]:
			[1]: NetworkingSquads_upvr (copied, readonly)
		]]
		return NetworkingSquads_upvr.JoinSquad.getStatus(arg1, {})
	end, {})) == NetworkStatus_upvr.Fetching or useSelector_upvr(React_upvr.useCallback(function(arg1) -- Line 23
		--[[ Upvalues[1]:
			[1]: NetworkingSquads_upvr (copied, readonly)
		]]
		return NetworkingSquads_upvr.CreateOrJoinSquad.getStatus(arg1, {})
	end, {})) == NetworkStatus_upvr.Fetching then
		var12 = SquadState_upvr.Initializing
	end
	return var12
end