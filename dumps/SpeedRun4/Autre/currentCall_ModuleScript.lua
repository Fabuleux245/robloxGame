-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:02:04
-- Luau version 6, Types version 3
-- Time taken: 0.000514 seconds

local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Rodux_upvr = require(RoduxCall.Parent.Rodux)
local UpdateCall_upvr = require(RoduxCall.Actions).UpdateCall
local CallStateModel_upvr = require(RoduxCall.Models).CallStateModel
return function() -- Line 11
	--[[ Upvalues[3]:
		[1]: Rodux_upvr (readonly)
		[2]: UpdateCall_upvr (readonly)
		[3]: CallStateModel_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(nil, {
		[UpdateCall_upvr.name] = function(arg1, arg2) -- Line 13
			--[[ Upvalues[1]:
				[1]: CallStateModel_upvr (copied, readonly)
			]]
			return CallStateModel_upvr.format(arg2.payload.call)
		end;
	})
end