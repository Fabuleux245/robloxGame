-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:17
-- Luau version 6, Types version 3
-- Time taken: 0.001168 seconds

return function(arg1) -- Line 5, Named "createMockVirtualEvent"
	local DateTime_now_result1 = DateTime.now()
	local DateTime_fromUnixTimestamp_result1 = DateTime.fromUnixTimestamp(DateTime_now_result1.UnixTimestamp + 86400)
	local module = {}
	module.id = arg1
	module.title = "Event Name"
	module.description = "Event description goes here..."
	module.host = {
		hostType = "user";
		hostId = '1';
		hostName = "Roblox";
		hasVerifiedBadge = true;
	}
	module.eventTime = {
		startUtc = DateTime_now_result1:ToIsoDate();
		endUtc = DateTime_fromUnixTimestamp_result1:ToIsoDate();
		startTime = DateTime_now_result1;
		endTime = DateTime_fromUnixTimestamp_result1;
	}
	module.universeId = "3531439676"
	module.eventStatus = "active"
	module.createdTime = DateTime_now_result1
	module.updatedTime = DateTime_now_result1
	module.userRsvpStatus = "none"
	module.eventCategories = {{
		category = "challenge";
		rank = 0;
	}, {
		category = "newContent";
		rank = 1;
	}}
	module.experienceDetails = {
		id = "3531439676";
		name = "Experience Name";
		playing = 50000;
	}
	module.rsvpCounters = {
		going = 2500;
		notGoing = 0;
		none = 0;
		maybeGoing = 0;
	}
	module.rsvps = {{
		userId = "957765952";
		rsvpStatus = "going";
	}, {
		userId = "35392";
		rsvpStatus = "going";
	}, {
		userId = "4416634";
		rsvpStatus = "going";
	}, {
		userId = "1893522417";
		rsvpStatus = "going";
	}, {
		userId = "1343930";
		rsvpStatus = "going";
	}, {
		userId = "29819622";
		rsvpStatus = "notGoing";
	}, {
		userId = "1668748746";
		rsvpStatus = "notGoing";
	}, {
		userId = "308199922";
		rsvpStatus = "notGoing";
	}}
	return module
end