-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:08
-- Luau version 6, Types version 3
-- Time taken: 0.000647 seconds

local gql = require(script:FindFirstAncestor("VirtualEvents").Parent.ApolloClient).gql
return {
	GET_VIRTUAL_EVENT = gql(require(script.Parent.GetVirtualEvent));
	UPDATE_RSVP_STATUS = gql(require(script.Parent.UpdateRsvpStatus));
	NEVER_SHOW_NOTIFICATIONS_MODAL_AGAIN = gql(require(script.Parent.NeverShowNotificationModalAgain));
	ENABLE_PUSH_NOTIFICATIONS = gql(require(script.Parent.EnablePushNotifications));
	GET_EVENTS_FOR_EXPERIENCE = gql(require(script.Parent.VirtualEventsForExperience));
}