-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:28
-- Luau version 6, Types version 3
-- Time taken: 0.000513 seconds

local getVirtualEventDates_upvr = require(script:FindFirstAncestor("VirtualEvents").Common.getVirtualEventDates)
return function(arg1, arg2) -- Line 6, Named "getSecondsLeftInEvent"
	--[[ Upvalues[1]:
		[1]: getVirtualEventDates_upvr (readonly)
	]]
	local var2_result1 = getVirtualEventDates_upvr(arg1)
	if arg2.UnixTimestamp < var2_result1.startDate.UnixTimestamp then
		return math.huge
	end
	if var2_result1.endDate.UnixTimestamp < arg2.UnixTimestamp then
		return 0
	end
	return (var2_result1.endDate.UnixTimestamp - var2_result1.startDate.UnixTimestamp) - (arg2.UnixTimestamp - var2_result1.startDate.UnixTimestamp)
end