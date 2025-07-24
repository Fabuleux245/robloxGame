-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:06
-- Luau version 6, Types version 3
-- Time taken: 0.006156 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(GraphQLServer.Parent.Promise)
local GraphQLError_upvr = require(GraphQLServer.Parent.GraphQL).GraphQLError
local Fetch = require(GraphQLServer.Parent.Fetch)
local fetch_upvr = Fetch.fetch
local Response_upvr = Fetch.Response
local UrlBuilder = require(GraphQLServer.Parent.UrlBuilder).UrlBuilder
local module = {}
local any_fromString_result1_upvr_2 = UrlBuilder.fromString("apis:virtual-events/v1/virtual-events/{id}/rsvps")
local any_fromString_result1_upvr_6 = UrlBuilder.fromString("apis:virtual-events/v1/virtual-events/{id}")
function module.findVirtualEventById(arg1, arg2) -- Line 34
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr_6 (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 37
		--[[ Upvalues[5]:
			[1]: any_fromString_result1_upvr_6 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.id = arg1
		local any_expect_result1_7 = fetch_upvr(any_fromString_result1_upvr_6(tbl), {
			method = "GET";
		}):catch(function() -- Line 40
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1_7.ok then
			arg2_2(GraphQLError_upvr.new(string.format("Failed to find VirtualEvent matching id: %s.", arg1)))
		else
			local any_expect_result1_4 = any_expect_result1_7:json():catch(function() -- Line 52
				return nil
			end):expect()
			if not any_expect_result1_4 then
				arg2_2(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for VirtualEvent matching id: %s.", arg1)))
				return
			end
			arg1_2(any_expect_result1_4)
		end
	end)
end
local any_fromString_result1_upvr_4 = UrlBuilder.fromString("apis:virtual-events/v1/universes/{id}/virtual-events?cursor={cursor}&limit={limit}&fromUtc={fromUtc}")
function module.findVirtualEventsByUniverseId(arg1, arg2, arg3) -- Line 75
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr_4 (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg3 then
	else
	end
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 82
		--[[ Upvalues[6]:
			[1]: any_fromString_result1_upvr_4 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: fetch_upvr (readonly)
			[5]: Response_upvr (copied, readonly)
			[6]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		tbl_2.id = arg1
		local var22
		if arg2 and arg2.cursor then
			var22 = arg2.cursor
		else
			var22 = ""
		end
		tbl_2.cursor = var22
		if arg2 and arg2.limit then
			var22 = arg2.limit
		else
			var22 = 25
		end
		tbl_2.limit = var22
		if arg2 and arg2.fromUtc then
			var22 = arg2.fromUtc
		else
			var22 = ""
		end
		tbl_2.fromUtc = var22
		var22 = any_fromString_result1_upvr_4(tbl_2)
		var22 = fetch_upvr(var22, {
			method = "GET";
		}):catch(function() -- Line 91
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect().ok
		if not var22 then
			var22 = arg2_3
			var22(GraphQLError_upvr.new(string.format("Failed to find experience matching universeId: %i", arg1)))
		else
			var22 = fetch_upvr(var22, {
				method = "GET";
			}):catch(function() -- Line 91
				--[[ Upvalues[1]:
					[1]: Response_upvr (copied, readonly)
				]]
				return Response_upvr.error()
			end):expect():json()
			local function _() -- Line 103
				return nil
			end
			var22 = var22:catch(_):expect()
			if not var22 then
				arg2_3(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for experience matching universeId: %i", arg1)))
				return
			end
			arg1_3({
				cursor = var22.nextPageCursor;
				virtualEvents = var22.data;
			})
		end
	end)
end
function module.findRsvpsByVirtualEventId(arg1, arg2) -- Line 131
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr_2 (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_4, arg2_4) -- Line 134
		--[[ Upvalues[5]:
			[1]: any_fromString_result1_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl_9 = {}
		tbl_9.id = arg1
		local any_expect_result1_8 = fetch_upvr(any_fromString_result1_upvr_2(tbl_9), {
			method = "GET";
		}):catch(function() -- Line 137
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1_8.ok then
			arg2_4(GraphQLError_upvr.new(string.format("Failed to find RSVPs matching VirtualEvent id: %s.", arg1)))
		else
			local any_expect_result1_2 = any_expect_result1_8:json():catch(function() -- Line 150
				return nil
			end):expect()
			if not any_expect_result1_2 then
				arg2_4(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for RSVPs matching VirtualEvent id: %s.", arg1)))
				return
			end
			arg1_4(any_expect_result1_2.data)
		end
	end)
end
local any_fromString_result1_upvr_3 = UrlBuilder.fromString("apis:virtual-events/v1/virtual-events/{id}/rsvps/counters")
function module.findRsvpCountersByVirtualEventId(arg1, arg2) -- Line 173
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr_3 (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_5, arg2_5) -- Line 176
		--[[ Upvalues[5]:
			[1]: any_fromString_result1_upvr_3 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl_7 = {}
		tbl_7.id = arg1
		local any_expect_result1_6 = fetch_upvr(any_fromString_result1_upvr_3(tbl_7), {
			method = "GET";
		}):catch(function() -- Line 179
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1_6.ok then
			arg2_5(GraphQLError_upvr.new(string.format("Failed to find RSVP counters matching VirtualEvent id: %s.", arg1)))
		else
			local any_expect_result1_5 = any_expect_result1_6:json():catch(function() -- Line 194
				return nil
			end):expect()
			if not any_expect_result1_5 then
				arg2_5(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for RSVP counters matching VirtualEvent id: %s.", arg1)))
				return
			end
			arg1_5(any_expect_result1_5.counters)
		end
	end)
end
function module.updateRsvpStatus(arg1, arg2, arg3) -- Line 217
	--[[ Upvalues[6]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr_2 (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: Response_upvr (readonly)
		[6]: GraphQLError_upvr (readonly)
	]]
	if arg3 then
	else
	end
	return Promise_upvr.new(function(arg1_6, arg2_6) -- Line 224
		--[[ Upvalues[7]:
			[1]: any_fromString_result1_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: HttpService_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: Response_upvr (copied, readonly)
			[7]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl_5 = {}
		tbl_5.id = arg1
		local tbl_6 = {
			method = "POST";
		}
		local tbl_3 = {}
		tbl_3.rsvpStatus = arg2
		tbl_6.body = HttpService_upvr:JSONEncode(tbl_3)
		tbl_6.headers = {
			["Content-Type"] = "application/json";
			Accept = "application/json";
		}
		local any_expect_result1 = fetch_upvr(any_fromString_result1_upvr_2(tbl_5), tbl_6):catch(function() -- Line 236
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1.ok then
			arg2_6(GraphQLError_upvr.new(string.format("Failed to set RSVP status matching VirtualEvent id: %s.", arg1)))
		else
			local any_expect_result1_3 = any_expect_result1:json():catch(function() -- Line 251
				return nil
			end):expect()
			if not any_expect_result1_3 then
				arg2_6(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for RSVP status matching VirtualEvent id: %s.", arg1)))
				return
			end
			local tbl_8 = {
				shouldSeeNotificationsUpsellModal = any_expect_result1_3.shouldSeeNotificationsUpsellModal;
			}
			local tbl_4 = {}
			tbl_4.id = arg1
			tbl_4.userRsvpStatus = any_expect_result1_3.rsvpStatus
			tbl_8.virtualEvent = tbl_4
			arg1_6(tbl_8)
		end
	end)
end
local any_fromString_result1_upvr = UrlBuilder.fromString("apis:virtual-events/v1/notifications/modal-history")
function module.neverShowNotificationModalAgain(arg1) -- Line 282
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg1 then
	else
	end
	return Promise_upvr.new(function(arg1_7, arg2) -- Line 285
		--[[ Upvalues[4]:
			[1]: any_fromString_result1_upvr (copied, readonly)
			[2]: fetch_upvr (readonly)
			[3]: Response_upvr (copied, readonly)
			[4]: GraphQLError_upvr (copied, readonly)
		]]
		if not fetch_upvr(any_fromString_result1_upvr(), {
			method = "POST";
		}):catch(function() -- Line 290
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect().ok then
			arg2(GraphQLError_upvr.new("Failed to update modal history"))
		else
			arg1_7(true)
		end
	end)
end
local any_fromString_result1_upvr_5 = UrlBuilder.fromString("apis:virtual-events/v1/notifications/preferences")
function module.enablePushNotifications(arg1) -- Line 306
	--[[ Upvalues[6]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_fromString_result1_upvr_5 (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: Response_upvr (readonly)
		[6]: GraphQLError_upvr (readonly)
	]]
	if arg1 then
	else
	end
	return Promise_upvr.new(function(arg1_8, arg2) -- Line 309
		--[[ Upvalues[5]:
			[1]: any_fromString_result1_upvr_5 (copied, readonly)
			[2]: fetch_upvr (readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		if not fetch_upvr(any_fromString_result1_upvr_5(), {
			method = "POST";
			body = HttpService_upvr:JSONEncode({
				isEnabled = true;
			});
			headers = {
				["Content-Type"] = "application/json";
				Accept = "application/json";
			};
		}):catch(function() -- Line 322
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect().ok then
			arg2(GraphQLError_upvr.new("Failed to update notification preferences"))
		else
			arg1_8(true)
		end
	end)
end
return module