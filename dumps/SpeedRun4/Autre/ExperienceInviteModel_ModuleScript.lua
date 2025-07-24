-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:32
-- Luau version 6, Types version 3
-- Time taken: 0.003286 seconds

local RoduxSquads = script:FindFirstAncestor("RoduxSquads")
local t = require(RoduxSquads.Parent.t)
local ExperienceInviteVoteType_upvr = require(RoduxSquads.Enums.ExperienceInviteVoteType)
local function _(arg1) -- Line 9, Named "getSpotsTaken"
	--[[ Upvalues[1]:
		[1]: ExperienceInviteVoteType_upvr (readonly)
	]]
	local var6
	for i = 1, #arg1 do
		if arg1[i].voteType == ExperienceInviteVoteType_upvr.Accept then
			var6 += 1
		end
	end
	return var6
end
local module_2_upvr = {}
function module_2_upvr.new(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	assert(module_2_upvr.isValid(arg1))
	module_2_upvr.__index = module_2_upvr
	setmetatable(arg1, module_2_upvr)
	return arg1
end
local ExperienceInviteState_upvr = require(RoduxSquads.Enums.ExperienceInviteState)
function module_2_upvr.mock(arg1) -- Line 41
	--[[ Upvalues[3]:
		[1]: ExperienceInviteVoteType_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: ExperienceInviteState_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13 = arg1
	if not var13 then
		var13 = {}
	end
	local var14 = var13
	var13 = var14.votes
	local var15 = var13
	if not var15 then
		var15 = {}
		var15[1] = {
			userId = 456;
			voteIdentifier = "voteIdentifier";
			voteType = ExperienceInviteVoteType_upvr.Accept;
		}
	end
	for i_2 = 1, #var15 do
		if var15[i_2].voteType == ExperienceInviteVoteType_upvr.Accept then
		end
	end
	local module_3 = {
		createdAtTime = var14.createdAtTime or "2024-07-19T21:02:47.777+00:00";
		experienceInviteId = var14.experienceInviteId or "987";
	}
	if not var14.experienceDetail then
	end
	module_3.experienceDetail = {
		placeId = 15308759682;
		gameInstanceId = "instanceId";
	}
	module_3.inviterId = var14.inviterId or 123456
	module_3.membershipEntityId = var14.membershipEntityId or "54321"
	module_3.spotsTaken = 0 + 1
	local state = var14.state
	if not state then
		state = ExperienceInviteState_upvr.Active
	end
	module_3.state = state
	module_3.totalSpots = var14.totalSpots or 6
	module_3.versionId = var14.version or 1
	module_3.votes = var15
	return module_2_upvr.new(module_3)
end
function module_2_upvr.format(arg1) -- Line 72
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: ExperienceInviteVoteType_upvr (readonly)
	]]
	local votes = arg1.votes
	local module = {
		createdAtTime = arg1.createdAtTime;
		experienceDetail = arg1.experienceDetail;
		experienceInviteId = arg1.experienceInviteId;
		inviterId = arg1.inviterId;
		membershipEntityId = arg1.membershipEntityId;
	}
	local var24
	for i_3 = 1, #votes do
		if votes[i_3].voteType == ExperienceInviteVoteType_upvr.Accept then
			var24 += 1
		end
	end
	module.spotsTaken = var24
	module.state = arg1.state
	module.totalSpots = arg1.totalSpots
	module.versionId = arg1.versionId
	module.votes = votes
	return module_2_upvr.new(module)
end
module_2_upvr.isValid = t.strictInterface({
	createdAtTime = t.string;
	experienceDetail = t.interface({
		placeId = t.number;
		gameInstanceId = t.optional(t.string);
	});
	experienceInviteId = t.string;
	inviterId = t.number;
	membershipEntityId = t.string;
	spotsTaken = t.number;
	state = t.string;
	totalSpots = t.number;
	versionId = t.number;
	votes = t.array(t.interface({
		userId = t.number;
		voteIdentifier = t.optional(t.string);
		voteType = t.string;
	}));
})
return module_2_upvr