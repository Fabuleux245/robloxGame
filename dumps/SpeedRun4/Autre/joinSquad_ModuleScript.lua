-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:23
-- Luau version 6, Types version 3
-- Time taken: 0.014066 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local logInExpCoplayTelemetry_upvr = require(SquadsCore.Analytics.logInExpCoplayTelemetry)
local SquadCoplayJoin_upvr = require(SquadsCore.Enums.SquadCoplayJoin)
local SquadPromptType_upvr = require(SquadsCore.Enums.SquadPromptType)
local NetworkingSquads_upvr = require(SquadsCore.Http.NetworkingSquads)
local SharedFlags = require(Parent.SharedFlags)
local FFlagEnableSquadCoplayAnalytic_upvr = SharedFlags.FFlagEnableSquadCoplayAnalytic
local function _(arg1, arg2, arg3, arg4) -- Line 23
	--[[ Upvalues[5]:
		[1]: NetworkingSquads_upvr (readonly)
		[2]: FFlagEnableSquadCoplayAnalytic_upvr (readonly)
		[3]: logInExpCoplayTelemetry_upvr (readonly)
		[4]: SquadCoplayJoin_upvr (readonly)
		[5]: SquadPromptType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 29
		--[[ Upvalues[9]:
			[1]: NetworkingSquads_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
			[4]: arg4 (readonly)
			[5]: logInExpCoplayTelemetry_upvr (copied, readonly)
			[6]: SquadCoplayJoin_upvr (copied, readonly)
			[7]: arg3 (readonly)
			[8]: arg2 (readonly)
			[9]: SquadPromptType_upvr (copied, readonly)
		]]
		local tbl_9 = {}
		tbl_9.squadId = arg1
		local var12 = true
		tbl_9.leaveExisting = var12
		if FFlagEnableSquadCoplayAnalytic_upvr then
			var12 = arg4
		else
			var12 = nil
		end
		tbl_9.squadLocation = var12
		local any_dispatch_result1_4 = arg1_2:dispatch(NetworkingSquads_upvr.JoinSquad.API(tbl_9))
		if FFlagEnableSquadCoplayAnalytic_upvr then
			any_dispatch_result1_4 = any_dispatch_result1_4:andThen(function(arg1_3) -- Line 37
				--[[ Upvalues[4]:
					[1]: logInExpCoplayTelemetry_upvr (copied, readonly)
					[2]: arg4 (copied, readonly)
					[3]: SquadCoplayJoin_upvr (copied, readonly)
					[4]: arg3 (copied, readonly)
				]]
				local groupUpId_5 = arg1_3.responseBody.groupUp.groupUpId
				local members_5 = arg1_3.responseBody.groupUp.members
				if groupUpId_5 and members_5 then
					logInExpCoplayTelemetry_upvr(groupUpId_5, members_5, arg4, SquadCoplayJoin_upvr.PartyJoin, arg3)
				end
			end)
		end
		return any_dispatch_result1_4:catch(function(arg1_4) -- Line 53
			--[[ Upvalues[3]:
				[1]: arg2 (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: SquadPromptType_upvr (copied, readonly)
			]]
			arg2(arg1_2, {
				hideCancelButton = true;
				promptType = SquadPromptType_upvr.Error;
			})
		end)
	end
end
local Promise_upvr = require(Parent.Promise)
local leaveSquad_upvr = require(script.Parent.leaveSquad)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnablePartyDevAPI")
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = SharedFlags.FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
return function(arg1, arg2, arg3, arg4, arg5) -- Line 63
	--[[ Upvalues[9]:
		[1]: SquadPromptType_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: FFlagEnableSquadCoplayAnalytic_upvr (readonly)
		[4]: NetworkingSquads_upvr (readonly)
		[5]: logInExpCoplayTelemetry_upvr (readonly)
		[6]: SquadCoplayJoin_upvr (readonly)
		[7]: leaveSquad_upvr (readonly)
		[8]: game_GetEngineFeature_result1_upvr (readonly)
		[9]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
	]]
	return function(arg1_5) -- Line 70
		--[[ Upvalues[14]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: SquadPromptType_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
			[6]: arg3 (readonly)
			[7]: arg4 (readonly)
			[8]: NetworkingSquads_upvr (copied, readonly)
			[9]: logInExpCoplayTelemetry_upvr (copied, readonly)
			[10]: SquadCoplayJoin_upvr (copied, readonly)
			[11]: leaveSquad_upvr (copied, readonly)
			[12]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[13]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (copied, readonly)
			[14]: arg5 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_getState_result1 = arg1_5:getState()
		local Squad_2 = any_getState_result1.Squad
		if Squad_2 then
			Squad_2 = any_getState_result1.Squad.Squad
			if Squad_2 then
				Squad_2 = any_getState_result1.Squad.Squad.currentSquad
				if Squad_2 then
					Squad_2 = any_getState_result1.Squad.Squad.currentSquad.squadId
				end
			end
		end
		if Squad_2 == arg1 then
			arg2(arg1_5, {
				hideCancelButton = true;
				promptType = SquadPromptType_upvr.AlreadyJoined;
			})
			do
				return Promise_upvr.resolve({})
			end
			local var82_upvr
		end
		if not Squad_2 then
			var82_upvr = FFlagEnableSquadCoplayAnalytic_upvr
			if var82_upvr then
			else
			end
			if FFlagEnableSquadCoplayAnalytic_upvr then
				var82_upvr = arg4
			else
				var82_upvr = nil
			end
			local var93_upvr
			return arg1_5:dispatch(function(arg1_18) -- Line 29
				--[[ Upvalues[9]:
					[1]: NetworkingSquads_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
					[4]: var82_upvr (readonly)
					[5]: logInExpCoplayTelemetry_upvr (copied, readonly)
					[6]: SquadCoplayJoin_upvr (copied, readonly)
					[7]: var93_upvr (readonly)
					[8]: arg2 (readonly)
					[9]: SquadPromptType_upvr (copied, readonly)
				]]
				local tbl_7 = {}
				tbl_7.squadId = arg1
				local var86 = true
				tbl_7.leaveExisting = var86
				if FFlagEnableSquadCoplayAnalytic_upvr then
					var86 = var82_upvr
				else
					var86 = nil
				end
				tbl_7.squadLocation = var86
				local any_dispatch_result1_2 = arg1_18:dispatch(NetworkingSquads_upvr.JoinSquad.API(tbl_7))
				if FFlagEnableSquadCoplayAnalytic_upvr then
					any_dispatch_result1_2 = any_dispatch_result1_2:andThen(function(arg1_19) -- Line 37
						--[[ Upvalues[4]:
							[1]: logInExpCoplayTelemetry_upvr (copied, readonly)
							[2]: var82_upvr (copied, readonly)
							[3]: SquadCoplayJoin_upvr (copied, readonly)
							[4]: var93_upvr (copied, readonly)
						]]
						local groupUpId_3 = arg1_19.responseBody.groupUp.groupUpId
						local members_4 = arg1_19.responseBody.groupUp.members
						if groupUpId_3 then
							if members_4 then
								logInExpCoplayTelemetry_upvr(groupUpId_3, members_4, var82_upvr, SquadCoplayJoin_upvr.PartyJoin, var93_upvr)
							end
						end
					end)
				end
				return any_dispatch_result1_2:catch(function(arg1_20) -- Line 53
					--[[ Upvalues[3]:
						[1]: arg2 (copied, readonly)
						[2]: arg1_18 (readonly)
						[3]: SquadPromptType_upvr (copied, readonly)
					]]
					arg2(arg1_18, {
						hideCancelButton = true;
						promptType = SquadPromptType_upvr.Error;
					})
				end)
			end)
		end
		function var93_upvr() -- Line 102
			--[[ Upvalues[10]:
				[1]: arg1_5 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
				[5]: arg3 (copied, readonly)
				[6]: arg4 (copied, readonly)
				[7]: NetworkingSquads_upvr (copied, readonly)
				[8]: logInExpCoplayTelemetry_upvr (copied, readonly)
				[9]: SquadCoplayJoin_upvr (copied, readonly)
				[10]: SquadPromptType_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var94_upvr
			if var94_upvr then
			else
			end
			if FFlagEnableSquadCoplayAnalytic_upvr then
				var94_upvr = arg4
			else
				var94_upvr = nil
			end
			local var96_upvr
			arg1_5:dispatch(function(arg1_21) -- Line 29
				--[[ Upvalues[9]:
					[1]: NetworkingSquads_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: FFlagEnableSquadCoplayAnalytic_upvr (copied, readonly)
					[4]: var94_upvr (readonly)
					[5]: logInExpCoplayTelemetry_upvr (copied, readonly)
					[6]: SquadCoplayJoin_upvr (copied, readonly)
					[7]: var96_upvr (readonly)
					[8]: arg2 (readonly)
					[9]: SquadPromptType_upvr (copied, readonly)
				]]
				local tbl_4 = {}
				tbl_4.squadId = arg1
				local var98 = true
				tbl_4.leaveExisting = var98
				if FFlagEnableSquadCoplayAnalytic_upvr then
					var98 = var94_upvr
				else
					var98 = nil
				end
				tbl_4.squadLocation = var98
				local any_dispatch_result1_3 = arg1_21:dispatch(NetworkingSquads_upvr.JoinSquad.API(tbl_4))
				if FFlagEnableSquadCoplayAnalytic_upvr then
					any_dispatch_result1_3 = any_dispatch_result1_3:andThen(function(arg1_22) -- Line 37
						--[[ Upvalues[4]:
							[1]: logInExpCoplayTelemetry_upvr (copied, readonly)
							[2]: var94_upvr (copied, readonly)
							[3]: SquadCoplayJoin_upvr (copied, readonly)
							[4]: var96_upvr (copied, readonly)
						]]
						local groupUpId_2 = arg1_22.responseBody.groupUp.groupUpId
						local members_2 = arg1_22.responseBody.groupUp.members
						if groupUpId_2 then
							if members_2 then
								logInExpCoplayTelemetry_upvr(groupUpId_2, members_2, var94_upvr, SquadCoplayJoin_upvr.PartyJoin, var96_upvr)
							end
						end
					end)
				end
				return any_dispatch_result1_3:catch(function(arg1_23) -- Line 53
					--[[ Upvalues[3]:
						[1]: arg2 (copied, readonly)
						[2]: arg1_21 (readonly)
						[3]: SquadPromptType_upvr (copied, readonly)
					]]
					arg2(arg1_21, {
						hideCancelButton = true;
						promptType = SquadPromptType_upvr.Error;
					})
				end)
			end)
		end
		if game_GetEngineFeature_result1_upvr then
			var82_upvr = arg4
		else
			var82_upvr = nil
		end
		if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
		else
		end
		return arg1_5:dispatch(leaveSquad_upvr(SquadPromptType_upvr.JoinAnotherSquad, arg2, var93_upvr, var82_upvr, true))
	end
end