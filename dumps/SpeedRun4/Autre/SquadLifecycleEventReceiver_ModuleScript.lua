-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:51
-- Luau version 6, Types version 3
-- Time taken: 0.004533 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local MessageBusService_upvr = game:GetService("MessageBusService")
local LuauPolyfill = require(Parent.LuauPolyfill)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SquadInitPollingFix", false)
local setTimeout_upvr = LuauPolyfill.setTimeout
local fetchActiveSquad_upvr = require(SquadsCore.Thunks.fetchActiveSquad)
local game_DefineFastInt_result1_upvr_4 = game:DefineFastInt("ActiveSquadInitPollingDelaySeconds", 3)
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local SquadViewFlags_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadViewFlags)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("ActiveSquadPollingCardIntervalSeconds", 30)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("ActiveSquadPollingLobbyIntervalSeconds", 60)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ActiveSquadPollingIdleIntervalSeconds", 120)
local setInterval_upvr = LuauPolyfill.setInterval
local clearInterval_upvr = LuauPolyfill.clearInterval
local RealtimeDelivery_upvr = require(Parent.RealtimeDelivery)
local Constants_upvr = require(SquadsCore.Common.Constants)
local Logger_upvr = require(SquadsCore.Logger)
local serializeTable_upvr = require(SquadsCore.Utils.serializeTable)
local RoduxSquads_upvr = require(SquadsCore.RoduxSquads)
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local any_GetMessageId_result1_upvr = MessageBusService_upvr:GetMessageId("Realtime", "appResume")
return function(arg1) -- Line 41
	--[[ Upvalues[23]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: setTimeout_upvr (readonly)
		[7]: fetchActiveSquad_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr_4 (readonly)
		[9]: clearTimeout_upvr (readonly)
		[10]: SquadViewFlags_upvr (readonly)
		[11]: game_DefineFastInt_result1_upvr_2 (readonly)
		[12]: game_DefineFastInt_result1_upvr_3 (readonly)
		[13]: game_DefineFastInt_result1_upvr (readonly)
		[14]: setInterval_upvr (readonly)
		[15]: clearInterval_upvr (readonly)
		[16]: RealtimeDelivery_upvr (readonly)
		[17]: Constants_upvr (readonly)
		[18]: Logger_upvr (readonly)
		[19]: serializeTable_upvr (readonly)
		[20]: RoduxSquads_upvr (readonly)
		[21]: SquadInviteChangesExperimentation_upvr (readonly)
		[22]: MessageBusService_upvr (readonly)
		[23]: any_GetMessageId_result1_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var29_upvr = tonumber(useLocalUserId_upvr()) or 0
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useSquadViewFlags_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr).useSquadViewFlags()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(-1)
	if game_DefineFastFlag_result1_upvr then
		React_upvr.useEffect(function() -- Line 54
			--[[ Upvalues[6]:
				[1]: setTimeout_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (readonly)
				[3]: fetchActiveSquad_upvr (copied, readonly)
				[4]: any_useState_result2_upvr_2 (readonly)
				[5]: game_DefineFastInt_result1_upvr_4 (copied, readonly)
				[6]: clearTimeout_upvr (copied, readonly)
			]]
			local setTimeout_upvr_result1_upvr = setTimeout_upvr(function() -- Line 55
				--[[ Upvalues[3]:
					[1]: useDispatch_upvr_result1_upvr (copied, readonly)
					[2]: fetchActiveSquad_upvr (copied, readonly)
					[3]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				useDispatch_upvr_result1_upvr(fetchActiveSquad_upvr())
				any_useState_result2_upvr_2(true)
			end, game_DefineFastInt_result1_upvr_4 * 1000)
			return function() -- Line 60
				--[[ Upvalues[2]:
					[1]: setTimeout_upvr_result1_upvr (readonly)
					[2]: clearTimeout_upvr (copied, readonly)
				]]
				if setTimeout_upvr_result1_upvr then
					clearTimeout_upvr(setTimeout_upvr_result1_upvr)
				end
			end
		end, {})
	end
	React_upvr.useEffect(function() -- Line 71
		--[[ Upvalues[11]:
			[1]: any_useSquadViewFlags_result1_upvr (readonly)
			[2]: SquadViewFlags_upvr (copied, readonly)
			[3]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			[4]: game_DefineFastInt_result1_upvr_3 (copied, readonly)
			[5]: game_DefineFastInt_result1_upvr (copied, readonly)
			[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[7]: any_useState_result1_upvr_2 (readonly)
			[8]: setInterval_upvr (copied, readonly)
			[9]: useDispatch_upvr_result1_upvr (readonly)
			[10]: fetchActiveSquad_upvr (copied, readonly)
			[11]: clearInterval_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var40
		if bit32.band(any_useSquadViewFlags_result1_upvr, SquadViewFlags_upvr.SquadSystemMessage) ~= 0 then
			var40 = game_DefineFastInt_result1_upvr_2
		elseif bit32.band(any_useSquadViewFlags_result1_upvr, SquadViewFlags_upvr.SquadLobby) ~= 0 then
			var40 = game_DefineFastInt_result1_upvr_3
		else
			var40 = game_DefineFastInt_result1_upvr
		end
		if game_DefineFastFlag_result1_upvr then
			if any_useState_result1_upvr_2 then
				local function _() -- Line 84
					--[[ Upvalues[2]:
						[1]: useDispatch_upvr_result1_upvr (copied, readonly)
						[2]: fetchActiveSquad_upvr (copied, readonly)
					]]
					useDispatch_upvr_result1_upvr(fetchActiveSquad_upvr())
				end
			else
			end
		else
		end
		local var19_result1_upvw = setInterval_upvr(function() -- Line 88
			--[[ Upvalues[2]:
				[1]: useDispatch_upvr_result1_upvr (copied, readonly)
				[2]: fetchActiveSquad_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(fetchActiveSquad_upvr())
		end, var40 * 1000)
		return function() -- Line 92
			--[[ Upvalues[2]:
				[1]: var19_result1_upvw (read and write)
				[2]: clearInterval_upvr (copied, readonly)
			]]
			if var19_result1_upvw then
				clearInterval_upvr(var19_result1_upvw)
			end
		end
	end, {arg1.currentSquadId, any_useSquadViewFlags_result1_upvr, any_useState_result1_upvr, any_useState_result1_upvr_2})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 103
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: useDispatch_upvr_result1_upvr (readonly)
			[3]: fetchActiveSquad_upvr (copied, readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		if any_useState_result1_upvr < arg1_2 then
			useDispatch_upvr_result1_upvr(fetchActiveSquad_upvr()):andThen(function() -- Line 105
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
				]]
				any_useState_result2_upvr(arg1_2)
			end)
		end
	end, {useDispatch_upvr_result1_upvr, fetchActiveSquad_upvr, any_useState_result2_upvr, any_useState_result1_upvr})
	RealtimeDelivery_upvr.useRealtimeNamespace(Constants_upvr.COMMUNICATION_CHANNEL_RTN_NAMESPACE, function(arg1_3) -- Line 112
		--[[ Upvalues[9]:
			[1]: Constants_upvr (copied, readonly)
			[2]: Logger_upvr (copied, readonly)
			[3]: serializeTable_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: var29_upvr (readonly)
			[6]: useDispatch_upvr_result1_upvr (readonly)
			[7]: RoduxSquads_upvr (copied, readonly)
			[8]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[9]: any_useCallback_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var51
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 5. Error Block 37 start (CF ANALYSIS FAILED)
		var51 = Logger_upvr:debug
		var51("Squad RTN received. Detail: {}, CurrentSquadId: {}, LocalUserId: {}", serializeTable_upvr(arg1_3), arg1.currentSquadId, var29_upvr)
		if arg1.currentSquadId ~= arg1_3.ChannelId then
			var51 = false
		else
			var51 = true
		end
		-- KONSTANTERROR: [7] 5. Error Block 37 end (CF ANALYSIS FAILED)
	end, {arg1.currentSquadId, useDispatch_upvr_result1_upvr, var29_upvr, any_useCallback_result1_upvr})
	React_upvr.useEffect(function() -- Line 164
		--[[ Upvalues[4]:
			[1]: MessageBusService_upvr (copied, readonly)
			[2]: any_GetMessageId_result1_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: fetchActiveSquad_upvr (copied, readonly)
		]]
		local any_Subscribe_result1_upvr = MessageBusService_upvr:Subscribe(any_GetMessageId_result1_upvr, function() -- Line 165
			--[[ Upvalues[2]:
				[1]: useDispatch_upvr_result1_upvr (copied, readonly)
				[2]: fetchActiveSquad_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(fetchActiveSquad_upvr())
		end, false, true)
		return function() -- Line 168
			--[[ Upvalues[1]:
				[1]: any_Subscribe_result1_upvr (readonly)
			]]
			any_Subscribe_result1_upvr:Disconnect()
		end
	end, {arg1.currentSquadId, useDispatch_upvr_result1_upvr})
	return nil
end