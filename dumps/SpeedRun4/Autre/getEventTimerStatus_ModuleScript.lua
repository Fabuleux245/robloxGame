-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:27
-- Luau version 6, Types version 3
-- Time taken: 0.000991 seconds

local getVirtualEventDates_upvr = require(script:FindFirstAncestor("VirtualEvents").Common.getVirtualEventDates)
return function(arg1, arg2) -- Line 11, Named "getEventTimerStatus"
	--[[ Upvalues[1]:
		[1]: getVirtualEventDates_upvr (readonly)
	]]
	local var2_result1 = getVirtualEventDates_upvr(arg1)
	local var4 = var2_result1.startDate.UnixTimestamp - arg2.UnixTimestamp
	if var2_result1.startDate.UnixTimestamp <= arg2.UnixTimestamp then
		if arg2.UnixTimestamp < var2_result1.endDate.UnixTimestamp then
			if var2_result1.endDate.UnixTimestamp - arg2.UnixTimestamp <= 14400 then
				return "ElapsedImminent"
			end
			return "Ongoing"
		end
		return "Elapsed"
	end
	if 0 < var4 and var4 <= 14400 then
		return "UpcomingImminent"
	end
	return "Upcoming"
end