-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:43
-- Luau version 6, Types version 3
-- Time taken: 0.003004 seconds

local RoduxSquads = script:FindFirstAncestor("RoduxSquads")
local Parent = RoduxSquads.Parent
local Cryo_upvr = require(Parent.Cryo)
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local createPersistReducer_upvr = require(RoduxSquads.Persists.PersistReducer).createPersistReducer
local PersistStorage_upvr = require(RoduxSquads.Persists.PersistStorage)
local Rodux_upvr = require(Parent.Rodux)
local SquadModel_upvr = require(RoduxSquads.Models).SquadModel
local CurrentSquadUpdated_upvr = require(RoduxSquads.Actions).CurrentSquadUpdated
return function(arg1) -- Line 18
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: SquadInviteChangesExperimentation_upvr (readonly)
		[3]: createPersistReducer_upvr (readonly)
		[4]: PersistStorage_upvr (readonly)
		[5]: Rodux_upvr (readonly)
		[6]: SquadModel_upvr (readonly)
		[7]: CurrentSquadUpdated_upvr (readonly)
	]]
	local NetworkingSquads = arg1.NetworkingSquads
	local function var12_upvr(arg1_2, arg2) -- Line 20
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: SquadInviteChangesExperimentation_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 5. Error Block 30 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 5. Error Block 30 end (CF ANALYSIS FAILED)
	end
	local currentSquad = arg1.currentSquad
	if not currentSquad then
		currentSquad = {}
	end
	return createPersistReducer_upvr(Cryo_upvr.Dictionary.join({
		storage = PersistStorage_upvr.new("currentSquadStore");
	}, currentSquad), Rodux_upvr.createReducer(nil, {
		[NetworkingSquads.CreateOrJoinSquad.Succeeded.name] = function(arg1_3, arg2) -- Line 89
			--[[ Upvalues[2]:
				[1]: var12_upvr (readonly)
				[2]: SquadModel_upvr (copied, readonly)
			]]
			return var12_upvr(arg1_3, SquadModel_upvr.format(arg2.responseBody.groupUp))
		end;
		[NetworkingSquads.GetSquadActive.Succeeded.name] = function(arg1_4, arg2) -- Line 97
			--[[ Upvalues[2]:
				[1]: var12_upvr (readonly)
				[2]: SquadModel_upvr (copied, readonly)
			]]
			local groupUp_2 = arg2.responseBody.groupUp
			if groupUp_2 then
				return var12_upvr(arg1_4, SquadModel_upvr.format(groupUp_2))
			end
			return nil
		end;
		[NetworkingSquads.GetSquadFromSquadId.Succeeded.name] = function(arg1_5, arg2) -- Line 110
			--[[ Upvalues[2]:
				[1]: var12_upvr (readonly)
				[2]: SquadModel_upvr (copied, readonly)
			]]
			local groupUp = arg2.responseBody.groupUp
			local var21
			if var21 then
				var21 = arg1_5.squadId
			end
			if groupUp and groupUp.groupUpId == var21 then
				return var12_upvr(arg1_5, SquadModel_upvr.format(groupUp))
			end
			return arg1_5
		end;
		[NetworkingSquads.JoinSquad.Succeeded.name] = function(arg1_6, arg2) -- Line 125
			--[[ Upvalues[2]:
				[1]: var12_upvr (readonly)
				[2]: SquadModel_upvr (copied, readonly)
			]]
			return var12_upvr(arg1_6, SquadModel_upvr.format(arg2.responseBody.groupUp))
		end;
		[NetworkingSquads.LeaveSquad.Succeeded.name] = function(arg1_7, arg2) -- Line 133
			if arg1_7 and arg1_7.squadId == arg2.postBody.groupUpId then
				return nil
			end
			return arg1_7
		end;
		[CurrentSquadUpdated_upvr.name] = function(arg1_8, arg2) -- Line 141
			--[[ Upvalues[2]:
				[1]: var12_upvr (readonly)
				[2]: SquadModel_upvr (copied, readonly)
			]]
			local squad = arg2.payload.squad
			if not squad then
				return nil
			end
			return var12_upvr(arg1_8, SquadModel_upvr.format(squad))
		end;
	}))
end