-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:43
-- Luau version 6, Types version 3
-- Time taken: 0.000473 seconds

local RoduxSquads = script:FindFirstAncestor("RoduxSquads")
local Rodux_upvr = require(RoduxSquads.Parent.Rodux)
local CurrentExperienceInviteStatusUpdated_upvr = require(RoduxSquads.Actions).CurrentExperienceInviteStatusUpdated
return function() -- Line 12
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: CurrentExperienceInviteStatusUpdated_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(false, {
		[CurrentExperienceInviteStatusUpdated_upvr.name] = function(arg1, arg2) -- Line 14
			return arg2.payload.isExperienceInvitePending
		end;
	})
end