-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:44
-- Luau version 6, Types version 3
-- Time taken: 0.001396 seconds

local RoduxSquads = script:FindFirstAncestor("RoduxSquads")
local Parent = RoduxSquads.Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local PartialSquadAdded_upvr = require(RoduxSquads.Actions).PartialSquadAdded
local PartialSquadModel_upvr = require(RoduxSquads.Models).PartialSquadModel
local Cryo_upvr = require(Parent.Cryo)
local PartialSquadRemoved_upvr = require(RoduxSquads.Actions).PartialSquadRemoved
return function() -- Line 16
	--[[ Upvalues[6]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PartialSquadAdded_upvr (readonly)
		[4]: PartialSquadModel_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: PartialSquadRemoved_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[PartialSquadAdded_upvr.name] = function(arg1, arg2) -- Line 18
			--[[ Upvalues[2]:
				[1]: PartialSquadModel_upvr (copied, readonly)
				[2]: Cryo_upvr (copied, readonly)
			]]
			local formatted = PartialSquadModel_upvr.format(arg2.payload.partialSquad)
			return Cryo_upvr.Dictionary.join(arg1, {
				[formatted.channelId] = formatted;
			})
		end;
		[PartialSquadRemoved_upvr.name] = function(arg1, arg2) -- Line 26
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			return Cryo_upvr.Dictionary.join(arg1, {
				[arg2.payload.channelId] = Cryo_upvr.None;
			})
		end;
	})
end