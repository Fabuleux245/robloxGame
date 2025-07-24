-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:47
-- Luau version 6, Types version 3
-- Time taken: 0.007676 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local dependencies = require(Squads.dependencies)
local FFlagEncodeSquadMembersUpdated_upvr = dependencies.SquadsCore.Flags.FFlagEncodeSquadMembersUpdated
local encodeSquadMembers_upvw = dependencies.SquadsCore.Common.encodeSquadMembers
local Cryo_upvr = dependencies.Cryo
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(Parent.Promise)
local AppStorageService_upvr = game:GetService("AppStorageService")
local LocalStorageKey_upvr = require(Parent.LocalStorage).Enums.LocalStorageKey
local RoduxSquads_upvr = dependencies.RoduxSquads
local var13_upvw
local NetworkingSquads_upvr = dependencies.NetworkingSquads
local EventNames_upvr = dependencies.SquadsCore.Analytics.EventNames
local Http_upvr = require(Parent.Http)
local SquadPromptType_upvr = dependencies.SquadsCore.Enums.SquadPromptType
return function(arg1, arg2) -- Line 23
	--[[ Upvalues[13]:
		[1]: FFlagEncodeSquadMembersUpdated_upvr (readonly)
		[2]: encodeSquadMembers_upvw (read and write)
		[3]: Cryo_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: Promise_upvr (readonly)
		[6]: AppStorageService_upvr (readonly)
		[7]: LocalStorageKey_upvr (readonly)
		[8]: RoduxSquads_upvr (readonly)
		[9]: var13_upvw (read and write)
		[10]: NetworkingSquads_upvr (readonly)
		[11]: EventNames_upvr (readonly)
		[12]: Http_upvr (readonly)
		[13]: SquadPromptType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 24
		--[[ Upvalues[15]:
			[1]: FFlagEncodeSquadMembersUpdated_upvr (copied, readonly)
			[2]: encodeSquadMembers_upvw (copied, read and write)
			[3]: Cryo_upvr (copied, readonly)
			[4]: HttpService_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: AppStorageService_upvr (copied, readonly)
			[7]: LocalStorageKey_upvr (copied, readonly)
			[8]: RoduxSquads_upvr (copied, readonly)
			[9]: var13_upvw (copied, read and write)
			[10]: NetworkingSquads_upvr (copied, readonly)
			[11]: arg1 (readonly)
			[12]: arg2 (readonly)
			[13]: EventNames_upvr (copied, readonly)
			[14]: Http_upvr (copied, readonly)
			[15]: SquadPromptType_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_getState_result1_2 = arg1_2:getState()
		local Squad = any_getState_result1_2.Squad
		if Squad then
			Squad = any_getState_result1_2.Squad.Squad
			if Squad then
				Squad = any_getState_result1_2.Squad.Squad.currentSquad
			end
		end
		local var55_upvr = Squad
		if var55_upvr then
			var55_upvr = Squad.squadId
		end
		local var56_upvr = Squad
		if var56_upvr then
			var56_upvr = Squad.parentChannelId
		end
		if Squad and Squad.members then
			local _ = Squad.members
		else
		end
		if not FFlagEncodeSquadMembersUpdated_upvr then
			local tbl_3_upvr = {}
			function encodeSquadMembers_upvw(arg1_9) -- Line 34
				--[[ Upvalues[3]:
					[1]: Cryo_upvr (copied, readonly)
					[2]: tbl_3_upvr (readonly)
					[3]: HttpService_upvr (copied, readonly)
				]]
				local any_map_result1_upvw = Cryo_upvr.List.map(tbl_3_upvr, function(arg1_10) -- Line 35
					return arg1_10.userId
				end)
				local pcall_result1, pcall_result2_4 = pcall(function() -- Line 39
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: any_map_result1_upvw (read and write)
					]]
					return HttpService_upvr:JSONEncode(any_map_result1_upvw)
				end)
				if pcall_result1 then
					return pcall_result2_4
				end
				return "[]"
			end
		end
		if not var55_upvr then
			return Promise_upvr.resolve()
		end
		local pcall_result1_4, _ = pcall(function() -- Line 57
			--[[ Upvalues[2]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: LocalStorageKey_upvr (copied, readonly)
			]]
			return AppStorageService_upvr:GetItem(LocalStorageKey_upvr.BrowserTrackerId)
		end)
		if pcall_result1_4 then
		else
		end
		local function _(arg1_11) -- Line 62, Named "updateCurrentExperienceInviteStatus"
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: RoduxSquads_upvr (copied, readonly)
			]]
			local tbl_12 = {}
			tbl_12.isExperienceInvitePending = arg1_11
			arg1_2:dispatch(RoduxSquads_upvr.Actions.CurrentExperienceInviteStatusUpdated(tbl_12))
		end
		local var69_upvr = ""
		local encodeSquadMembers_upvw_result1_upvr = encodeSquadMembers_upvw(tbl_3_upvr)
		local function CreateExperienceInvite(arg1_12) -- Line 68
			--[[ Upvalues[15]:
				[1]: var13_upvw (copied, read and write)
				[2]: arg1_2 (readonly)
				[3]: RoduxSquads_upvr (copied, readonly)
				[4]: NetworkingSquads_upvr (copied, readonly)
				[5]: var55_upvr (readonly)
				[6]: arg1 (copied, readonly)
				[7]: var69_upvr (readonly)
				[8]: arg2 (copied, readonly)
				[9]: EventNames_upvr (copied, readonly)
				[10]: var56_upvr (readonly)
				[11]: encodeSquadMembers_upvw_result1_upvr (readonly)
				[12]: tbl_3_upvr (readonly)
				[13]: HttpService_upvr (copied, readonly)
				[14]: Http_upvr (copied, readonly)
				[15]: SquadPromptType_upvr (copied, readonly)
			]]
			if var13_upvw then
				task.cancel(var13_upvw)
				var13_upvw = nil
			end
			arg1_2:dispatch(RoduxSquads_upvr.Actions.CurrentExperienceInviteStatusUpdated({
				isExperienceInvitePending = true;
			}))
			local module = {
				membershipEntityId = var55_upvr;
			}
			module.placeId = arg1
			module.voteIdentifier = var69_upvr
			return arg1_2:dispatch(NetworkingSquads_upvr.CreateExperienceInvite.API(module)):andThen(function(arg1_13) -- Line 82
				--[[ Upvalues[9]:
					[1]: arg2 (copied, readonly)
					[2]: EventNames_upvr (copied, readonly)
					[3]: var56_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: encodeSquadMembers_upvw_result1_upvr (copied, readonly)
					[6]: tbl_3_upvr (copied, readonly)
					[7]: var13_upvw (copied, read and write)
					[8]: arg1_2 (copied, readonly)
					[9]: RoduxSquads_upvr (copied, readonly)
				]]
				arg2.fireSquadAnalytics(EventNames_upvr.SquadExperienceInviteApiCall, {
					parentChannelId = var56_upvr;
					experienceInviteId = arg1_13.responseBody.experienceInviteId;
					isSuccess = true;
					invitationPlaceId = tonumber(arg1);
					squadMembers = encodeSquadMembers_upvw_result1_upvr;
					squadMembersCount = #tbl_3_upvr;
				})
				var13_upvw = task.delay(2, function() -- Line 93
					--[[ Upvalues[3]:
						[1]: arg1_2 (copied, readonly)
						[2]: RoduxSquads_upvr (copied, readonly)
						[3]: var13_upvw (copied, read and write)
					]]
					arg1_2:dispatch(RoduxSquads_upvr.Actions.CurrentExperienceInviteStatusUpdated({
						isExperienceInvitePending = false;
					}))
					var13_upvw = nil
				end)
			end):catch(function(arg1_14) -- Line 98
				--[[ Upvalues[12]:
					[1]: arg1_2 (copied, readonly)
					[2]: RoduxSquads_upvr (copied, readonly)
					[3]: HttpService_upvr (copied, readonly)
					[4]: arg2 (copied, readonly)
					[5]: EventNames_upvr (copied, readonly)
					[6]: var56_upvr (copied, readonly)
					[7]: arg1 (copied, readonly)
					[8]: encodeSquadMembers_upvw_result1_upvr (copied, readonly)
					[9]: tbl_3_upvr (copied, readonly)
					[10]: Http_upvr (copied, readonly)
					[11]: arg1_12 (readonly)
					[12]: SquadPromptType_upvr (copied, readonly)
				]]
				local tbl_15 = {
					isExperienceInvitePending = false;
				}
				arg1_2:dispatch(RoduxSquads_upvr.Actions.CurrentExperienceInviteStatusUpdated(tbl_15))
				local Body_upvr_2 = arg1_14.Body
				local pcall_result1_5, pcall_result2_3 = pcall(function() -- Line 102
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: Body_upvr_2 (readonly)
					]]
					return HttpService_upvr:JSONDecode(Body_upvr_2)
				end)
				local onConfirm
				if pcall_result1_5 then
					tbl_15 = pcall_result2_3.errorType
				else
					tbl_15 = nil
				end
				local tbl_5 = {}
				onConfirm = var56_upvr
				tbl_5.parentChannelId = onConfirm
				onConfirm = false
				tbl_5.isSuccess = onConfirm
				tbl_5.errorMessage = tbl_15
				if arg1_14.StatusCode then
					onConfirm = tostring(arg1_14.StatusCode)
				else
					onConfirm = nil
				end
				tbl_5.errorType = onConfirm
				onConfirm = tonumber(arg1)
				tbl_5.invitationPlaceId = onConfirm
				onConfirm = encodeSquadMembers_upvw_result1_upvr
				tbl_5.squadMembers = onConfirm
				onConfirm = #tbl_3_upvr
				tbl_5.squadMembersCount = onConfirm
				arg2.fireSquadAnalytics(EventNames_upvr.SquadExperienceInviteApiCall, tbl_5)
				onConfirm = Http_upvr
				if arg1_14.StatusCode == onConfirm.StatusCodes.CONFLICT then
					local tbl_4 = {}
					function onConfirm() -- Line 120
						--[[ Upvalues[1]:
							[1]: arg1_12 (copied, readonly)
						]]
						arg1_12(arg1_12)
					end
					tbl_4.onConfirm = onConfirm
					onConfirm = SquadPromptType_upvr.InvitedToExperience
					tbl_4.promptType = onConfirm
					arg2.setSquadPrompt(arg1_2, tbl_4)
				else
					local tbl = {}
					onConfirm = SquadPromptType_upvr.Error
					tbl.promptType = onConfirm
					arg2.setSquadPrompt(arg1_2, tbl)
				end
			end)
		end
		return CreateExperienceInvite(CreateExperienceInvite)
	end
end