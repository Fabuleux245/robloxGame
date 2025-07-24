-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:42
-- Luau version 6, Types version 3
-- Time taken: 0.002122 seconds

local dependencies = require(script:FindFirstAncestor("Squads").dependencies)
local useSelector_upvr = dependencies.Hooks.useSelector
local NetworkingSquads_upvr = dependencies.NetworkingSquads
local NetworkStatus_upvr = dependencies.RoduxNetworking.Enum.NetworkStatus
return function() -- Line 8, Named "useIsExperienceInvitePending"
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: NetworkingSquads_upvr (readonly)
		[3]: NetworkStatus_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 9
		--[[ Upvalues[2]:
			[1]: NetworkingSquads_upvr (copied, readonly)
			[2]: NetworkStatus_upvr (copied, readonly)
		]]
		local Squad = arg1.Squad
		if Squad then
			Squad = arg1.Squad.Squad
		end
		local var12 = Squad
		if var12 then
			var12 = Squad.currentSquad
			if var12 then
				var12 = Squad.currentSquad.squadId
			end
		end
		if not var12 then
			return false
		end
		local var13 = Squad
		if var13 then
			var13 = Squad.currentExperienceInviteStatus
		end
		if var13 then
			return true
		end
		local var14 = Squad
		if var14 then
			var14 = Squad.currentExperienceInvite
		end
		if NetworkingSquads_upvr.CreateExperienceInvite.getStatus(arg1, var12) == NetworkStatus_upvr.Fetching or var14 then
			return true
		end
		return false
	end)
end