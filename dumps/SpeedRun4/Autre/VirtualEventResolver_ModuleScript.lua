-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:25
-- Luau version 6, Types version 3
-- Time taken: 0.002193 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local VirtualEventConnector = require(GraphQLServer.graphql.connectors.VirtualEventConnector)
local ExperienceConnector = require(GraphQLServer.graphql.connectors.ExperienceConnector)
local module = {}
local tbl_2 = {}
local neverShowNotificationModalAgain_2_upvr = VirtualEventConnector.neverShowNotificationModalAgain
function tbl_2.neverShowNotificationModalAgain(arg1, arg2, arg3) -- Line 19
	--[[ Upvalues[1]:
		[1]: neverShowNotificationModalAgain_2_upvr (readonly)
	]]
	return neverShowNotificationModalAgain_2_upvr(arg3.fetchImpl)
end
local enablePushNotifications_2_upvr = VirtualEventConnector.enablePushNotifications
function tbl_2.enablePushNotifications(arg1, arg2, arg3) -- Line 22
	--[[ Upvalues[1]:
		[1]: enablePushNotifications_2_upvr (readonly)
	]]
	return enablePushNotifications_2_upvr(arg3.fetchImpl)
end
module.VirtualEventMutations = tbl_2
local tbl_4 = {}
local findExperienceDetailsByUniverseId_upvr = ExperienceConnector.findExperienceDetailsByUniverseId
function tbl_4.experienceDetails(arg1, arg2, arg3) -- Line 27
	--[[ Upvalues[1]:
		[1]: findExperienceDetailsByUniverseId_upvr (readonly)
	]]
	return findExperienceDetailsByUniverseId_upvr(tostring(arg1.universeId), arg3.fetchImpl)
end
local findExperienceMediaByUniverseId_upvr = ExperienceConnector.findExperienceMediaByUniverseId
function tbl_4.media(arg1, arg2, arg3) -- Line 30
	--[[ Upvalues[1]:
		[1]: findExperienceMediaByUniverseId_upvr (readonly)
	]]
	return findExperienceMediaByUniverseId_upvr(tostring(arg1.universeId), arg3.fetchImpl)
end
local findRsvpCountersByVirtualEventId_upvr = VirtualEventConnector.findRsvpCountersByVirtualEventId
function tbl_4.rsvpCounters(arg1, arg2, arg3) -- Line 33
	--[[ Upvalues[1]:
		[1]: findRsvpCountersByVirtualEventId_upvr (readonly)
	]]
	return findRsvpCountersByVirtualEventId_upvr(arg1.id, arg3.fetchImpl)
end
local findRsvpsByVirtualEventId_upvr = VirtualEventConnector.findRsvpsByVirtualEventId
function tbl_4.rsvps(arg1, arg2, arg3) -- Line 36
	--[[ Upvalues[1]:
		[1]: findRsvpsByVirtualEventId_upvr (readonly)
	]]
	return findRsvpsByVirtualEventId_upvr(arg1.id, arg3.fetchImpl)
end
module.VirtualEvent = tbl_4
local tbl = {
	virtualEvents = function() -- Line 41, Named "virtualEvents"
		return {}
	end;
}
local updateRsvpStatus_upvr = VirtualEventConnector.updateRsvpStatus
function tbl.virtualEventRsvp(arg1, arg2, arg3) -- Line 44
	--[[ Upvalues[1]:
		[1]: updateRsvpStatus_upvr (readonly)
	]]
	return updateRsvpStatus_upvr(arg2.id, arg2.rsvpStatus, arg3.fetchImpl)
end
module.Mutation = tbl
local tbl_3 = {}
local findVirtualEventById_upvr = VirtualEventConnector.findVirtualEventById
function tbl_3.virtualEvent(arg1, arg2, arg3) -- Line 49
	--[[ Upvalues[1]:
		[1]: findVirtualEventById_upvr (readonly)
	]]
	return findVirtualEventById_upvr(arg2.id, arg3.fetchImpl)
end
local findVirtualEventsByUniverseId_upvr = VirtualEventConnector.findVirtualEventsByUniverseId
function tbl_3.virtualEventsByUniverseId(arg1, arg2, arg3) -- Line 52
	--[[ Upvalues[1]:
		[1]: findVirtualEventsByUniverseId_upvr (readonly)
	]]
	return findVirtualEventsByUniverseId_upvr(arg2.universeId, arg2.options, arg3.fetchImpl)
end
module.Query = tbl_3
return module