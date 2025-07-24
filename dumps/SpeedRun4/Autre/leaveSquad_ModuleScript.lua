-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:24
-- Luau version 6, Types version 3
-- Time taken: 0.005108 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Promise_upvr = require(SquadsCore.Parent.Promise)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnablePartyDevAPI")
local SquadLocationEnum_upvr = require(SquadsCore.Enums.SquadLocationEnum)
local SquadRccEventManager_upvr = require(SquadsCore.ServiceManager.SquadRccEventManager)
local CurrentSquadUpdated_upvr = require(SquadsCore.RoduxSquads).Actions.CurrentSquadUpdated
local NetworkingSquads_upvr = require(SquadsCore.Http.NetworkingSquads)
local Logger_upvr = require(SquadsCore.Logger)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 16
	--[[ Upvalues[7]:
		[1]: Promise_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: SquadLocationEnum_upvr (readonly)
		[4]: SquadRccEventManager_upvr (readonly)
		[5]: CurrentSquadUpdated_upvr (readonly)
		[6]: NetworkingSquads_upvr (readonly)
		[7]: Logger_upvr (readonly)
	]]
	return function(arg1_2) -- Line 23
		--[[ Upvalues[12]:
			[1]: Promise_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[4]: arg4 (readonly)
			[5]: SquadLocationEnum_upvr (copied, readonly)
			[6]: SquadRccEventManager_upvr (copied, readonly)
			[7]: arg5 (readonly)
			[8]: CurrentSquadUpdated_upvr (copied, readonly)
			[9]: NetworkingSquads_upvr (copied, readonly)
			[10]: Logger_upvr (copied, readonly)
			[11]: arg1 (readonly)
			[12]: arg2 (readonly)
		]]
		local any_getState_result1 = arg1_2:getState()
		local Squad_2_upvr = any_getState_result1.Squad
		if Squad_2_upvr then
			Squad_2_upvr = any_getState_result1.Squad.Squad
			if Squad_2_upvr then
				Squad_2_upvr = any_getState_result1.Squad.Squad.currentSquad
				if Squad_2_upvr then
					Squad_2_upvr = any_getState_result1.Squad.Squad.currentSquad.squadId
				end
			end
		end
		if not Squad_2_upvr then
			return Promise_upvr.resolve()
		end
		local function var29() -- Line 35
			--[[ Upvalues[11]:
				[1]: arg3 (copied, readonly)
				[2]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[3]: arg4 (copied, readonly)
				[4]: SquadLocationEnum_upvr (copied, readonly)
				[5]: SquadRccEventManager_upvr (copied, readonly)
				[6]: arg5 (copied, readonly)
				[7]: arg1_2 (readonly)
				[8]: CurrentSquadUpdated_upvr (copied, readonly)
				[9]: NetworkingSquads_upvr (copied, readonly)
				[10]: Squad_2_upvr (readonly)
				[11]: Logger_upvr (copied, readonly)
			]]
			if arg3 then
				arg3()
			end
			if game_GetEngineFeature_result1_upvr and arg4 == SquadLocationEnum_upvr.InExperience then
				SquadRccEventManager_upvr:setLeaveSquadPendingAndFireEvent(true, arg5)
			end
			arg1_2:dispatch(CurrentSquadUpdated_upvr(nil))
			arg1_2:dispatch(NetworkingSquads_upvr.LeaveSquad.API({
				squadId = Squad_2_upvr;
			})):andThen(function() -- Line 47
				--[[ Upvalues[5]:
					[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
					[2]: arg4 (copied, readonly)
					[3]: SquadLocationEnum_upvr (copied, readonly)
					[4]: SquadRccEventManager_upvr (copied, readonly)
					[5]: arg5 (copied, readonly)
				]]
				if game_GetEngineFeature_result1_upvr and arg4 == SquadLocationEnum_upvr.InExperience then
					SquadRccEventManager_upvr:setLeaveSquadPendingAndFireEvent(false, arg5)
				end
			end):catch(function(arg1_5) -- Line 52
				--[[ Upvalues[1]:
					[1]: Logger_upvr (copied, readonly)
				]]
				Logger_upvr:error("Error occured with NetworkingSquads.LeaveSquad: {}", tostring(arg1_5))
			end)
		end
		if arg1 then
			local module = {
				onConfirm = var29;
			}
			module.promptType = arg1
			return arg2(arg1_2, module)
		end
		var29()
		return Promise_upvr.resolve()
	end
end