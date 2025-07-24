-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:34
-- Luau version 6, Types version 3
-- Time taken: 0.004054 seconds

local Parent = script:FindFirstAncestor("RoduxSquads").Parent
local SquadInviteeModel_upvr = require(script.Parent.SquadInviteeModel)
local SquadMemberModel_upvr = require(script.Parent.SquadMemberModel)
local Cryo_upvr = require(Parent.Cryo)
local t = require(Parent.t)
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local module_2_upvr = {}
function module_2_upvr.new(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	assert(module_2_upvr.isValid(arg1))
	module_2_upvr.__index = module_2_upvr
	setmetatable(arg1, module_2_upvr)
	return arg1
end
function tryGetSquadId(arg1) -- Line 27
	local groupUpId = arg1.groupUpId
	if not groupUpId then
		groupUpId = arg1.squadId
	end
	return groupUpId
end
function module_2_upvr.mock(arg1) -- Line 31
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: SquadMemberModel_upvr (readonly)
		[3]: SquadInviteeModel_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: SquadInviteChangesExperimentation_upvr (readonly)
	]]
	local var9 = arg1
	if not var9 then
		var9 = {}
	end
	local var10 = var9
	local members = var10.members
	if not members then
		members = {}
		members[1] = {
			userId = 1234;
		}
	end
	local invitees = var10.invitees
	if not invitees then
		invitees = {}
		invitees[1] = {
			userId = 2345;
			invitedAtTimestampMs = 3333333;
		}
	end
	local module_3 = {
		squadId = tryGetSquadId(var10) or "12345";
		initiatorId = var10.initiatorId or 54321;
		createdAtTime = var10.createdAtTime or "2024-07-19T21:02:47.777+00:00";
		updatedAtTime = var10.updatedAtTime or "2024-07-19T21:02:47.777+00:00";
		deletedAtTime = var10.deletedAtTime;
	}
	local var18 = var10.parentChannelId or "23456"
	module_3.parentChannelId = var18
	module_3.members = Cryo_upvr.List.map(members, function(arg1_2) -- Line 34
		--[[ Upvalues[1]:
			[1]: SquadMemberModel_upvr (copied, readonly)
		]]
		return SquadMemberModel_upvr.mock(arg1_2)
	end)
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var18 = Cryo_upvr.List.map(invitees, function(arg1_3) -- Line 40
			--[[ Upvalues[1]:
				[1]: SquadInviteeModel_upvr (copied, readonly)
			]]
			return SquadInviteeModel_upvr.mock(arg1_3)
		end)
	else
		var18 = {}
	end
	module_3.invitees = var18
	return module_2_upvr.new(module_3)
end
function module_2_upvr.format(arg1) -- Line 59
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: SquadMemberModel_upvr (readonly)
		[3]: SquadInviteChangesExperimentation_upvr (readonly)
		[4]: SquadInviteeModel_upvr (readonly)
		[5]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var20 = Cryo_upvr.List.map
		var20 = var20(arg1.invitees, function(arg1_5) -- Line 65
			--[[ Upvalues[1]:
				[1]: SquadInviteeModel_upvr (copied, readonly)
			]]
			return SquadInviteeModel_upvr.format(arg1_5)
		end)
	else
		var20 = {}
	end
	local module = {
		createdAtTime = arg1.createdAtTime;
		deletedAtTime = arg1.deletedAtTime;
		initiatorId = arg1.initiatorId;
	}
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
	else
	end
	module.invitees = {}
	module.members = Cryo_upvr.List.map(arg1.members, function(arg1_4) -- Line 60
		--[[ Upvalues[1]:
			[1]: SquadMemberModel_upvr (copied, readonly)
		]]
		return SquadMemberModel_upvr.format(arg1_4)
	end)
	module.parentChannelId = arg1.parentChannelId
	module.squadId = tryGetSquadId(arg1)
	module.updatedAtTime = arg1.updatedAtTime
	return module_2_upvr.new(module)
end
module_2_upvr.isValid = t.strictInterface({
	createdAtTime = t.string;
	deletedAtTime = t.optional(t.string);
	initiatorId = t.number;
	invitees = t.array(SquadInviteeModel_upvr.isValid);
	members = t.array(SquadMemberModel_upvr.isValid);
	parentChannelId = t.string;
	squadId = t.string;
	updatedAtTime = t.string;
})
return module_2_upvr