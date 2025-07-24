-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:51
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

return function(arg1) -- Line 5, Named "createMockVirtualEventResponse"
	local module = {}
	module.id = arg1
	module.title = "Event Title"
	module.description = "Event description..."
	module.host = {
		hostType = "user";
		hostId = 1;
		hostName = "Roblox";
		hasVerifiedBadge = false;
	}
	module.eventTime = {
		startUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate();
		endUtc = DateTime.fromLocalTime(2022, 1, 7):ToIsoDate();
	}
	module.universeId = 1
	module.placeId = 123456789
	module.eventStatus = "active"
	module.createdUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate()
	module.updatedUtc = DateTime.fromLocalTime(2022, 1, 1):ToIsoDate()
	module.userRsvpStatus = "none"
	return module
end