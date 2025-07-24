-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:02:05
-- Luau version 6, Types version 3
-- Time taken: 0.001463 seconds

local RoduxCall = script:FindFirstAncestor("RoduxCall")
local module_upvr = {
	suggestedCallees = {};
}
local Rodux_upvr = require(RoduxCall.Parent.Rodux)
local SuggestedCalleeModel_upvr = require(RoduxCall.Models).SuggestedCalleeModel
local ClearSuggestedCallees_upvr = require(RoduxCall.Actions).ClearSuggestedCallees
return function(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: SuggestedCalleeModel_upvr (readonly)
		[4]: ClearSuggestedCallees_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.NetworkingCall.GetSuggestedCallees.Succeeded.name] = function(arg1_2, arg2) -- Line 14
			--[[ Upvalues[1]:
				[1]: SuggestedCalleeModel_upvr (copied, readonly)
			]]
			local tbl = {}
			for _, v in ipairs(arg2.responseBody.suggestedCallees) do
				assert(SuggestedCalleeModel_upvr.isValid(v))
				tbl[#tbl + 1] = SuggestedCalleeModel_upvr.format(v)
			end
			return {
				suggestedCallees = tbl;
			}
		end;
		[ClearSuggestedCallees_upvr.name] = function(arg1_3, arg2) -- Line 29
			--[[ Upvalues[1]:
				[1]: module_upvr (copied, readonly)
			]]
			return module_upvr
		end;
	})
end