-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:29
-- Luau version 6, Types version 3
-- Time taken: 0.001155 seconds

return function(arg1) -- Line 10, Named "getVirtualEventDates"
	local var1
	if arg1.eventTime and arg1.eventTime.startUtc then
		var1 = DateTime.fromIsoDate(arg1.eventTime.startUtc)
	else
		var1 = nil
	end
	local var2
	if arg1.eventTime and arg1.eventTime.endUtc then
		var2 = DateTime.fromIsoDate(arg1.eventTime.endUtc)
	else
		var2 = nil
	end
	local module = {}
	local var4 = var1
	if not var4 then
		var4 = DateTime.now()
	end
	module.startDate = var4
	var4 = var2
	local var5 = var4
	if not var5 then
		var5 = DateTime.now()
	end
	module.endDate = var5
	return module
end