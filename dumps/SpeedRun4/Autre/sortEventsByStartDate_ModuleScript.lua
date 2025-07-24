-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:31
-- Luau version 6, Types version 3
-- Time taken: 0.001331 seconds

return function(arg1) -- Line 7, Named "sortEventsByStartDate"
	local clone = table.clone(arg1)
	table.sort(clone, function(arg1_2, arg2) -- Line 9
		if arg1_2.eventTime and arg1_2.eventTime.startUtc and arg2.eventTime then
			local var6
			if arg2.eventTime.startUtc then
				var6 = arg1_2.eventTime
				local DateTime_fromIsoDate_result1_3 = DateTime.fromIsoDate(var6.startUtc)
				if not DateTime_fromIsoDate_result1_3 then
					DateTime_fromIsoDate_result1_3 = DateTime.now()
				end
				var6 = arg2.eventTime.startUtc
				local DateTime_fromIsoDate_result1 = DateTime.fromIsoDate(var6)
				if not DateTime_fromIsoDate_result1 then
					DateTime_fromIsoDate_result1 = DateTime.now()
				end
				if DateTime_fromIsoDate_result1_3.UnixTimestamp >= DateTime_fromIsoDate_result1.UnixTimestamp then
					var6 = false
				else
					var6 = true
				end
				return var6
			end
		end
		return true
	end)
	return clone
end