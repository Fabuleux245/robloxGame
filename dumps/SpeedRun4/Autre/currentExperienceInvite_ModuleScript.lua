-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:42
-- Luau version 6, Types version 3
-- Time taken: 0.001979 seconds

local RoduxSquads = script:FindFirstAncestor("RoduxSquads")
local Parent = RoduxSquads.Parent
local Cryo_upvr = require(Parent.Cryo)
local Rodux_upvr = require(Parent.Rodux)
local Logger_upvr = require(RoduxSquads.Logger)
local ExperienceInviteModel_upvr = require(RoduxSquads.Models).ExperienceInviteModel
local CurrentExperienceInviteUpdated_upvr = require(RoduxSquads.Actions).CurrentExperienceInviteUpdated
local CurrentExperienceInviteReceived_upvr = require(RoduxSquads.Actions).CurrentExperienceInviteReceived
local CurrentExperienceInviteDismissed_upvr = require(RoduxSquads.Actions).CurrentExperienceInviteDismissed
return function(arg1) -- Line 17
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: Rodux_upvr (readonly)
		[3]: Logger_upvr (readonly)
		[4]: ExperienceInviteModel_upvr (readonly)
		[5]: CurrentExperienceInviteUpdated_upvr (readonly)
		[6]: CurrentExperienceInviteReceived_upvr (readonly)
		[7]: CurrentExperienceInviteDismissed_upvr (readonly)
	]]
	local NetworkingSquads = arg1.NetworkingSquads
	local function var12_upvr(arg1_2, arg2) -- Line 20
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (copied, readonly)
		]]
		if arg1_2 and arg1_2.notification.experienceInviteId == arg2.experienceInviteId and (arg1_2.model == nil or arg1_2.model.versionId < arg2.versionId) then
			local module = {}
			module.model = arg2
			return Cryo_upvr.Dictionary.join(arg1_2, module)
		end
		return arg1_2
	end
	return Rodux_upvr.createReducer(nil, {
		[NetworkingSquads.CreateExperienceInvite.Succeeded.name] = function(arg1_3, arg2) -- Line 35
			--[[ Upvalues[1]:
				[1]: Logger_upvr (copied, readonly)
			]]
			Logger_upvr:debug("Create experience invite success. ExperienceInviteId: {}", arg2.responseBody.experienceInviteId)
			return arg1_3
		end;
		[NetworkingSquads.GetExperienceInvite.Succeeded.name] = function(arg1_4, arg2) -- Line 48
			--[[ Upvalues[2]:
				[1]: var12_upvr (readonly)
				[2]: ExperienceInviteModel_upvr (copied, readonly)
			]]
			local responseBody_2 = arg2.responseBody
			assert(responseBody_2, "Experience invite must exist.")
			return var12_upvr(arg1_4, ExperienceInviteModel_upvr.format(responseBody_2))
		end;
		[NetworkingSquads.VoteForExperienceInvite.Succeeded.name] = function(arg1_5, arg2) -- Line 58
			--[[ Upvalues[3]:
				[1]: Logger_upvr (copied, readonly)
				[2]: var12_upvr (readonly)
				[3]: ExperienceInviteModel_upvr (copied, readonly)
			]]
			local responseBody = arg2.responseBody
			Logger_upvr:debug("Vote experience invite success. ExperienceInviteId: {}", responseBody.experienceInviteId)
			return var12_upvr(arg1_5, ExperienceInviteModel_upvr.format(responseBody))
		end;
		[CurrentExperienceInviteUpdated_upvr.name] = function(arg1_6, arg2) -- Line 67
			--[[ Upvalues[2]:
				[1]: var12_upvr (readonly)
				[2]: ExperienceInviteModel_upvr (copied, readonly)
			]]
			local experienceInvite = arg2.payload.experienceInvite
			assert(experienceInvite, "Experience invite must exist.")
			return var12_upvr(arg1_6, ExperienceInviteModel_upvr.format(experienceInvite))
		end;
		[CurrentExperienceInviteReceived_upvr.name] = function(arg1_7, arg2) -- Line 76
			local experienceInviteId = arg2.payload.experienceInviteId
			if arg1_7 == nil or arg1_7.notification.experienceInviteId ~= experienceInviteId then
				return {
					notification = {
						experienceInviteId = experienceInviteId;
						membershipEntityId = arg2.payload.membershipEntityId;
						notificationId = arg2.payload.notificationId;
						isInviter = arg2.payload.isInviter;
					};
				}
			end
			return arg1_7
		end;
		[CurrentExperienceInviteDismissed_upvr.name] = function(arg1_8, arg2) -- Line 100
			if arg1_8 and arg1_8.notification.notificationId == arg2.payload.notificationId then
				return nil
			end
			return arg1_8
		end;
	})
end