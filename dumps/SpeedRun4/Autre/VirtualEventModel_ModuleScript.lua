-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:52
-- Luau version 6, Types version 3
-- Time taken: 0.001790 seconds

return {
	mock = function(arg1) -- Line 7, Named "mock"
		local DateTime_now_result1 = DateTime.now()
		local module_2 = {}
		module_2.id = arg1
		module_2.title = "Event Name"
		module_2.description = "Event description goes here..."
		module_2.host = {
			hostType = "user";
			hostId = 1;
			hostName = "Roblox";
			hasVerifiedBadge = true;
		}
		module_2.eventTime = {
			startTime = DateTime_now_result1;
			endTime = DateTime.fromUnixTimestamp(DateTime_now_result1.UnixTimestamp + 86400);
			startUtc = DateTime_now_result1:ToIsoDate();
			endUtc = DateTime_now_result1:ToIsoDate();
		}
		module_2.universeId = 3531439676
		module_2.placeId = 123456789
		module_2.eventStatus = "active"
		module_2.createdTime = DateTime_now_result1
		module_2.updatedTime = DateTime_now_result1
		module_2.userRsvpStatus = "none"
		return module_2
	end;
	fromResponse = function(arg1) -- Line 38, Named "fromResponse"
		local DateTime_fromIsoDate_result1 = DateTime.fromIsoDate(arg1.eventTime.startUtc)
		local DateTime_fromIsoDate_result1_2 = DateTime.fromIsoDate(arg1.eventTime.endUtc)
		if DateTime_fromIsoDate_result1 and DateTime_fromIsoDate_result1_2 and DateTime.fromIsoDate(arg1.createdUtc) and DateTime.fromIsoDate(arg1.updatedUtc) then
			local module = {
				id = arg1.id;
				title = arg1.title;
				description = arg1.description;
				host = arg1.host;
				eventTime = {
					startTime = DateTime_fromIsoDate_result1;
					endTime = DateTime_fromIsoDate_result1_2;
					startUtc = arg1.eventTime.startUtc;
					endUtc = arg1.eventTime.endUtc;
				};
				universeId = arg1.universeId;
				placeId = arg1.placeId;
				eventStatus = arg1.eventStatus;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.createdTime = DateTime.fromIsoDate(arg1.createdUtc)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module.updatedTime = DateTime.fromIsoDate(arg1.updatedUtc)
			module.userRsvpStatus = arg1.userRsvpStatus
			return module
		end
		return nil
	end;
}